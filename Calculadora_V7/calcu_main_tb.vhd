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
					--Otros
					outled: out std_logic_vector(1 downto 0);
					othersled: out std_logic_vector(5 downto 0);
					outdig: out std_logic_vector(3 downto 0);		
					beep: out std_logic;
					step: in std_logic;
					cin : in std_logic
				);
	end component;
	
	-- Internal signals
   signal clk_i_tb: std_logic:='1';  
	signal lcd_e_tb, lcd_rs_tb, lcd_rw_tb: std_logic;
	signal lcd_db_tb: std_logic_vector(7 downto 0);
	signal reset_tb, ps2d_tb, ps2c_tb, rx_en_tb: std_logic;
   signal rx_done_tick_tb: std_logic;
	signal outled_tb: std_logic_vector(1 downto 0);
	signal othersled_tb: std_logic_vector(5 downto 0);
	signal outdig_tb: std_logic_vector(3 downto 0);		
	signal beep_tb: std_logic;
	signal step_tb: std_logic;
	signal cin_tb: std_logic;	
	
---------------------------------------------------------------------------------------
begin  -- architecture behavior

	-- Sistem Under Test
	SUT: calcu_main port map(clk_i_tb, lcd_e_tb, lcd_rs_tb, lcd_rw_tb, lcd_db_tb, reset_tb, ps2d_tb, ps2c_tb, rx_en_tb, 
	                         rx_done_tick_tb, outled_tb, othersled_tb, outdig_tb, beep_tb, step_tb, cin_tb);
	
	-- 50 MHz CLK
	clk_i_tb <= not clk_i_tb after 10 ns; 
	
	data: process
	begin
		reset_tb <= '1';
		rx_en_tb <= '1';
		cin_tb   <= '1';

			ps2d_tb  <= '0';
			ps2d_tb  <= '0';		
			ps2d_tb  <= '1';
			ps2d_tb  <= '1';
			ps2d_tb  <= '0';
			ps2d_tb  <= '1';
			ps2d_tb  <= '1';
			ps2d_tb  <= '0';
		wait for 20 ns;
			ps2d_tb  <= '0';
			ps2d_tb  <= '0';		
			ps2d_tb  <= '1';
			ps2d_tb  <= '0';
			ps2d_tb  <= '1';
			ps2d_tb  <= '0';
			ps2d_tb  <= '1';
			ps2d_tb  <= '1';
		wait for 20 ns;
			ps2d_tb  <= '0';
			ps2d_tb  <= '0';		
			ps2d_tb  <= '1';
			ps2d_tb  <= '1';
			ps2d_tb  <= '0';
			ps2d_tb  <= '0';
			ps2d_tb  <= '1';
			ps2d_tb  <= '1';
		wait for 20 ns;
		wait;
	end process data;
	
end architecture behavior_tb;


