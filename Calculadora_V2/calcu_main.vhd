library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.clk_div_package.all;
use work.keyboard_in_package.all;
use work.alu_package.all;

-------------------------------------------------------------------------------
entity calcu_main is
port (
	clk_i  : in  std_logic;
	lcd_e  : out std_logic;
	lcd_rs : out std_logic;
	lcd_rw : out std_logic;
	lcd_db : out std_logic_vector(7 downto 4);
   --Para el teclado
	reset, ps2d, ps2c, rx_en: in std_logic;	
	rx_done_tick: out std_logic;
   solled: out std_logic_vector(3 downto 0);	
	--Otros
	beep: out std_logic;
	step: in std_logic;
	cin : in std_logic
);
end entity calcu_main;

-------------------------------------------------------------------------------
architecture behavior of calcu_main is

	ATTRIBUTE CHIP_PIN: STRING;
	ATTRIBUTE CHIP_PIN OF clk_i    : SIGNAL IS "23"; 
	ATTRIBUTE CHIP_PIN OF lcd_rs   : SIGNAL IS "38"; 
	ATTRIBUTE CHIP_PIN OF lcd_rw   : SIGNAL IS "42"; 
	ATTRIBUTE CHIP_PIN OF lcd_e    : SIGNAL IS "44"; 
	ATTRIBUTE CHIP_PIN OF lcd_db   : SIGNAL IS "68, 66, 64, 59"; 
  --Para el teclado------------------------------------------------------------	
	ATTRIBUTE CHIP_PIN OF reset        : SIGNAL IS "25";  -- Button RESET
	ATTRIBUTE CHIP_PIN OF ps2d         : SIGNAL IS "120"; 
	ATTRIBUTE CHIP_PIN OF ps2c         : SIGNAL IS "119"; 
	ATTRIBUTE CHIP_PIN OF cin          : SIGNAL IS "88";  -- KEY 1	
	ATTRIBUTE CHIP_PIN OF rx_en        : SIGNAL IS "90";  -- KEY 3	
	ATTRIBUTE CHIP_PIN OF step         : SIGNAL IS "91";  -- KEY 4	
  --Otros----------------------------------------------------------------------	
	ATTRIBUTE CHIP_PIN OF beep         : SIGNAL IS "110";
	ATTRIBUTE CHIP_PIN OF solled       : SIGNAL IS "84, 85, 86, 87";		
-------------------------------------------------------------------------------

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
	signal operador, dato1, dato2: std_logic_vector(7 downto 0);
	signal solucion: std_logic_vector(3 downto 0);
	signal key_out: std_logic_vector(7 downto 0);

	signal clk: std_logic;  

	type estados is (S1, S2, S3, S4);
	signal estado, sig_estado: estados;  
  
---------------------------------------------------------------------------------------
begin  -- architecture behavior

  beep <= '1'; --ruido buzzer
  
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
	
	CLK10: clk_div generic map(10000000) port map(clk_i, reset, clk);
		
	KB0: keyboard_in port map(clk_i, reset, ps2d, ps2c, rx_en, rx_done_tick, key_out); 
	
	ALU0: alu port map(cin, dato1(2 downto 0), operador, dato2(2 downto 0), solucion);
	
	solled <= not(solucion);
		
	SINCRONO: process(clk) is
	begin
		if (reset = '0') then 
			 estado <= S1;
		elsif (clk'event and clk='1') then
				 estado <= sig_estado;		
		end if;	
	end process SINCRONO;		
		
	Decoder: process(estado, step)
	begin	
		case estado is
			when S1 =>
			
				if step = '0' then
				
				   dato1 <= key_out;
	
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

					line2(127 downto 120) <= dato1;
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
		
			if step = '0' then
            operador <= key_out;
	
				line1(127 downto 120) <= X"53"; -- S
				line1(119 downto 112) <= X"65"; -- e
				line1(111 downto 104) <= X"6C"; -- l 
				line1(103 downto 96)  <= X"20";  
				line1(95 downto 88)   <= X"4F"; -- O 
				line1(87 downto 80)   <= X"70"; -- p
				line1(79 downto 72)   <= X"3A"; -- :
				line1(71 downto 64)   <= X"2B"; -- +
				line1(63 downto 56)   <= X"20";  
				line1(55 downto 48)   <= X"2D"; -- - 
				line1(47 downto 40)   <= X"20";  
				line1(39 downto 32)   <= X"78"; -- x 
				line1(31 downto 24)   <= X"20";  
				line1(23 downto 16)   <= X"20";  
				line1(15 downto 8)    <= X"53"; -- S
				line1(7 downto 0)     <= X"32"; -- 2

				line2(127 downto 120) <= dato1;
				line2(119 downto 112) <= X"20";
				line2(111 downto 104) <= operador;
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
	
				sig_estado <= S3;
				
			else
			
				line1(127 downto 120) <= X"53"; -- S
				line1(119 downto 112) <= X"65"; -- e
				line1(111 downto 104) <= X"6C"; -- l 
				line1(103 downto 96)  <= X"20";  
				line1(95 downto 88)   <= X"4F"; -- O 
				line1(87 downto 80)   <= X"70"; -- p
				line1(79 downto 72)   <= X"3A"; -- :
				line1(71 downto 64)   <= X"2B"; -- +
				line1(63 downto 56)   <= X"20";  
				line1(55 downto 48)   <= X"2D"; -- - 
				line1(47 downto 40)   <= X"20";  
				line1(39 downto 32)   <= X"78"; -- x 
				line1(31 downto 24)   <= X"20";  
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
			
			if step = '0' then		
			   dato2 <= key_out;

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
				line2(95 downto 88)   <= dato2;
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
			
			if step = '0' then		
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
				
				if unsigned(solucion) > 9 then
					line2(71 downto 64)   <= X"31";
					line2(63 downto 60)   <= X"3";				
					line2(59 downto 56)   <= std_logic_vector(unsigned(solucion)-10);					
				else
					line2(71 downto 64)   <= X"20";
					line2(63 downto 60)   <= X"3";				
					line2(59 downto 56)   <= solucion;					
				end if;
				
				--line2(71 downto 64)   <= X"20";
				--line2(63 downto 60)   <= X"3";				
				--line2(59 downto 56)   <= solucion;
				line2(55 downto 48)   <= X"20";
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

      end case;
	end process;	
end architecture behavior;


