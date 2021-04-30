library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
entity calcu_main_tb is
end entity calcu_main_tb;

-------------------------------------------------------------------------------
architecture behavior_tb of calcu_main_tb is

	component calcu_main is
		port (
					clk_i  : in  std_logic;
					lcd_e  : out std_logic;
					lcd_rs : out std_logic;
					lcd_rw : out std_logic;
					lcd_db : out std_logic_vector(7 downto 4);
					--Para el teclado
					reset, ps2d, ps2c, rx_en: in std_logic;	
					rx_done_tick: out std_logic;
					solled: out std_logic_vector(7 downto 0);	
					--Otros
					outled: out std_logic_vector(1 downto 0);
					othersled: out std_logic_vector(5 downto 0);
					outdig: out std_logic_vector(3 downto 0);		
					beep: out std_logic;
					step: in std_logic;
					cin : in std_logic
				);
	end component;
	
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


	
end architecture behavior_tb;

