-------------------------------------------------------------------------------
-- Title      : Synthesizable demo for design "lcd16x2_ctrl"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : lcd16x2_ctrl_tb.vhd
-- Author     :   <stachelsau@T420>
-- Company    : 
-- Created    : 2012-07-28
-- Last update: 2012-07-29
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: This demo writes writes a "hello world" to the display and
-- interchanges both lines periodically.
-------------------------------------------------------------------------------
-- Copyright (c) 2012 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-07-28  1.0      stachelsau      Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.clk_div_package.all;
use work.EntradasTeclado_package.all;

-------------------------------------------------------------------------------

entity lcd16x2_ctrl_demo is
port (
	clk_i    : in  std_logic;
	lcd_e  : out std_logic;
	lcd_rs : out std_logic;
	lcd_rw : out std_logic;
	lcd_db : out std_logic_vector(7 downto 4);
   --Para el teclado
	reset, ps2d, ps2c, rx_en_1, rx_en_2, rx_en_o: in std_logic;	
	rx_done_o, rx_done_1, rx_done_2, ledr: out std_logic;
	dout: out std_logic_vector(7 downto 0);
	--Otros
	beep: out std_logic;
	key_1: in std_logic
);
end entity lcd16x2_ctrl_demo;

-------------------------------------------------------------------------------

architecture behavior of lcd16x2_ctrl_demo is

	ATTRIBUTE CHIP_PIN: STRING;
	ATTRIBUTE CHIP_PIN OF clk_i    : SIGNAL IS "23"; 
	ATTRIBUTE CHIP_PIN OF lcd_rs   : SIGNAL IS "38"; 
	ATTRIBUTE CHIP_PIN OF lcd_rw   : SIGNAL IS "42"; 
	ATTRIBUTE CHIP_PIN OF lcd_e    : SIGNAL IS "44"; 
	ATTRIBUTE CHIP_PIN OF lcd_db   : SIGNAL IS "68, 66, 64, 59"; 
