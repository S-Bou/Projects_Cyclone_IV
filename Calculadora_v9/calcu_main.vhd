library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.clk_div_package.all;
use work.keyboard_in_package.all;
use work.alu_package.all;

-------------------------------------------------------------------------------
entity calcu_main is
port (
	clk_i  : in  std_logic;                         -- 50 MHz CLK
	lcd_e  : out std_logic;                         -- Enable LCD
	lcd_rs : out std_logic;                         -- Register Select LCD
	lcd_rw : out std_logic;                         -- Read Write LCD
	lcd_db : out std_logic_vector(7 downto 4);      -- Data Bits LCD
   --Para el teclado
	reset, ps2d, ps2c, rx_en: in std_logic;	      -- Personal System/2 Data; Personal System/2 Clock
	rx_done_tick: out std_logic;	
	--Otros
   outled: out std_logic_vector(1 downto 0);       -- Segmentos c y e para visualizar datos en binario
	othersled: out std_logic_vector(5 downto 0);    -- Resto de segmentos 
   outdig: out std_logic_vector(3 downto 0);		   -- Vector para habilitar cada digito de 7 segmentos
	beep: out std_logic:='1';                       -- Salidda digital para que no haga ruido el buzzer de la tarjeta
	step: in std_logic;                             -- Habilita la visualización de los leds 
	cin : in std_logic
);
end entity calcu_main;

-------------------------------------------------------------------------------
architecture behavior of calcu_main is

	ATTRIBUTE CHIP_PIN: STRING;
	ATTRIBUTE CHIP_PIN OF clk_i      : SIGNAL IS "23"; 
	ATTRIBUTE CHIP_PIN OF lcd_rs     : SIGNAL IS "38"; 
	ATTRIBUTE CHIP_PIN OF lcd_rw     : SIGNAL IS "42"; 
	ATTRIBUTE CHIP_PIN OF lcd_e      : SIGNAL IS "44"; 
	ATTRIBUTE CHIP_PIN OF lcd_db     : SIGNAL IS "68, 66, 64, 59"; 
  --Para el teclado------------------------------------------------------------	
	ATTRIBUTE CHIP_PIN OF reset      : SIGNAL IS "25";  -- Botón RESET de la tarjeta
	ATTRIBUTE CHIP_PIN OF ps2d       : SIGNAL IS "120"; 
	ATTRIBUTE CHIP_PIN OF ps2c       : SIGNAL IS "119"; 
	ATTRIBUTE CHIP_PIN OF cin        : SIGNAL IS "88";  -- KEY 1	
	ATTRIBUTE CHIP_PIN OF rx_en      : SIGNAL IS "90";  -- KEY 3	
	ATTRIBUTE CHIP_PIN OF step       : SIGNAL IS "91";  -- KEY 4	
  --Otros----------------------------------------------------------------------	
	ATTRIBUTE CHIP_PIN OF beep       : SIGNAL IS "110";
	ATTRIBUTE CHIP_PIN OF outled     : SIGNAL IS "132, 125";	
	ATTRIBUTE CHIP_PIN OF outdig     : SIGNAL IS "137, 136, 135, 133";	
	ATTRIBUTE CHIP_PIN OF othersled  : SIGNAL IS "128, 121, 129, 126, 124, 127";	
-------------------------------------------------------------------------------

	-- Para la LCD
	signal timer : natural range 0 to 100000000 := 0;
	signal switch_lines : std_logic := '0';
	signal line1 : std_logic_vector(127 downto 0);
	signal line2 : std_logic_vector(127 downto 0);

	-- component generics
	constant CLK_PERIOD_NS : positive := 10;  -- 100 Mhz

	-- component ports
	signal rst          : std_logic;
	signal line1_buffer : std_logic_vector(127 downto 0);
	signal line2_buffer : std_logic_vector(127 downto 0);

	--Para el teclado	
	signal dato1, dato2, operador, solucion: std_logic_vector(7 downto 0);		
	signal anterior, key_out: std_logic_vector(7 downto 0);
	
	-- Para ajustar digitos en la LCD
	signal unidades, decenas, case4: std_logic_vector(7 downto 0);
	
   -- Para las señales de reloj
	signal clk, clk_dis: std_logic; 
	
   -- Para las FSMs
	type estados is (S1, S2, S3, S4);
	signal estado, sig_estado: estados;  
	
	type display7sg is (D1, D2, D3, D4);
	signal disp, sig_disp: display7sg;
  
---------------------------------------------------------------------------------------
begin  -- architecture behavior

	-- component instantiation
	DUT : entity work.lcd16x2_ctrl
	 generic map (
		CLK_PERIOD_NS => CLK_PERIOD_NS)
	 port map (
		clk          => clk_i,
		rst          => rst,
		lcd_e        => lcd_e,
		lcd_rs       => lcd_rs,
		lcd_rw       => lcd_rw,
		lcd_db       => lcd_db,
		line1_buffer => line1_buffer,
		line2_buffer => line2_buffer);

	rst <= '0';
---------------------------------------------------------------------------------------
	
	CLK10: clk_div generic map(10000000) port map(clk_i, reset, clk);   -- 200 ms para el pulsador KEY4
	
	CLKDIS: clk_div generic map(50000) port map(clk_i, reset, clk_dis); -- 1 ms para los display 7seg
		
	KB0: keyboard_in port map(clk_i, reset, ps2d, ps2c, rx_en, rx_done_tick, key_out); 
	
	ALU0: alu port map(cin, dato1(3 downto 0), operador, dato2(3 downto 0), solucion);
		
---------------------------------------------------------------------------------------		
		
-- Process para gestionar los dos digitos de las operaciónes
	Decoder: process(solucion)
		variable solution, auxiliar: integer;
	begin
		solution := to_integer(signed(solucion));
		
	case operador is
		when "00101011" => --Suma-------------------------------------------------------
	
			if solution > 9 then
				decenas <= X"31";
				case solution is
					when 10 => unidades <= x"30";	-- 0
					when 11 => unidades <= x"31";	-- 1
					when 12 => unidades <= x"32";	-- 2
					when 13 => unidades <= x"33";	-- 3
					when 14 => unidades <= x"34";	-- 4
					when 15 => unidades <= x"35";	-- 5
					when 16 => unidades <= x"36";	-- 6
					when 17 => unidades <= x"37";	-- 7
					when 18 => unidades <= x"38";	-- 8				
					when others => unidades <= x"3F";	-- ?	
				end case;				
			elsif solution <= 9 and operador = "00101011" then
				decenas <= X"20";	
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= solucion(3 downto 0);
			else 
				decenas  <= X"53"; -- S	
				unidades <= x"3F"; -- ?			
			end if;
			
		   case4 <=	x"20";
			
		when "00101101" => --Resta------------------------------------------------------	
	
			if solution > 22 then
				decenas <= X"2D";
				case solucion is		
					when x"1F" => unidades <= x"31";	-- -1
					when x"1E" => unidades <= x"32";	-- -2
					when x"1D" => unidades <= x"33";	-- -3
					when x"1C" => unidades <= x"34";	-- -4
					when x"1B" => unidades <= x"35";	-- -5
					when x"1A" => unidades <= x"36";	-- -6
					when x"19" => unidades <= x"37";	-- -7
					when x"18" => unidades <= x"38";	-- -8
					when x"17" => unidades <= x"39";	-- -9				
					when others => unidades <= x"3F";--  ?	
				end case;				
			elsif solution >= 0 then
				decenas <= X"2B";	
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= solucion(3 downto 0);
			else 
				decenas  <= X"52"; -- R	
				unidades <= x"3F"; -- ?				
			end if;
			
		   case4 <=	x"20";			
			
		when "01111000" => --Multiplicación---------------------------------------------
	
			if solution <= 9 then
				decenas <= X"20";	
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= solucion(3 downto 0);
			elsif solution > 9 and solution <= 19 then
				decenas <= X"31";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 10;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));	
			elsif solution > 19 and solution <= 29 then
				decenas <= X"32";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 20;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));	
			elsif solution > 29 and solution <= 39 then
				decenas <= X"33";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 30;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));	
			elsif solution > 39 and solution <= 49 then
				decenas <= X"34";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 40;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));	
			elsif solution > 49 and solution <= 59 then
				decenas <= X"35";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 50;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));	
			elsif solution > 59 and solution <= 69 then
				decenas <= X"36";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 60;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));	
			elsif solution > 69 and solution <= 79 then
				decenas <= X"37";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 70;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));	
			elsif solution > 79 and solution <= 89 then
				decenas <= X"38";	
				auxiliar := to_integer(unsigned(solucion(3 downto 0))) - 80;
				unidades(7 downto 4) <= x"3";
				unidades(3 downto 0) <= std_logic_vector(to_unsigned(auxiliar, 4));			
			else 
				decenas  <= X"58"; -- X	
				unidades <= x"3F"; -- ?
			end if;
	
			case4 <=	x"20";
			
		when "01100011" => --Comparador------------------------------------------------------	
	
			decenas <= dato1;
			case solucion(1 downto 0) is		
				when "00" => unidades <= x"3D";	-- =
				when "01" => unidades <= x"3C";	-- <
				when "10" => unidades <= x"3E";	-- >
				when others => 
					decenas  <= X"43"; -- C	
					unidades <= x"3F"; -- ?	
			end case;	
			
			case4 <=	dato2;
			
		when others => 
			decenas  <= X"3F"; --?	
			unidades <= x"3F"; --?
	end case;
	end process Decoder;
	