--------------Para el teclado------------------------	
	ATTRIBUTE CHIP_PIN OF reset        : SIGNAL IS "25";  -- Button RESET
	ATTRIBUTE CHIP_PIN OF ps2d         : SIGNAL IS "120"; 
	ATTRIBUTE CHIP_PIN OF ps2c         : SIGNAL IS "119"; 
	ATTRIBUTE CHIP_PIN OF rx_en_o      : SIGNAL IS "89";  -- KEY 2
	ATTRIBUTE CHIP_PIN OF rx_en_1      : SIGNAL IS "90";  -- KEY 3
	ATTRIBUTE CHIP_PIN OF rx_en_2      : SIGNAL IS "91";  -- KEY 4	
	--ATTRIBUTE CHIP_PIN OF rx_done_tick : SIGNAL IS "84"; 
	ATTRIBUTE CHIP_PIN OF beep         : SIGNAL IS "110";
	ATTRIBUTE CHIP_PIN OF key_1        : SIGNAL IS "88";  -- KEY 1	
	--ATTRIBUTE CHIP_PIN OF dout         : SIGNAL IS "128, 121, 125, 129, 132, 126, 124, 127";	
	
  -- 
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
  signal B_Sout_o: std_logic_vector(7 downto 0);
  signal B_Sout_1: std_logic_vector(7 downto 0);
  signal B_Sout_2: std_logic_vector(7 downto 0);  
  signal keymem: std_logic_vector(7 downto 0);  
  signal Dato_1: std_logic_vector(7 downto 0):="00110000";
  signal Dato_2: std_logic_vector(7 downto 0):="00110000";
  signal Opcion: std_logic_vector(7 downto 0):="00110000"; 
  signal solucion: std_logic_vector(7 downto 0):="00110000";

  signal clk: std_logic;
  signal count: integer range 1 to 3:=1; 
  signal state: integer range 1 to 3:=1; 

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
  
	CLK10: clk_div generic map(5000000) port map(clk_i, reset, clk);
	
	KB1: EntradasTeclado port map(clk_i, reset, ps2d, ps2c, rx_en_1, rx_done_1, B_Sout_1); 
	KB2: EntradasTeclado port map(clk_i, reset, ps2d, ps2c, rx_en_2, rx_done_2, B_Sout_2);
	KBS: EntradasTeclado port map(clk_i, reset, ps2d, ps2c, rx_en_o, rx_done_o, B_Sout_o);		
		
	Operacion: process(clk, reset)
	begin
		if (reset = '0') then 
			 Opcion <= "00100011";
			 count <= 1;
		elsif (clk_i'event and clk_i = '1' and count = 1 and key_1 = '0') then
			if (rx_en_o = '0') then
				 Opcion <= B_Sout_o;
				 count <= 2;
			end if;
		elsif (clk_i'event and clk_i = '1' and count = 2 and key_1 = '0') then
			if (rx_en_1 = '0') then
				 Dato_1 <= B_Sout_1;
				 count <= 3;
			end if;
		elsif (clk_i'event and clk_i = '1' and count = 3 and key_1 = '0') then
			if (rx_en_2 = '0') then
				 Dato_2 <= B_Sout_2;
				 count <= 1;
			end if;			
		end if;	
	end process;		
		
	Decoder: process(count)
	begin		
		case count is
			when 1 =>
		
			line1(127 downto 120) <= X"53"; 
			line1(119 downto 112) <= X"65";
			line1(111 downto 104) <= X"6C";  
			line1(103 downto 96)  <= X"20";  
			line1(95 downto 88)   <= X"4F";  
			line1(87 downto 80)   <= X"70"; 
			line1(79 downto 72)   <= X"3A";  
			line1(71 downto 64)   <= X"2B";
			line1(63 downto 56)   <= X"20";  
			line1(55 downto 48)   <= X"2D";  
			line1(47 downto 40)   <= X"20";  
			line1(39 downto 32)   <= X"78";  
			line1(31 downto 24)   <= X"20";  
			line1(23 downto 16)   <= X"20";  
			line1(15 downto 8)    <= X"46";
			line1(7 downto 0)     <= X"31";

			line2(127 downto 120) <= Dato_1;
			line2(119 downto 112) <= X"20";
			line2(111 downto 104) <= X"20";
			line2(103 downto 96)  <= Opcion;
			line2(95 downto 88)   <= X"20";
			line2(87 downto 80)   <= Dato_2;
			line2(79 downto 72)   <= X"20";
			line2(71 downto 64)   <= X"20";
			line2(63 downto 56)   <= X"3D";
			line2(55 downto 48)   <= X"20";
			line2(47 downto 40)   <= solucion;
			line2(39 downto 32)   <= X"20";
			line2(31 downto 24)   <= X"20";
			line2(23 downto 16)   <= X"20";
			line2(15 downto 8)    <= X"20";
			line2(7 downto 0)     <= B_Sout_o;
											
			line1_buffer <= line1;
			line2_buffer <= line2;
			
		when 2 =>
		
			line1(127 downto 120) <= X"44"; 
			line1(119 downto 112) <= X"61";
			line1(111 downto 104) <= X"74";  
			line1(103 downto 96)  <= X"6F";  
			line1(95 downto 88)   <= X"20";  
			line1(87 downto 80)   <= X"31"; 
			line1(79 downto 72)   <= X"3A";  
			line1(71 downto 64)   <= X"20";
			line1(63 downto 56)   <= X"20";  
			line1(55 downto 48)   <= X"20";  
			line1(47 downto 40)   <= X"20";  
			line1(39 downto 32)   <= X"20";  
			line1(31 downto 24)   <= X"20";  
			line1(23 downto 16)   <= X"20";  
			line1(15 downto 8)    <= X"46";
			line1(7 downto 0)     <= X"32";

			line2(127 downto 120) <= Dato_1;
			line2(119 downto 112) <= X"20";
			line2(111 downto 104) <= X"20";
			line2(103 downto 96)  <= Opcion;
			line2(95 downto 88)   <= X"20";
			line2(87 downto 80)   <= Dato_2;
			line2(79 downto 72)   <= X"20";
			line2(71 downto 64)   <= X"20";
			line2(63 downto 56)   <= X"3D";
			line2(55 downto 48)   <= X"20";
			line2(47 downto 40)   <= solucion;
			line2(39 downto 32)   <= X"20";
			line2(31 downto 24)   <= X"20";
			line2(23 downto 16)   <= X"20";
			line2(15 downto 8)    <= X"20";
			line2(7 downto 0)     <= B_Sout_1;
											
			line1_buffer <= line1;
			line2_buffer <= line2;	
			
		when 3 =>

			line1(127 downto 120) <= X"44"; 
			line1(119 downto 112) <= X"61";
			line1(111 downto 104) <= X"74";  
			line1(103 downto 96)  <= X"6F";  
			line1(95 downto 88)   <= X"20";  
			line1(87 downto 80)   <= X"32"; 
			line1(79 downto 72)   <= X"3A";  
			line1(71 downto 64)   <= X"20";
			line1(63 downto 56)   <= X"20";  
			line1(55 downto 48)   <= X"20";  
			line1(47 downto 40)   <= X"20";  
			line1(39 downto 32)   <= X"20";  
			line1(31 downto 24)   <= X"20";  
			line1(23 downto 16)   <= X"20";  
			line1(15 downto 8)    <= X"46";
			line1(7 downto 0)     <= X"33";

			line2(127 downto 120) <= Dato_1;
			line2(119 downto 112) <= X"20";
			line2(111 downto 104) <= X"20";
			line2(103 downto 96)  <= Opcion;
			line2(95 downto 88)   <= X"20";
			line2(87 downto 80)   <= Dato_2;
			line2(79 downto 72)   <= X"20";
			line2(71 downto 64)   <= X"20";
			line2(63 downto 56)   <= X"3D";
			line2(55 downto 48)   <= X"20";
			line2(47 downto 40)   <= solucion;
			line2(39 downto 32)   <= X"20";
			line2(31 downto 24)   <= X"20";
			line2(23 downto 16)   <= X"20";
			line2(15 downto 8)    <= X"20";
			line2(7 downto 0)     <= B_Sout_2;
											

			line1_buffer <= line1;
			line2_buffer <= line2;	
			
		   when others =>
					state <= 1;
      end case;

	end process;	
end architecture behavior;