-- FSM para controlar los estados de la LCD
	SINCRONO: process(clk) is
	begin
		if (reset = '0') then 
			 estado <= S1;
		elsif (clk'event and clk='1') then
				 estado <= sig_estado;		
		end if;	
	end process SINCRONO;	
	
-- Process para mostrar datos por la LCD según el estado	
	LCD: process(estado)
	begin	
		case estado is
			when S1 =>
			
				if key_out /= "00001101" then -- Distinto de ENTER
				
				   dato1 <= key_out;
					sig_estado <= S2;		
					
				else
				
					line1(127 downto 120) <= X"50"; -- P
					line1(119 downto 112) <= X"72"; -- r
					line1(111 downto 104) <= X"69"; -- i 
					line1(103 downto 96)  <= X"6D"; -- m 
					line1(95 downto 88)   <= X"65"; -- e
					line1(87 downto 80)   <= X"72"; -- r
					line1(79 downto 72)   <= X"20";  
					line1(71 downto 64)   <= X"64"; -- d
					line1(63 downto 56)   <= X"61"; -- a 
					line1(55 downto 48)   <= X"74"; -- t 
					line1(47 downto 40)   <= X"6F"; -- o 
					line1(39 downto 32)   <= X"3F"; -- ? 
					line1(31 downto 24)   <= X"20";  
					line1(23 downto 16)   <= X"20";  
					line1(15 downto 8)    <= X"53"; -- S
					line1(7 downto 0)     <= X"31"; -- 1			

					line2(127 downto 120) <= X"20";
					line2(119 downto 112) <= X"20";
					line2(111 downto 104) <= X"20";
					line2(103 downto 96)  <= X"20";
					line2(95 downto 88)   <= X"20";
					line2(87 downto 80)   <= X"20";
					line2(79 downto 72)   <= X"20";
					line2(71 downto 64)   <= X"20";
					line2(63 downto 56)   <= X"20";
					line2(55 downto 48)   <= X"20";
					line2(47 downto 40)   <= X"20";
					line2(39 downto 32)   <= X"20";
					line2(31 downto 24)   <= X"20";
					line2(23 downto 16)   <= X"20";
					line2(15 downto 8)    <= X"4B"; -- K
					line2(7 downto 0)     <= key_out;
													
					line1_buffer <= line1;
					line2_buffer <= line2;				
				
					sig_estado <= S1;
					
				end if;
			
		when S2 =>
		
			if key_out /= dato1 then
			
            operador <= key_out;
				sig_estado <= S3;
				
			else
			
				line1(127 downto 120) <= X"4F"; -- O
				line1(119 downto 112) <= X"70"; -- p
				line1(111 downto 104) <= X"65"; -- e 
				line1(103 downto 96)  <= X"72"; -- r
				line1(95 downto 88)   <= X"61"; -- a 
				line1(87 downto 80)   <= X"64"; -- d
				line1(79 downto 72)   <= X"6F"; -- o
				line1(71 downto 64)   <= X"72"; -- r
				line1(63 downto 56)   <= X"3A"; -- :  
				line1(55 downto 48)   <= X"2B"; -- + 
				line1(47 downto 40)   <= X"2D"; -- -  
				line1(39 downto 32)   <= X"78"; -- x
				line1(31 downto 24)   <= X"63"; -- c 
				line1(23 downto 16)   <= X"20";  
				line1(15 downto 8)    <= X"53"; -- S
				line1(7 downto 0)     <= X"32"; -- 2

				line2(127 downto 120) <= dato1;
				line2(119 downto 112) <= X"20";
				line2(111 downto 104) <= X"20";
				line2(103 downto 96)  <= X"20";
				line2(95 downto 88)   <= x"20";
				line2(87 downto 80)   <= X"20";
				line2(79 downto 72)   <= X"20";
				line2(71 downto 64)   <= X"20";
				line2(63 downto 56)   <= X"20";
				line2(55 downto 48)   <= X"20";
				line2(47 downto 40)   <= X"20";
				line2(39 downto 32)   <= X"20";
				line2(31 downto 24)   <= X"20";
				line2(23 downto 16)   <= X"20";
				line2(15 downto 8)    <= X"4B";
				line2(7 downto 0)     <= key_out;
												
				line1_buffer <= line1;
				line2_buffer <= line2;	
			
			
				sig_estado <= S2;
			end if;		
		
		when S3 =>			
			
			if key_out /= operador then
			
			   dato2 <= key_out;	
				sig_estado <= S4;	
				
			else
			
				line1(127 downto 120) <= X"53"; -- S
				line1(119 downto 112) <= X"65"; -- e
				line1(111 downto 104) <= X"67"; -- g
				line1(103 downto 96)  <= X"75"; -- u
				line1(95 downto 88)   <= X"6E"; -- n
				line1(87 downto 80)   <= X"64"; -- d
				line1(79 downto 72)   <= X"6F"; -- o 
				line1(71 downto 64)   <= X"20"; 
				line1(63 downto 56)   <= X"64"; -- d
				line1(55 downto 48)   <= X"61"; -- a
				line1(47 downto 40)   <= X"74"; -- t
				line1(39 downto 32)   <= X"6F"; -- o
				line1(31 downto 24)   <= X"3F"; -- ? 
				line1(23 downto 16)   <= X"20";  
				line1(15 downto 8)    <= X"53"; -- S
				line1(7 downto 0)     <= X"33"; -- 3

				line2(127 downto 120) <= dato1;
				line2(119 downto 112) <= X"20";
				line2(111 downto 104) <= operador;
				line2(103 downto 96)  <= X"20";
				line2(95 downto 88)   <= X"20";
				line2(87 downto 80)   <= X"20";
				line2(79 downto 72)   <= X"20";
				line2(71 downto 64)   <= X"20";
				line2(63 downto 56)   <= X"20";
				line2(55 downto 48)   <= X"20";
				line2(47 downto 40)   <= X"20";
				line2(39 downto 32)   <= X"20";
				line2(31 downto 24)   <= X"20";
				line2(23 downto 16)   <= X"20";
				line2(15 downto 8)    <= X"4B";
				line2(7 downto 0)     <= key_out;
												

				line1_buffer <= line1;
				line2_buffer <= line2;			
			
				sig_estado <= S3;
			end if;			
			
		when S4 =>			
			
			if key_out /= dato2 then	
			
				sig_estado <= S1;
				
			else
			
				line1(127 downto 120) <= X"52"; -- R
				line1(119 downto 112) <= X"65"; -- e
				line1(111 downto 104) <= X"73"; -- s 
				line1(103 downto 96)  <= X"75"; -- u 
				line1(95 downto 88)   <= X"6C"; -- l 
				line1(87 downto 80)   <= X"74"; -- t
				line1(79 downto 72)   <= X"61"; -- a 
				line1(71 downto 64)   <= X"64"; -- d
				line1(63 downto 56)   <= X"6F"; -- o	
				line1(55 downto 48)   <= X"3A"; -- : 
				line1(47 downto 40)   <= X"20";  
				line1(39 downto 32)   <= X"20";  
				line1(31 downto 24)   <= X"20";  
				line1(23 downto 16)   <= X"20";  
				line1(15 downto 8)    <= X"53"; -- S
				line1(7 downto 0)     <= X"34"; -- 4

				line2(127 downto 120) <= dato1;
				line2(119 downto 112) <= X"20";
				line2(111 downto 104) <= operador;
				line2(103 downto 96)  <= X"20";
				line2(95 downto 88)   <= dato2;
				line2(87 downto 80)   <= X"20";
				line2(79 downto 72)   <= X"3D"; -- =
				line2(71 downto 64)   <= decenas;
				line2(63 downto 56)   <= unidades;					
				line2(55 downto 48)   <= case4;
				line2(47 downto 40)   <= X"20";
				line2(39 downto 32)   <= X"20";
				line2(31 downto 24)   <= X"20";
				line2(23 downto 16)   <= X"20";
				line2(15 downto 8)    <= X"20";
				line2(7 downto 0)     <= X"20";
												

				line1_buffer <= line1;
				line2_buffer <= line2;			
			
				sig_estado <= S4;
				
			end if;			
			
		when others =>
			
				line1(127 downto 120) <= X"20"; 
				line1(119 downto 112) <= X"20";
				line1(111 downto 104) <= X"20";  
				line1(103 downto 96)  <= X"20";  
				line1(95 downto 88)   <= X"20";  
				line1(87 downto 80)   <= X"45"; -- E
				line1(79 downto 72)   <= X"52"; -- R 
				line1(71 downto 64)   <= X"52"; -- R
				line1(63 downto 56)   <= X"4F"; -- O 
				line1(55 downto 48)   <= X"52"; -- R 
				line1(47 downto 40)   <= X"20";  
				line1(39 downto 32)   <= X"20";  
				line1(31 downto 24)   <= X"20";  
				line1(23 downto 16)   <= X"20";  
				line1(15 downto 8)    <= X"53"; -- S
				line1(7 downto 0)     <= X"45"; -- E

				line2(127 downto 120) <= X"20";
				line2(119 downto 112) <= X"20";
				line2(111 downto 104) <= X"20";
				line2(103 downto 96)  <= X"20";
				line2(95 downto 88)   <= X"20";
				line2(87 downto 80)   <= X"20";
				line2(79 downto 72)   <= X"3D";
				line2(71 downto 64)   <= X"20";
				line2(63 downto 56)   <= X"20";
				line2(55 downto 48)   <= X"20";
				line2(47 downto 40)   <= X"20";
				line2(39 downto 32)   <= X"20";
				line2(31 downto 24)   <= X"20";
				line2(23 downto 16)   <= X"20";
				line2(15 downto 8)    <= X"4B"; -- K
				line2(7 downto 0)     <= key_out;			

				sig_estado <= S1;
				
      end case;
	end process LCD;	
	
-- FSM para mostrar la solución en binario por los displais de 7 segmentos	
	SINC_DISP: process(clk_dis) is        
	begin
		if (reset = '0') then 
			 disp <= D1;
		elsif (clk_dis'event and clk_dis='1') then
				 disp <= sig_disp;	
		end if;	
	end process SINC_DISP;	
	
-- Process para mostrar la solución en binario por los displais de 7 segmentos	
	Display_BIN: process(step, disp)
	begin	
		case disp is
			when D1 =>
				if step = '1' then
					outdig <= "0111";
					outled <= not solucion(7 downto 6);
					othersled <= "111111";
					sig_disp <= D2;
				else 
				   sig_disp <= D1;
				end if;
			when D2 =>
				if step = '1' then
					outdig <= "1011";
					outled <= not solucion(5 downto 4);
					othersled <= "111111";					
					sig_disp <= D3;
				else 
				   sig_disp <= D2;
				end if;
			when D3 =>
				if step = '1' then
					outdig <= "1101";
					outled <= not solucion(3 downto 2);
					othersled <= "111111";					
					sig_disp <= D4;
				else 
				   sig_disp <= D3;
				end if;
			when D4 =>
				if step = '1' then
					outdig <= "1110";
					outled <= not solucion(1 downto 0);
					othersled <= "111111";					
					sig_disp <= D1;
				else 
				   sig_disp <= D4;
				end if;	
			when others =>   
				outdig   <= "1110"; -- (...E)=Error
				outled <= "10";
			   othersled <= "010001";	
				sig_disp <= D1;			
		end case;
	end process Display_BIN;
	
end architecture behavior;


