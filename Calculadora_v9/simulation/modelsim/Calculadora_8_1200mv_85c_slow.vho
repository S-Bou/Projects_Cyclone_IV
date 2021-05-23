-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/23/2021 09:07:18"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calcu_main IS
    PORT (
	clk_i : IN std_logic;
	lcd_e : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_db : OUT std_logic_vector(7 DOWNTO 4);
	reset : IN std_logic;
	ps2d : IN std_logic;
	ps2c : IN std_logic;
	rx_en : IN std_logic;
	rx_done_tick : OUT std_logic;
	outled : OUT std_logic_vector(1 DOWNTO 0);
	othersled : OUT std_logic_vector(5 DOWNTO 0);
	outdig : OUT std_logic_vector(3 DOWNTO 0);
	beep : OUT std_logic;
	step : IN std_logic;
	cin : IN std_logic
	);
END calcu_main;

-- Design Ports Information
-- lcd_e	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_db[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_done_tick	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outled[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outled[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- othersled[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- othersled[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- othersled[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- othersled[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- othersled[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- othersled[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outdig[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outdig[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outdig[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outdig[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beep	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_i	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_en	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2c	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2d	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calcu_main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_db : std_logic_vector(7 DOWNTO 4);
SIGNAL ww_reset : std_logic;
SIGNAL ww_ps2d : std_logic;
SIGNAL ww_ps2c : std_logic;
SIGNAL ww_rx_en : std_logic;
SIGNAL ww_rx_done_tick : std_logic;
SIGNAL ww_outled : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_othersled : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_outdig : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_beep : std_logic;
SIGNAL ww_step : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL \CLKDIS|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU0|Mux3~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux30~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \step~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK10|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_db[4]~output_o\ : std_logic;
SIGNAL \lcd_db[5]~output_o\ : std_logic;
SIGNAL \lcd_db[6]~output_o\ : std_logic;
SIGNAL \lcd_db[7]~output_o\ : std_logic;
SIGNAL \rx_done_tick~output_o\ : std_logic;
SIGNAL \outled[0]~output_o\ : std_logic;
SIGNAL \outled[1]~output_o\ : std_logic;
SIGNAL \othersled[0]~output_o\ : std_logic;
SIGNAL \othersled[1]~output_o\ : std_logic;
SIGNAL \othersled[2]~output_o\ : std_logic;
SIGNAL \othersled[3]~output_o\ : std_logic;
SIGNAL \othersled[4]~output_o\ : std_logic;
SIGNAL \othersled[5]~output_o\ : std_logic;
SIGNAL \outdig[0]~output_o\ : std_logic;
SIGNAL \outdig[1]~output_o\ : std_logic;
SIGNAL \outdig[2]~output_o\ : std_logic;
SIGNAL \outdig[3]~output_o\ : std_logic;
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \DUT|state.RESET~feeder_combout\ : std_logic;
SIGNAL \DUT|state.RESET~q\ : std_logic;
SIGNAL \DUT|op_state~21_combout\ : std_logic;
SIGNAL \DUT|Selector10~0_combout\ : std_logic;
SIGNAL \DUT|state.WRITE_LINE1~q\ : std_logic;
SIGNAL \DUT|state.SELECT_LINE2~1_combout\ : std_logic;
SIGNAL \DUT|state.SELECT_LINE2~q\ : std_logic;
SIGNAL \DUT|Selector12~0_combout\ : std_logic;
SIGNAL \DUT|state.WRITE_LINE2~q\ : std_logic;
SIGNAL \DUT|Selector9~0_combout\ : std_logic;
SIGNAL \DUT|Selector9~1_combout\ : std_logic;
SIGNAL \DUT|state.SELECT_LINE1~q\ : std_logic;
SIGNAL \DUT|Selector13~2_combout\ : std_logic;
SIGNAL \DUT|Selector16~0_combout\ : std_logic;
SIGNAL \DUT|Selector15~0_combout\ : std_logic;
SIGNAL \DUT|ptr[1]~0_combout\ : std_logic;
SIGNAL \DUT|Selector14~2_combout\ : std_logic;
SIGNAL \DUT|Selector14~3_combout\ : std_logic;
SIGNAL \DUT|Add0~0_combout\ : std_logic;
SIGNAL \DUT|Selector13~3_combout\ : std_logic;
SIGNAL \DUT|Mux22~7_combout\ : std_logic;
SIGNAL \DUT|state.SELECT_LINE2~0_combout\ : std_logic;
SIGNAL \DUT|Selector8~0_combout\ : std_logic;
SIGNAL \DUT|state.CONFIG~q\ : std_logic;
SIGNAL \DUT|Selector35~1_combout\ : std_logic;
SIGNAL \DUT|cnt[10]~2_combout\ : std_logic;
SIGNAL \DUT|Selector35~0_combout\ : std_logic;
SIGNAL \DUT|Add1~0_combout\ : std_logic;
SIGNAL \DUT|Selector45~0_combout\ : std_logic;
SIGNAL \DUT|cnt[10]~1_combout\ : std_logic;
SIGNAL \DUT|Selector38~0_combout\ : std_logic;
SIGNAL \DUT|Selector49~0_combout\ : std_logic;
SIGNAL \DUT|Selector49~1_combout\ : std_logic;
SIGNAL \DUT|Add1~1\ : std_logic;
SIGNAL \DUT|Add1~2_combout\ : std_logic;
SIGNAL \DUT|Selector48~2_combout\ : std_logic;
SIGNAL \DUT|Add1~3\ : std_logic;
SIGNAL \DUT|Add1~4_combout\ : std_logic;
SIGNAL \DUT|Selector47~0_combout\ : std_logic;
SIGNAL \DUT|Selector47~1_combout\ : std_logic;
SIGNAL \DUT|Selector47~2_combout\ : std_logic;
SIGNAL \DUT|Add1~5\ : std_logic;
SIGNAL \DUT|Add1~6_combout\ : std_logic;
SIGNAL \DUT|Selector45~1_combout\ : std_logic;
SIGNAL \DUT|Selector46~0_combout\ : std_logic;
SIGNAL \DUT|Add1~7\ : std_logic;
SIGNAL \DUT|Add1~8_combout\ : std_logic;
SIGNAL \DUT|Selector44~0_combout\ : std_logic;
SIGNAL \DUT|Selector45~2_combout\ : std_logic;
SIGNAL \DUT|Selector38~1_combout\ : std_logic;
SIGNAL \DUT|Add1~9\ : std_logic;
SIGNAL \DUT|Add1~10_combout\ : std_logic;
SIGNAL \DUT|Selector44~1_combout\ : std_logic;
SIGNAL \DUT|Equal1~2_combout\ : std_logic;
SIGNAL \DUT|Selector36~5_combout\ : std_logic;
SIGNAL \DUT|Selector38~2_combout\ : std_logic;
SIGNAL \DUT|Selector20~0_combout\ : std_logic;
SIGNAL \DUT|Selector38~3_combout\ : std_logic;
SIGNAL \DUT|lcd_rs~3_combout\ : std_logic;
SIGNAL \DUT|Selector39~5_combout\ : std_logic;
SIGNAL \DUT|Selector39~2_combout\ : std_logic;
SIGNAL \DUT|Add1~11\ : std_logic;
SIGNAL \DUT|Add1~12_combout\ : std_logic;
SIGNAL \DUT|Selector43~4_combout\ : std_logic;
SIGNAL \DUT|Add1~13\ : std_logic;
SIGNAL \DUT|Add1~14_combout\ : std_logic;
SIGNAL \DUT|Selector42~3_combout\ : std_logic;
SIGNAL \DUT|Selector42~2_combout\ : std_logic;
SIGNAL \DUT|Add1~15\ : std_logic;
SIGNAL \DUT|Add1~16_combout\ : std_logic;
SIGNAL \DUT|Selector41~0_combout\ : std_logic;
SIGNAL \DUT|Selector41~1_combout\ : std_logic;
SIGNAL \DUT|Add1~17\ : std_logic;
SIGNAL \DUT|Add1~18_combout\ : std_logic;
SIGNAL \DUT|Selector40~0_combout\ : std_logic;
SIGNAL \DUT|Selector40~1_combout\ : std_logic;
SIGNAL \DUT|Add1~19\ : std_logic;
SIGNAL \DUT|Add1~20_combout\ : std_logic;
SIGNAL \DUT|Selector39~3_combout\ : std_logic;
SIGNAL \DUT|Selector39~4_combout\ : std_logic;
SIGNAL \DUT|Add1~21\ : std_logic;
SIGNAL \DUT|Add1~22_combout\ : std_logic;
SIGNAL \DUT|Selector38~4_combout\ : std_logic;
SIGNAL \DUT|Add1~23\ : std_logic;
SIGNAL \DUT|Add1~24_combout\ : std_logic;
SIGNAL \DUT|Selector37~2_combout\ : std_logic;
SIGNAL \DUT|Add1~25\ : std_logic;
SIGNAL \DUT|Add1~26_combout\ : std_logic;
SIGNAL \DUT|Selector36~4_combout\ : std_logic;
SIGNAL \DUT|Add1~27\ : std_logic;
SIGNAL \DUT|Add1~28_combout\ : std_logic;
SIGNAL \DUT|Selector35~2_combout\ : std_logic;
SIGNAL \DUT|Add1~29\ : std_logic;
SIGNAL \DUT|Add1~30_combout\ : std_logic;
SIGNAL \DUT|Selector34~0_combout\ : std_logic;
SIGNAL \DUT|Selector34~1_combout\ : std_logic;
SIGNAL \DUT|Equal1~3_combout\ : std_logic;
SIGNAL \DUT|Equal1~1_combout\ : std_logic;
SIGNAL \DUT|Equal1~0_combout\ : std_logic;
SIGNAL \DUT|Equal1~4_combout\ : std_logic;
SIGNAL \DUT|Equal1~6_combout\ : std_logic;
SIGNAL \DUT|Add1~31\ : std_logic;
SIGNAL \DUT|Add1~32_combout\ : std_logic;
SIGNAL \DUT|Selector33~2_combout\ : std_logic;
SIGNAL \DUT|Add1~33\ : std_logic;
SIGNAL \DUT|Add1~35\ : std_logic;
SIGNAL \DUT|Add1~36_combout\ : std_logic;
SIGNAL \DUT|Selector31~0_combout\ : std_logic;
SIGNAL \DUT|Add1~37\ : std_logic;
SIGNAL \DUT|Add1~38_combout\ : std_logic;
SIGNAL \DUT|Selector30~2_combout\ : std_logic;
SIGNAL \DUT|Add1~39\ : std_logic;
SIGNAL \DUT|Add1~40_combout\ : std_logic;
SIGNAL \DUT|Selector29~2_combout\ : std_logic;
SIGNAL \DUT|cnt[13]~0_combout\ : std_logic;
SIGNAL \DUT|Selector32~5_combout\ : std_logic;
SIGNAL \DUT|Selector32~3_combout\ : std_logic;
SIGNAL \DUT|Add1~34_combout\ : std_logic;
SIGNAL \DUT|Selector32~2_combout\ : std_logic;
SIGNAL \DUT|Selector32~4_combout\ : std_logic;
SIGNAL \DUT|Equal1~5_combout\ : std_logic;
SIGNAL \DUT|op_state~13_combout\ : std_logic;
SIGNAL \DUT|op_state.WAIT_HOLD_H~q\ : std_logic;
SIGNAL \DUT|op_state~15_combout\ : std_logic;
SIGNAL \DUT|op_state.WAIT_DELAY_H~q\ : std_logic;
SIGNAL \DUT|op_state~19_combout\ : std_logic;
SIGNAL \DUT|op_state.WAIT_SETUP_L~q\ : std_logic;
SIGNAL \DUT|op_state~14_combout\ : std_logic;
SIGNAL \DUT|op_state.ENABLE_L~q\ : std_logic;
SIGNAL \DUT|op_state~20_combout\ : std_logic;
SIGNAL \DUT|op_state.WAIT_HOLD_L~q\ : std_logic;
SIGNAL \DUT|op_state~18_combout\ : std_logic;
SIGNAL \DUT|op_state.WAIT_DELAY_L~q\ : std_logic;
SIGNAL \DUT|op_state~17_combout\ : std_logic;
SIGNAL \DUT|op_state.DONE~q\ : std_logic;
SIGNAL \DUT|op_state~16_combout\ : std_logic;
SIGNAL \DUT|op_state.IDLE~q\ : std_logic;
SIGNAL \DUT|Selector21~0_combout\ : std_logic;
SIGNAL \DUT|op_state.WAIT_SETUP_H~q\ : std_logic;
SIGNAL \DUT|op_state~12_combout\ : std_logic;
SIGNAL \DUT|op_state.ENABLE_H~q\ : std_logic;
SIGNAL \DUT|lcd_e~0_combout\ : std_logic;
SIGNAL \DUT|lcd_rs~2_combout\ : std_logic;
SIGNAL \DUT|lcd_rs~4_combout\ : std_logic;
SIGNAL \CLK10|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK10|Add0~1\ : std_logic;
SIGNAL \CLK10|Add0~2_combout\ : std_logic;
SIGNAL \CLK10|Add0~3\ : std_logic;
SIGNAL \CLK10|Add0~4_combout\ : std_logic;
SIGNAL \CLK10|Add0~5\ : std_logic;
SIGNAL \CLK10|Add0~6_combout\ : std_logic;
SIGNAL \CLK10|Add0~7\ : std_logic;
SIGNAL \CLK10|Add0~8_combout\ : std_logic;
SIGNAL \CLK10|Equal0~6_combout\ : std_logic;
SIGNAL \CLK10|Add0~9\ : std_logic;
SIGNAL \CLK10|Add0~10_combout\ : std_logic;
SIGNAL \CLK10|Add0~11\ : std_logic;
SIGNAL \CLK10|Add0~12_combout\ : std_logic;
SIGNAL \CLK10|contador~7_combout\ : std_logic;
SIGNAL \CLK10|Add0~13\ : std_logic;
SIGNAL \CLK10|Add0~14_combout\ : std_logic;
SIGNAL \CLK10|Add0~15\ : std_logic;
SIGNAL \CLK10|Add0~16_combout\ : std_logic;
SIGNAL \CLK10|contador~6_combout\ : std_logic;
SIGNAL \CLK10|Equal0~5_combout\ : std_logic;
SIGNAL \CLK10|Add0~17\ : std_logic;
SIGNAL \CLK10|Add0~18_combout\ : std_logic;
SIGNAL \CLK10|contador~5_combout\ : std_logic;
SIGNAL \CLK10|Add0~19\ : std_logic;
SIGNAL \CLK10|Add0~20_combout\ : std_logic;
SIGNAL \CLK10|Add0~21\ : std_logic;
SIGNAL \CLK10|Add0~22_combout\ : std_logic;
SIGNAL \CLK10|contador~4_combout\ : std_logic;
SIGNAL \CLK10|Add0~23\ : std_logic;
SIGNAL \CLK10|Add0~24_combout\ : std_logic;
SIGNAL \CLK10|Add0~25\ : std_logic;
SIGNAL \CLK10|Add0~26_combout\ : std_logic;
SIGNAL \CLK10|Add0~27\ : std_logic;
SIGNAL \CLK10|Add0~28_combout\ : std_logic;
SIGNAL \CLK10|contador~3_combout\ : std_logic;
SIGNAL \CLK10|Add0~29\ : std_logic;
SIGNAL \CLK10|Add0~30_combout\ : std_logic;
SIGNAL \CLK10|Add0~31\ : std_logic;
SIGNAL \CLK10|Add0~32_combout\ : std_logic;
SIGNAL \CLK10|Equal0~2_combout\ : std_logic;
SIGNAL \CLK10|Add0~33\ : std_logic;
SIGNAL \CLK10|Add0~34_combout\ : std_logic;
SIGNAL \CLK10|Add0~35\ : std_logic;
SIGNAL \CLK10|Add0~36_combout\ : std_logic;
SIGNAL \CLK10|contador~2_combout\ : std_logic;
SIGNAL \CLK10|Add0~37\ : std_logic;
SIGNAL \CLK10|Add0~38_combout\ : std_logic;
SIGNAL \CLK10|contador~1_combout\ : std_logic;
SIGNAL \CLK10|Add0~39\ : std_logic;
SIGNAL \CLK10|Add0~40_combout\ : std_logic;
SIGNAL \CLK10|Add0~41\ : std_logic;
SIGNAL \CLK10|Add0~42_combout\ : std_logic;
SIGNAL \CLK10|Add0~43\ : std_logic;
SIGNAL \CLK10|Add0~44_combout\ : std_logic;
SIGNAL \CLK10|contador~0_combout\ : std_logic;
SIGNAL \CLK10|Equal0~0_combout\ : std_logic;
SIGNAL \CLK10|Equal0~3_combout\ : std_logic;
SIGNAL \CLK10|Equal0~1_combout\ : std_logic;
SIGNAL \CLK10|Equal0~4_combout\ : std_logic;
SIGNAL \CLK10|clk_sig~0_combout\ : std_logic;
SIGNAL \CLK10|clk_sig~feeder_combout\ : std_logic;
SIGNAL \CLK10|clk_sig~q\ : std_logic;
SIGNAL \CLK10|clk_sig~clkctrl_outclk\ : std_logic;
SIGNAL \ps2d~input_o\ : std_logic;
SIGNAL \ps2c~input_o\ : std_logic;
SIGNAL \KB0|filter_reg[5]~feeder_combout\ : std_logic;
SIGNAL \KB0|filter_reg[4]~feeder_combout\ : std_logic;
SIGNAL \KB0|Equal0~0_combout\ : std_logic;
SIGNAL \KB0|filter_reg[1]~feeder_combout\ : std_logic;
SIGNAL \KB0|filter_reg[0]~feeder_combout\ : std_logic;
SIGNAL \KB0|Equal0~1_combout\ : std_logic;
SIGNAL \KB0|f_ps2c_next~0_combout\ : std_logic;
SIGNAL \KB0|Equal1~0_combout\ : std_logic;
SIGNAL \KB0|Equal1~1_combout\ : std_logic;
SIGNAL \KB0|f_ps2c_next~1_combout\ : std_logic;
SIGNAL \KB0|f_ps2c_reg~q\ : std_logic;
SIGNAL \KB0|fall_edge~combout\ : std_logic;
SIGNAL \rx_en~input_o\ : std_logic;
SIGNAL \KB0|Selector14~0_combout\ : std_logic;
SIGNAL \KB0|state_reg.idle~q\ : std_logic;
SIGNAL \KB0|n_reg[1]~0_combout\ : std_logic;
SIGNAL \KB0|n_reg[1]~1_combout\ : std_logic;
SIGNAL \KB0|n_reg[0]~5_combout\ : std_logic;
SIGNAL \KB0|n_reg[1]~4_combout\ : std_logic;
SIGNAL \KB0|Add0~1_combout\ : std_logic;
SIGNAL \KB0|n_reg[2]~3_combout\ : std_logic;
SIGNAL \KB0|Add0~0_combout\ : std_logic;
SIGNAL \KB0|n_reg[3]~2_combout\ : std_logic;
SIGNAL \KB0|state_next~2_combout\ : std_logic;
SIGNAL \KB0|Selector15~0_combout\ : std_logic;
SIGNAL \KB0|Selector15~1_combout\ : std_logic;
SIGNAL \KB0|state_reg.dps~q\ : std_logic;
SIGNAL \KB0|Selector16~0_combout\ : std_logic;
SIGNAL \KB0|state_reg.load~q\ : std_logic;
SIGNAL \KB0|b_reg[8]~0_combout\ : std_logic;
SIGNAL \KB0|b_reg[8]~1_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux4~4_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux4~2_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux4~5_combout\ : std_logic;
SIGNAL \KB0|b_reg[1]~feeder_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux4~6_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux4~3_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux4~7_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux4~8_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux2~2_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~2_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~3_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~6_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux5~1_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~7_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~8_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~4_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~10_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~9_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux3~4_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux3~0_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux1~5_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux3~3_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux3~1_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux3~2_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux3~5_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux5~0_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux5~2_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux5~3_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux5~4_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux5~5_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux5~6_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux6~2_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux6~3_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux6~4_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux6~5_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux6~0_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux6~1_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux6~6_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux2~3_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux2~8_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux2~4_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux2~5_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux2~6_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux2~7_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux0~0_combout\ : std_logic;
SIGNAL \KB0|OUT1|Mux0~1_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \dato1[0]~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado.S2~q\ : std_logic;
SIGNAL \operador[7]~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado.S3~q\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \dato2[7]~0_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado.S4~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.S1~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~4clkctrl_outclk\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \DUT|Mux14~1_combout\ : std_logic;
SIGNAL \DUT|Mux14~2_combout\ : std_logic;
SIGNAL \DUT|Mux14~3_combout\ : std_logic;
SIGNAL \DUT|Mux14~4_combout\ : std_logic;
SIGNAL \DUT|Mux14~5_combout\ : std_logic;
SIGNAL \DUT|Mux14~6_combout\ : std_logic;
SIGNAL \DUT|Mux14~0_combout\ : std_logic;
SIGNAL \DUT|Mux14~7_combout\ : std_logic;
SIGNAL \DUT|Mux22~1_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~1clkctrl_outclk\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \DUT|Mux22~2_combout\ : std_logic;
SIGNAL \DUT|Mux22~3_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \ALU0|M4B|HA0|s1~combout\ : std_logic;
SIGNAL \ALU0|Mux0~2_combout\ : std_logic;
SIGNAL \ALU0|C4B|LessThan0~2_combout\ : std_logic;
SIGNAL \ALU0|Mux0~6_combout\ : std_logic;
SIGNAL \ALU0|C4B|LessThan0~0_combout\ : std_logic;
SIGNAL \ALU0|C4B|LessThan0~1_combout\ : std_logic;
SIGNAL \ALU0|C4B|LessThan0~3_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \ALU0|Mux1~1_combout\ : std_logic;
SIGNAL \ALU0|Mux1~0_combout\ : std_logic;
SIGNAL \ALU0|Mux1~2_combout\ : std_logic;
SIGNAL \ALU0|Mux1~3_combout\ : std_logic;
SIGNAL \ALU0|Mux0~3_combout\ : std_logic;
SIGNAL \ALU0|Mux0~4_combout\ : std_logic;
SIGNAL \ALU0|Mux0~5_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \ALU0|Mux3~0_combout\ : std_logic;
SIGNAL \ALU0|Mux3~1_combout\ : std_logic;
SIGNAL \ALU0|Mux3~2_combout\ : std_logic;
SIGNAL \ALU0|Mux3~2clkctrl_outclk\ : std_logic;
SIGNAL \ALU0|M4B|FA0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA0|Cout~1_combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~2_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA1|HA2|s1~combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~3_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA0|HA2|s1~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA0|HA2|s1~1_combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~6_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~5_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA3|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA4|HA1|s1~combout\ : std_logic;
SIGNAL \ALU0|M4B|FA2|HA2|s1~combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~4_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA3|HA2|s1~combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~1_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA5|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~8_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA6|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~9_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA4|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA7|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|Mux10~0_combout\ : std_logic;
SIGNAL \ALU0|solucion[7]$latch~combout\ : std_logic;
SIGNAL \ALU0|A4B|FA0|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|A4B|FA1|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|A4B|FA2|Cout~0_combout\ : std_logic;
SIGNAL \ALU0|S4B|FS0|Bout~combout\ : std_logic;
SIGNAL \ALU0|S4B|FS1|Bout~combout\ : std_logic;
SIGNAL \ALU0|S4B|FS2|Bout~combout\ : std_logic;
SIGNAL \ALU0|A4B|FA4|HA2|s1~0_combout\ : std_logic;
SIGNAL \ALU0|Mux5~0_combout\ : std_logic;
SIGNAL \ALU0|Mux5~1_combout\ : std_logic;
SIGNAL \ALU0|solucion[3]$latch~combout\ : std_logic;
SIGNAL \ALU0|A4B|FA2|HA2|s1~0_combout\ : std_logic;
SIGNAL \ALU0|Mux4~0_combout\ : std_logic;
SIGNAL \ALU0|Mux4~1_combout\ : std_logic;
SIGNAL \ALU0|solucion[2]$latch~combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \ALU0|M4B|comb~7_combout\ : std_logic;
SIGNAL \ALU0|Mux9~0_combout\ : std_logic;
SIGNAL \ALU0|solucion[6]$latch~combout\ : std_logic;
SIGNAL \ALU0|M4B|FA6|HA2|s1~combout\ : std_logic;
SIGNAL \ALU0|Mux8~0_combout\ : std_logic;
SIGNAL \ALU0|solucion[5]$latch~combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \ALU0|Mux7~1_combout\ : std_logic;
SIGNAL \ALU0|M4B|FA5|HA2|s1~combout\ : std_logic;
SIGNAL \ALU0|Mux7~0_combout\ : std_logic;
SIGNAL \ALU0|Mux7~2_combout\ : std_logic;
SIGNAL \ALU0|solucion[4]$latch~combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~5_combout\ : std_logic;
SIGNAL \Selector44~4_combout\ : std_logic;
SIGNAL \Selector44~6_combout\ : std_logic;
SIGNAL \Selector44~7_combout\ : std_logic;
SIGNAL \DUT|Mux22~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \DUT|Mux22~4_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \DUT|Mux22~5_combout\ : std_logic;
SIGNAL \DUT|Mux22~6_combout\ : std_logic;
SIGNAL \DUT|Selector20~3_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \DUT|Mux18~2_combout\ : std_logic;
SIGNAL \DUT|Mux18~3_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \DUT|Mux18~4_combout\ : std_logic;
SIGNAL \DUT|Mux18~5_combout\ : std_logic;
SIGNAL \DUT|Mux18~6_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \DUT|Mux18~0_combout\ : std_logic;
SIGNAL \DUT|Mux18~1_combout\ : std_logic;
SIGNAL \DUT|Mux18~7_combout\ : std_logic;
SIGNAL \Selector42~4_combout\ : std_logic;
SIGNAL \Selector48~4_combout\ : std_logic;
SIGNAL \Selector48~5_combout\ : std_logic;
SIGNAL \Selector48~6_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \Selector48~2_combout\ : std_logic;
SIGNAL \Selector48~3_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Decoder~6_combout\ : std_logic;
SIGNAL \Decoder~7_combout\ : std_logic;
SIGNAL \Decoder~8_combout\ : std_logic;
SIGNAL \Decoder~2_combout\ : std_logic;
SIGNAL \Decoder~3_combout\ : std_logic;
SIGNAL \Decoder~19_combout\ : std_logic;
SIGNAL \Decoder~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Decoder~5_combout\ : std_logic;
SIGNAL \Selector48~7_combout\ : std_logic;
SIGNAL \Decoder~15_combout\ : std_logic;
SIGNAL \Decoder~16_combout\ : std_logic;
SIGNAL \Decoder~13_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Decoder~14_combout\ : std_logic;
SIGNAL \Decoder~11_combout\ : std_logic;
SIGNAL \Decoder~12_combout\ : std_logic;
SIGNAL \Selector48~8_combout\ : std_logic;
SIGNAL \Decoder~9_combout\ : std_logic;
SIGNAL \Decoder~10_combout\ : std_logic;
SIGNAL \Selector48~9_combout\ : std_logic;
SIGNAL \Selector48~10_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \DUT|Mux26~3_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \DUT|Mux26~1_combout\ : std_logic;
SIGNAL \DUT|Mux26~2_combout\ : std_logic;
SIGNAL \DUT|Mux26~4_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \DUT|Mux26~0_combout\ : std_logic;
SIGNAL \Decoder~18_combout\ : std_logic;
SIGNAL \Selector42~5_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Decoder~17_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \DUT|Mux26~5_combout\ : std_logic;
SIGNAL \DUT|Mux26~6_combout\ : std_logic;
SIGNAL \DUT|Mux26~7_combout\ : std_logic;
SIGNAL \DUT|Selector20~1_combout\ : std_logic;
SIGNAL \DUT|WideOr9~0_combout\ : std_logic;
SIGNAL \DUT|Selector20~2_combout\ : std_logic;
SIGNAL \DUT|WideOr8~0_combout\ : std_logic;
SIGNAL \DUT|Selector20~4_combout\ : std_logic;
SIGNAL \DUT|Selector19~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \DUT|Mux25~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \DUT|Mux25~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Selector51~4_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Selector51~5_combout\ : std_logic;
SIGNAL \Selector51~11_combout\ : std_logic;
SIGNAL \Selector51~12_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \unidades~1_combout\ : std_logic;
SIGNAL \Selector51~16_combout\ : std_logic;
SIGNAL \Selector51~20_combout\ : std_logic;
SIGNAL \unidades~2_combout\ : std_logic;
SIGNAL \Selector51~17_combout\ : std_logic;
SIGNAL \Selector51~18_combout\ : std_logic;
SIGNAL \Selector51~19_combout\ : std_logic;
SIGNAL \Selector51~21_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Selector51~9_combout\ : std_logic;
SIGNAL \Selector51~10_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Selector51~13_combout\ : std_logic;
SIGNAL \Selector51~14_combout\ : std_logic;
SIGNAL \unidades~0_combout\ : std_logic;
SIGNAL \Selector51~24_combout\ : std_logic;
SIGNAL \Selector51~15_combout\ : std_logic;
SIGNAL \Selector51~22_combout\ : std_logic;
SIGNAL \Selector51~7_combout\ : std_logic;
SIGNAL \Selector51~6_combout\ : std_logic;
SIGNAL \Selector51~8_combout\ : std_logic;
SIGNAL \Selector51~23_combout\ : std_logic;
SIGNAL \DUT|Mux25~5_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \DUT|Mux25~1_combout\ : std_logic;
SIGNAL \Selector47~16_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Selector47~7_combout\ : std_logic;
SIGNAL \Selector47~8_combout\ : std_logic;
SIGNAL \Selector47~4_combout\ : std_logic;
SIGNAL \Selector47~5_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Selector47~15_combout\ : std_logic;
SIGNAL \Selector47~6_combout\ : std_logic;
SIGNAL \Selector47~12_combout\ : std_logic;
SIGNAL \Selector47~11_combout\ : std_logic;
SIGNAL \Selector47~9_combout\ : std_logic;
SIGNAL \Selector47~10_combout\ : std_logic;
SIGNAL \Selector47~17_combout\ : std_logic;
SIGNAL \Selector47~18_combout\ : std_logic;
SIGNAL \Selector47~13_combout\ : std_logic;
SIGNAL \Selector47~14_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \DUT|Mux25~2_combout\ : std_logic;
SIGNAL \DUT|Mux25~3_combout\ : std_logic;
SIGNAL \DUT|Mux25~6_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \Selector43~3_combout\ : std_logic;
SIGNAL \Selector42~6_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector43~4_combout\ : std_logic;
SIGNAL \DUT|Mux21~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \DUT|Mux21~1_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \DUT|Mux21~2_combout\ : std_logic;
SIGNAL \DUT|Mux21~3_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \DUT|Mux21~4_combout\ : std_logic;
SIGNAL \DUT|Mux21~5_combout\ : std_logic;
SIGNAL \DUT|Selector19~0_combout\ : std_logic;
SIGNAL \DUT|Mux17~0_combout\ : std_logic;
SIGNAL \DUT|Mux17~6_combout\ : std_logic;
SIGNAL \DUT|Mux17~4_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \DUT|Mux17~2_combout\ : std_logic;
SIGNAL \DUT|Mux17~3_combout\ : std_logic;
SIGNAL \DUT|Mux17~5_combout\ : std_logic;
SIGNAL \DUT|Mux17~1_combout\ : std_logic;
SIGNAL \DUT|Mux17~7_combout\ : std_logic;
SIGNAL \DUT|Mux13~0_combout\ : std_logic;
SIGNAL \DUT|Selector19~1_combout\ : std_logic;
SIGNAL \DUT|Selector19~2_combout\ : std_logic;
SIGNAL \DUT|Selector19~4_combout\ : std_logic;
SIGNAL \DUT|Selector19~5_combout\ : std_logic;
SIGNAL \DUT|Selector18~1_combout\ : std_logic;
SIGNAL \DUT|Mux12~0_combout\ : std_logic;
SIGNAL \DUT|Mux12~1_combout\ : std_logic;
SIGNAL \DUT|Selector1~0_combout\ : std_logic;
SIGNAL \DUT|Selector1~1_combout\ : std_logic;
SIGNAL \DUT|Selector1~2_combout\ : std_logic;
SIGNAL \DUT|Selector1~3_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \DUT|Mux20~4_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \DUT|Mux20~2_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \DUT|Mux20~1_combout\ : std_logic;
SIGNAL \DUT|Mux20~3_combout\ : std_logic;
SIGNAL \Selector42~11_combout\ : std_logic;
SIGNAL \Selector42~7_combout\ : std_logic;
SIGNAL \Selector42~8_combout\ : std_logic;
SIGNAL \Selector42~9_combout\ : std_logic;
SIGNAL \Selector42~10_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \DUT|Mux20~0_combout\ : std_logic;
SIGNAL \DUT|Mux20~5_combout\ : std_logic;
SIGNAL \DUT|Selector1~4_combout\ : std_logic;
SIGNAL \DUT|Selector18~0_combout\ : std_logic;
SIGNAL \DUT|Mux16~0_combout\ : std_logic;
SIGNAL \DUT|Mux16~1_combout\ : std_logic;
SIGNAL \DUT|Mux16~2_combout\ : std_logic;
SIGNAL \DUT|Mux16~3_combout\ : std_logic;
SIGNAL \DUT|Mux16~4_combout\ : std_logic;
SIGNAL \DUT|Mux16~5_combout\ : std_logic;
SIGNAL \DUT|Mux16~6_combout\ : std_logic;
SIGNAL \DUT|Mux16~7_combout\ : std_logic;
SIGNAL \DUT|Mux16~8_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \DUT|Mux24~2_combout\ : std_logic;
SIGNAL \Selector50~10_combout\ : std_logic;
SIGNAL \Selector50~11_combout\ : std_logic;
SIGNAL \Selector50~12_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Selector50~9_combout\ : std_logic;
SIGNAL \Selector50~7_combout\ : std_logic;
SIGNAL \Selector50~15_combout\ : std_logic;
SIGNAL \Selector50~8_combout\ : std_logic;
SIGNAL \Selector50~13_combout\ : std_logic;
SIGNAL \Selector50~16_combout\ : std_logic;
SIGNAL \unidades~5_combout\ : std_logic;
SIGNAL \unidades~4_combout\ : std_logic;
SIGNAL \Selector50~14_combout\ : std_logic;
SIGNAL \Selector50~5_combout\ : std_logic;
SIGNAL \unidades~3_combout\ : std_logic;
SIGNAL \Selector50~4_combout\ : std_logic;
SIGNAL \Selector50~6_combout\ : std_logic;
SIGNAL \Selector50~17_combout\ : std_logic;
SIGNAL \DUT|Mux24~1_combout\ : std_logic;
SIGNAL \DUT|Mux24~3_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \DUT|Mux24~4_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \DUT|Mux24~5_combout\ : std_logic;
SIGNAL \Selector46~4_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector46~6_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \Selector46~5_combout\ : std_logic;
SIGNAL \DUT|Mux24~0_combout\ : std_logic;
SIGNAL \DUT|Mux24~6_combout\ : std_logic;
SIGNAL \DUT|Selector18~2_combout\ : std_logic;
SIGNAL \DUT|Selector18~3_combout\ : std_logic;
SIGNAL \DUT|Selector4~5_combout\ : std_logic;
SIGNAL \DUT|Selector4~3_combout\ : std_logic;
SIGNAL \DUT|Selector4~6_combout\ : std_logic;
SIGNAL \DUT|Selector4~7_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \unidades~8_combout\ : std_logic;
SIGNAL \unidades~6_combout\ : std_logic;
SIGNAL \unidades~7_combout\ : std_logic;
SIGNAL \Mux25~11_combout\ : std_logic;
SIGNAL \Mux25~12_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \Mux25~15_combout\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \Mux25~13_combout\ : std_logic;
SIGNAL \Mux25~14_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \DUT|Mux23~5_combout\ : std_logic;
SIGNAL \DUT|Mux23~6_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \Selector45~4_combout\ : std_logic;
SIGNAL \Selector45~5_combout\ : std_logic;
SIGNAL \Selector45~7_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector45~6_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \DUT|Mux23~3_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \DUT|Mux23~1_combout\ : std_logic;
SIGNAL \DUT|Mux23~2_combout\ : std_logic;
SIGNAL \DUT|Mux23~4_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \DUT|Mux23~0_combout\ : std_logic;
SIGNAL \DUT|Mux23~7_combout\ : std_logic;
SIGNAL \DUT|Mux15~0_combout\ : std_logic;
SIGNAL \DUT|Mux15~1_combout\ : std_logic;
SIGNAL \DUT|Selector4~0_combout\ : std_logic;
SIGNAL \DUT|Selector4~1_combout\ : std_logic;
SIGNAL \DUT|Selector4~2_combout\ : std_logic;
SIGNAL \DUT|Selector4~4_combout\ : std_logic;
SIGNAL \DUT|Selector4~8_combout\ : std_logic;
SIGNAL \DUT|Selector17~0_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~1_cout\ : std_logic;
SIGNAL \CLKDIS|Add0~2_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~3\ : std_logic;
SIGNAL \CLKDIS|Add0~4_combout\ : std_logic;
SIGNAL \CLKDIS|contador~5_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~5\ : std_logic;
SIGNAL \CLKDIS|Add0~6_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~7\ : std_logic;
SIGNAL \CLKDIS|Add0~8_combout\ : std_logic;
SIGNAL \CLKDIS|contador~4_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~9\ : std_logic;
SIGNAL \CLKDIS|Add0~10_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~11\ : std_logic;
SIGNAL \CLKDIS|Add0~12_combout\ : std_logic;
SIGNAL \CLKDIS|contador~3_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~13\ : std_logic;
SIGNAL \CLKDIS|Add0~14_combout\ : std_logic;
SIGNAL \CLKDIS|contador~2_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~15\ : std_logic;
SIGNAL \CLKDIS|Add0~16_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~17\ : std_logic;
SIGNAL \CLKDIS|Add0~18_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~19\ : std_logic;
SIGNAL \CLKDIS|Add0~20_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~21\ : std_logic;
SIGNAL \CLKDIS|Add0~22_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~23\ : std_logic;
SIGNAL \CLKDIS|Add0~24_combout\ : std_logic;
SIGNAL \CLKDIS|contador~1_combout\ : std_logic;
SIGNAL \CLKDIS|Add0~25\ : std_logic;
SIGNAL \CLKDIS|Add0~26_combout\ : std_logic;
SIGNAL \CLKDIS|contador~0_combout\ : std_logic;
SIGNAL \CLKDIS|Equal0~0_combout\ : std_logic;
SIGNAL \CLKDIS|Equal0~1_combout\ : std_logic;
SIGNAL \CLKDIS|Equal0~2_combout\ : std_logic;
SIGNAL \CLKDIS|Equal0~3_combout\ : std_logic;
SIGNAL \CLKDIS|Equal0~4_combout\ : std_logic;
SIGNAL \CLKDIS|clk_sig~0_combout\ : std_logic;
SIGNAL \CLKDIS|clk_sig~feeder_combout\ : std_logic;
SIGNAL \CLKDIS|clk_sig~q\ : std_logic;
SIGNAL \CLKDIS|clk_sig~clkctrl_outclk\ : std_logic;
SIGNAL \step~input_o\ : std_logic;
SIGNAL \disp.D4~q\ : std_logic;
SIGNAL \disp.D1~0_combout\ : std_logic;
SIGNAL \disp.D1~q\ : std_logic;
SIGNAL \disp.D2~0_combout\ : std_logic;
SIGNAL \disp.D2~q\ : std_logic;
SIGNAL \disp.D3~q\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Selector80~2_combout\ : std_logic;
SIGNAL \Selector80~3_combout\ : std_logic;
SIGNAL \step~inputclkctrl_outclk\ : std_logic;
SIGNAL \outled[0]$latch~combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \outled[1]$latch~combout\ : std_logic;
SIGNAL \outdig[0]$latch~combout\ : std_logic;
SIGNAL \outdig[1]$latch~combout\ : std_logic;
SIGNAL \outdig[2]$latch~combout\ : std_logic;
SIGNAL \outdig[3]$latch~combout\ : std_logic;
SIGNAL \DUT|ptr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DUT|cnt\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \CLK10|contador\ : std_logic_vector(22 DOWNTO 0);
SIGNAL operador : std_logic_vector(7 DOWNTO 0);
SIGNAL \KB0|b_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \KB0|filter_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KB0|n_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU0|M4B|Pm8b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL line2_buffer : std_logic_vector(127 DOWNTO 0);
SIGNAL \CLKDIS|contador\ : std_logic_vector(14 DOWNTO 0);
SIGNAL line1_buffer : std_logic_vector(127 DOWNTO 0);
SIGNAL line2 : std_logic_vector(127 DOWNTO 0);
SIGNAL dato2 : std_logic_vector(7 DOWNTO 0);
SIGNAL dato1 : std_logic_vector(7 DOWNTO 0);
SIGNAL line1 : std_logic_vector(127 DOWNTO 0);
SIGNAL case4 : std_logic_vector(7 DOWNTO 0);
SIGNAL \KB0|ALT_INV_state_reg.load~q\ : std_logic;
SIGNAL \DUT|ALT_INV_state.RESET~q\ : std_logic;
SIGNAL \DUT|ALT_INV_lcd_e~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_i <= clk_i;
lcd_e <= ww_lcd_e;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_db <= ww_lcd_db;
ww_reset <= reset;
ww_ps2d <= ps2d;
ww_ps2c <= ps2c;
ww_rx_en <= rx_en;
rx_done_tick <= ww_rx_done_tick;
outled <= ww_outled;
othersled <= ww_othersled;
outdig <= ww_outdig;
beep <= ww_beep;
ww_step <= step;
ww_cin <= cin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLKDIS|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKDIS|clk_sig~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\ALU0|Mux3~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ALU0|Mux3~2_combout\);

\Mux30~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux30~1_combout\);

\clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_i~input_o\);

\step~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \step~input_o\);

\CLK10|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK10|clk_sig~q\);

\Selector0~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector0~4_combout\);
\KB0|ALT_INV_state_reg.load~q\ <= NOT \KB0|state_reg.load~q\;
\DUT|ALT_INV_state.RESET~q\ <= NOT \DUT|state.RESET~q\;
\DUT|ALT_INV_lcd_e~0_combout\ <= NOT \DUT|lcd_e~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N16
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|ALT_INV_lcd_e~0_combout\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|lcd_rs~4_combout\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\lcd_db[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Selector20~4_combout\,
	devoe => ww_devoe,
	o => \lcd_db[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\lcd_db[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Selector19~5_combout\,
	devoe => ww_devoe,
	o => \lcd_db[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\lcd_db[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Selector18~3_combout\,
	devoe => ww_devoe,
	o => \lcd_db[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\lcd_db[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Selector17~0_combout\,
	devoe => ww_devoe,
	o => \lcd_db[7]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\rx_done_tick~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KB0|ALT_INV_state_reg.load~q\,
	devoe => ww_devoe,
	o => \rx_done_tick~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\outled[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outled[0]$latch~combout\,
	devoe => ww_devoe,
	o => \outled[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\outled[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outled[1]$latch~combout\,
	devoe => ww_devoe,
	o => \outled[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\othersled[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \othersled[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\othersled[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \othersled[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\othersled[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \othersled[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\othersled[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \othersled[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\othersled[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \othersled[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\othersled[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \othersled[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\outdig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outdig[0]$latch~combout\,
	devoe => ww_devoe,
	o => \outdig[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\outdig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outdig[1]$latch~combout\,
	devoe => ww_devoe,
	o => \outdig[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\outdig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outdig[2]$latch~combout\,
	devoe => ww_devoe,
	o => \outdig[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\outdig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outdig[3]$latch~combout\,
	devoe => ww_devoe,
	o => \outdig[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\beep~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \beep~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_i,
	o => \clk_i~input_o\);

-- Location: CLKCTRL_G2
\clk_i~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_i~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y6_N26
\DUT|state.RESET~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|state.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DUT|state.RESET~feeder_combout\);

-- Location: FF_X25_Y6_N27
\DUT|state.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|state.RESET~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.RESET~q\);

-- Location: LCCOMB_X25_Y6_N30
\DUT|op_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~21_combout\ = (\DUT|op_state.ENABLE_H~q\ & \DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|op_state.ENABLE_H~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|op_state~21_combout\);

-- Location: LCCOMB_X23_Y7_N20
\DUT|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector10~0_combout\ = (\DUT|op_state.DONE~q\ & ((\DUT|state.SELECT_LINE1~q\) # ((!\DUT|state.SELECT_LINE2~0_combout\ & \DUT|state.WRITE_LINE1~q\)))) # (!\DUT|op_state.DONE~q\ & (!\DUT|state.SELECT_LINE2~0_combout\ & (\DUT|state.WRITE_LINE1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.DONE~q\,
	datab => \DUT|state.SELECT_LINE2~0_combout\,
	datac => \DUT|state.WRITE_LINE1~q\,
	datad => \DUT|state.SELECT_LINE1~q\,
	combout => \DUT|Selector10~0_combout\);

-- Location: FF_X23_Y7_N21
\DUT|state.WRITE_LINE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.WRITE_LINE1~q\);

-- Location: LCCOMB_X23_Y7_N30
\DUT|state.SELECT_LINE2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|state.SELECT_LINE2~1_combout\ = (\DUT|op_state.DONE~q\ & (\DUT|state.WRITE_LINE1~q\ & ((\DUT|state.SELECT_LINE2~0_combout\)))) # (!\DUT|op_state.DONE~q\ & ((\DUT|state.SELECT_LINE2~q\) # ((\DUT|state.WRITE_LINE1~q\ & 
-- \DUT|state.SELECT_LINE2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.DONE~q\,
	datab => \DUT|state.WRITE_LINE1~q\,
	datac => \DUT|state.SELECT_LINE2~q\,
	datad => \DUT|state.SELECT_LINE2~0_combout\,
	combout => \DUT|state.SELECT_LINE2~1_combout\);

-- Location: FF_X23_Y7_N31
\DUT|state.SELECT_LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|state.SELECT_LINE2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.SELECT_LINE2~q\);

-- Location: LCCOMB_X23_Y7_N6
\DUT|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector12~0_combout\ = (\DUT|state.SELECT_LINE2~q\ & ((\DUT|op_state.DONE~q\) # ((!\DUT|state.SELECT_LINE2~0_combout\ & \DUT|state.WRITE_LINE2~q\)))) # (!\DUT|state.SELECT_LINE2~q\ & (!\DUT|state.SELECT_LINE2~0_combout\ & 
-- (\DUT|state.WRITE_LINE2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.SELECT_LINE2~q\,
	datab => \DUT|state.SELECT_LINE2~0_combout\,
	datac => \DUT|state.WRITE_LINE2~q\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|Selector12~0_combout\);

-- Location: FF_X23_Y7_N7
\DUT|state.WRITE_LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.WRITE_LINE2~q\);

-- Location: LCCOMB_X23_Y7_N14
\DUT|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector9~0_combout\ = (\DUT|state.SELECT_LINE1~q\ & !\DUT|op_state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.SELECT_LINE1~q\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|Selector9~0_combout\);

-- Location: LCCOMB_X23_Y7_N10
\DUT|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector9~1_combout\ = (\DUT|Selector9~0_combout\) # ((\DUT|state.SELECT_LINE2~0_combout\ & ((\DUT|state.WRITE_LINE2~q\) # (\DUT|state.CONFIG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.WRITE_LINE2~q\,
	datab => \DUT|state.SELECT_LINE2~0_combout\,
	datac => \DUT|Selector9~0_combout\,
	datad => \DUT|state.CONFIG~q\,
	combout => \DUT|Selector9~1_combout\);

-- Location: FF_X23_Y7_N11
\DUT|state.SELECT_LINE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.SELECT_LINE1~q\);

-- Location: LCCOMB_X23_Y7_N16
\DUT|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector13~2_combout\ = (!\DUT|state.SELECT_LINE1~q\ & !\DUT|state.SELECT_LINE2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.SELECT_LINE1~q\,
	datac => \DUT|state.SELECT_LINE2~q\,
	combout => \DUT|Selector13~2_combout\);

-- Location: LCCOMB_X23_Y7_N26
\DUT|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector16~0_combout\ = ((\DUT|op_state.DONE~q\ $ (\DUT|ptr\(0))) # (!\DUT|Selector13~2_combout\)) # (!\DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.DONE~q\,
	datab => \DUT|state.RESET~q\,
	datac => \DUT|ptr\(0),
	datad => \DUT|Selector13~2_combout\,
	combout => \DUT|Selector16~0_combout\);

-- Location: FF_X23_Y7_N27
\DUT|ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|ptr\(0));

-- Location: LCCOMB_X23_Y7_N22
\DUT|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector15~0_combout\ = ((\DUT|state.RESET~q\ & (\DUT|ptr\(0) $ (!\DUT|ptr\(1))))) # (!\DUT|Selector13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|state.RESET~q\,
	datac => \DUT|ptr\(1),
	datad => \DUT|Selector13~2_combout\,
	combout => \DUT|Selector15~0_combout\);

-- Location: LCCOMB_X23_Y7_N18
\DUT|ptr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|ptr[1]~0_combout\ = (\DUT|op_state.DONE~q\) # ((!\DUT|state.WRITE_LINE2~q\ & (!\DUT|state.CONFIG~q\ & !\DUT|state.WRITE_LINE1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.WRITE_LINE2~q\,
	datab => \DUT|state.CONFIG~q\,
	datac => \DUT|state.WRITE_LINE1~q\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|ptr[1]~0_combout\);

-- Location: FF_X23_Y7_N23
\DUT|ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector15~0_combout\,
	ena => \DUT|ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|ptr\(1));

-- Location: LCCOMB_X23_Y7_N8
\DUT|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector14~2_combout\ = \DUT|ptr\(2) $ (((!\DUT|ptr\(1) & (!\DUT|ptr\(0) & \DUT|op_state.DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(2),
	datac => \DUT|ptr\(0),
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|Selector14~2_combout\);

-- Location: LCCOMB_X23_Y7_N4
\DUT|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector14~3_combout\ = (\DUT|state.SELECT_LINE2~q\) # (((\DUT|Selector14~2_combout\) # (\DUT|state.SELECT_LINE1~q\)) # (!\DUT|state.RESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.SELECT_LINE2~q\,
	datab => \DUT|state.RESET~q\,
	datac => \DUT|Selector14~2_combout\,
	datad => \DUT|state.SELECT_LINE1~q\,
	combout => \DUT|Selector14~3_combout\);

-- Location: FF_X23_Y7_N5
\DUT|ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|ptr\(2));

-- Location: LCCOMB_X23_Y7_N0
\DUT|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add0~0_combout\ = \DUT|ptr\(3) $ (((\DUT|ptr\(0)) # ((\DUT|ptr\(2)) # (\DUT|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|ptr\(2),
	datac => \DUT|ptr\(1),
	datad => \DUT|ptr\(3),
	combout => \DUT|Add0~0_combout\);

-- Location: LCCOMB_X23_Y7_N28
\DUT|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector13~3_combout\ = (\DUT|state.SELECT_LINE2~q\) # ((\DUT|state.SELECT_LINE1~q\) # ((!\DUT|Add0~0_combout\ & \DUT|state.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.SELECT_LINE2~q\,
	datab => \DUT|Add0~0_combout\,
	datac => \DUT|state.RESET~q\,
	datad => \DUT|state.SELECT_LINE1~q\,
	combout => \DUT|Selector13~3_combout\);

-- Location: FF_X23_Y7_N29
\DUT|ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector13~3_combout\,
	ena => \DUT|ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|ptr\(3));

-- Location: LCCOMB_X21_Y7_N10
\DUT|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~7_combout\ = (!\DUT|ptr\(2) & !\DUT|ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|ptr\(2),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux22~7_combout\);

-- Location: LCCOMB_X23_Y7_N2
\DUT|state.SELECT_LINE2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|state.SELECT_LINE2~0_combout\ = (!\DUT|ptr\(0) & (!\DUT|ptr\(3) & (\DUT|Mux22~7_combout\ & \DUT|op_state.DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux22~7_combout\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|state.SELECT_LINE2~0_combout\);

-- Location: LCCOMB_X23_Y7_N24
\DUT|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector8~0_combout\ = ((\DUT|state.CONFIG~q\ & !\DUT|state.SELECT_LINE2~0_combout\)) # (!\DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|state.RESET~q\,
	datac => \DUT|state.CONFIG~q\,
	datad => \DUT|state.SELECT_LINE2~0_combout\,
	combout => \DUT|Selector8~0_combout\);

-- Location: FF_X23_Y7_N25
\DUT|state.CONFIG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.CONFIG~q\);

-- Location: LCCOMB_X23_Y8_N28
\DUT|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector35~1_combout\ = (\DUT|ptr\(2) & (\DUT|ptr\(0) & \DUT|state.CONFIG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|ptr\(2),
	datac => \DUT|ptr\(0),
	datad => \DUT|state.CONFIG~q\,
	combout => \DUT|Selector35~1_combout\);

-- Location: LCCOMB_X24_Y8_N8
\DUT|cnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[10]~2_combout\ = (!\DUT|cnt\(20) & (\DUT|Equal1~5_combout\ & (\DUT|op_state.WAIT_HOLD_H~q\ & \DUT|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(20),
	datab => \DUT|Equal1~5_combout\,
	datac => \DUT|op_state.WAIT_HOLD_H~q\,
	datad => \DUT|Equal1~4_combout\,
	combout => \DUT|cnt[10]~2_combout\);

-- Location: LCCOMB_X24_Y7_N22
\DUT|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector35~0_combout\ = (\DUT|ptr\(2) & \DUT|state.CONFIG~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|ptr\(2),
	datad => \DUT|state.CONFIG~q\,
	combout => \DUT|Selector35~0_combout\);

-- Location: LCCOMB_X25_Y8_N12
\DUT|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~0_combout\ = \DUT|cnt\(0) $ (VCC)
-- \DUT|Add1~1\ = CARRY(\DUT|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(0),
	datad => VCC,
	combout => \DUT|Add1~0_combout\,
	cout => \DUT|Add1~1\);

-- Location: LCCOMB_X25_Y6_N20
\DUT|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector45~0_combout\ = (!\DUT|op_state.WAIT_SETUP_H~q\ & !\DUT|op_state.WAIT_SETUP_L~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|op_state.WAIT_SETUP_H~q\,
	datad => \DUT|op_state.WAIT_SETUP_L~q\,
	combout => \DUT|Selector45~0_combout\);

-- Location: LCCOMB_X25_Y6_N28
\DUT|cnt[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[10]~1_combout\ = (!\DUT|op_state.WAIT_HOLD_L~q\ & !\DUT|op_state.WAIT_HOLD_H~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|op_state.WAIT_HOLD_L~q\,
	datad => \DUT|op_state.WAIT_HOLD_H~q\,
	combout => \DUT|cnt[10]~1_combout\);

-- Location: LCCOMB_X25_Y6_N6
\DUT|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector38~0_combout\ = (!\DUT|op_state.WAIT_DELAY_H~q\ & (!\DUT|op_state.ENABLE_L~q\ & (!\DUT|op_state.ENABLE_H~q\ & \DUT|cnt[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_DELAY_H~q\,
	datab => \DUT|op_state.ENABLE_L~q\,
	datac => \DUT|op_state.ENABLE_H~q\,
	datad => \DUT|cnt[10]~1_combout\,
	combout => \DUT|Selector38~0_combout\);

-- Location: LCCOMB_X25_Y8_N8
\DUT|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector49~0_combout\ = ((!\DUT|Equal1~6_combout\ & ((\DUT|op_state.WAIT_DELAY_L~q\) # (!\DUT|Selector45~0_combout\)))) # (!\DUT|Selector38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Equal1~6_combout\,
	datab => \DUT|op_state.WAIT_DELAY_L~q\,
	datac => \DUT|Selector45~0_combout\,
	datad => \DUT|Selector38~0_combout\,
	combout => \DUT|Selector49~0_combout\);

-- Location: LCCOMB_X25_Y8_N6
\DUT|Selector49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector49~1_combout\ = ((\DUT|Add1~0_combout\ & \DUT|Selector49~0_combout\)) # (!\DUT|op_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Add1~0_combout\,
	datac => \DUT|op_state.IDLE~q\,
	datad => \DUT|Selector49~0_combout\,
	combout => \DUT|Selector49~1_combout\);

-- Location: FF_X25_Y8_N7
\DUT|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector49~1_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(0));

-- Location: LCCOMB_X25_Y8_N14
\DUT|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~2_combout\ = (\DUT|cnt\(1) & (\DUT|Add1~1\ & VCC)) # (!\DUT|cnt\(1) & (!\DUT|Add1~1\))
-- \DUT|Add1~3\ = CARRY((!\DUT|cnt\(1) & !\DUT|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(1),
	datad => VCC,
	cin => \DUT|Add1~1\,
	combout => \DUT|Add1~2_combout\,
	cout => \DUT|Add1~3\);

-- Location: LCCOMB_X25_Y8_N0
\DUT|Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector48~2_combout\ = (!\DUT|op_state.DONE~q\ & (\DUT|Add1~2_combout\ & (\DUT|op_state.IDLE~q\ & !\DUT|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.DONE~q\,
	datab => \DUT|Add1~2_combout\,
	datac => \DUT|op_state.IDLE~q\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|Selector48~2_combout\);

-- Location: FF_X25_Y8_N1
\DUT|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector48~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(1));

-- Location: LCCOMB_X25_Y8_N16
\DUT|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~4_combout\ = (\DUT|cnt\(2) & ((GND) # (!\DUT|Add1~3\))) # (!\DUT|cnt\(2) & (\DUT|Add1~3\ $ (GND)))
-- \DUT|Add1~5\ = CARRY((\DUT|cnt\(2)) # (!\DUT|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(2),
	datad => VCC,
	cin => \DUT|Add1~3\,
	combout => \DUT|Add1~4_combout\,
	cout => \DUT|Add1~5\);

-- Location: LCCOMB_X26_Y8_N10
\DUT|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector47~0_combout\ = (!\DUT|Equal1~6_combout\ & ((\DUT|op_state.WAIT_DELAY_L~q\) # ((!\DUT|Selector45~0_combout\) # (!\DUT|cnt[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_DELAY_L~q\,
	datab => \DUT|cnt[10]~1_combout\,
	datac => \DUT|Selector45~0_combout\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|Selector47~0_combout\);

-- Location: LCCOMB_X26_Y8_N12
\DUT|Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector47~1_combout\ = (\DUT|Add1~4_combout\ & (((\DUT|op_state.WAIT_DELAY_H~q\) # (\DUT|Selector47~0_combout\)) # (!\DUT|lcd_e~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|lcd_e~0_combout\,
	datab => \DUT|op_state.WAIT_DELAY_H~q\,
	datac => \DUT|Add1~4_combout\,
	datad => \DUT|Selector47~0_combout\,
	combout => \DUT|Selector47~1_combout\);

-- Location: LCCOMB_X26_Y8_N2
\DUT|Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector47~2_combout\ = ((\DUT|Selector47~1_combout\) # ((\DUT|cnt[10]~2_combout\ & !\DUT|Selector35~0_combout\))) # (!\DUT|op_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.IDLE~q\,
	datab => \DUT|cnt[10]~2_combout\,
	datac => \DUT|Selector35~0_combout\,
	datad => \DUT|Selector47~1_combout\,
	combout => \DUT|Selector47~2_combout\);

-- Location: FF_X26_Y8_N3
\DUT|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector47~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(2));

-- Location: LCCOMB_X25_Y8_N18
\DUT|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~6_combout\ = (\DUT|cnt\(3) & (\DUT|Add1~5\ & VCC)) # (!\DUT|cnt\(3) & (!\DUT|Add1~5\))
-- \DUT|Add1~7\ = CARRY((!\DUT|cnt\(3) & !\DUT|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(3),
	datad => VCC,
	cin => \DUT|Add1~5\,
	combout => \DUT|Add1~6_combout\,
	cout => \DUT|Add1~7\);

-- Location: LCCOMB_X26_Y8_N16
\DUT|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector45~1_combout\ = ((!\DUT|Equal1~6_combout\ & ((\DUT|op_state.WAIT_DELAY_L~q\) # (!\DUT|Selector38~0_combout\)))) # (!\DUT|Selector45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_DELAY_L~q\,
	datab => \DUT|Selector45~0_combout\,
	datac => \DUT|Selector38~0_combout\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|Selector45~1_combout\);

-- Location: LCCOMB_X26_Y8_N4
\DUT|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector46~0_combout\ = (\DUT|Add1~6_combout\ & \DUT|Selector45~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|Add1~6_combout\,
	datad => \DUT|Selector45~1_combout\,
	combout => \DUT|Selector46~0_combout\);

-- Location: FF_X26_Y8_N5
\DUT|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector46~0_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(3));

-- Location: LCCOMB_X25_Y8_N20
\DUT|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~8_combout\ = (\DUT|cnt\(4) & ((GND) # (!\DUT|Add1~7\))) # (!\DUT|cnt\(4) & (\DUT|Add1~7\ $ (GND)))
-- \DUT|Add1~9\ = CARRY((\DUT|cnt\(4)) # (!\DUT|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(4),
	datad => VCC,
	cin => \DUT|Add1~7\,
	combout => \DUT|Add1~8_combout\,
	cout => \DUT|Add1~9\);

-- Location: LCCOMB_X24_Y8_N18
\DUT|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector44~0_combout\ = (!\DUT|cnt\(20) & (\DUT|Equal1~5_combout\ & (!\DUT|cnt[10]~1_combout\ & \DUT|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(20),
	datab => \DUT|Equal1~5_combout\,
	datac => \DUT|cnt[10]~1_combout\,
	datad => \DUT|Equal1~4_combout\,
	combout => \DUT|Selector44~0_combout\);

-- Location: LCCOMB_X26_Y8_N22
\DUT|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector45~2_combout\ = (\DUT|Selector35~1_combout\ & ((\DUT|Selector44~0_combout\) # ((\DUT|Add1~8_combout\ & \DUT|Selector45~1_combout\)))) # (!\DUT|Selector35~1_combout\ & (\DUT|Add1~8_combout\ & ((\DUT|Selector45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector35~1_combout\,
	datab => \DUT|Add1~8_combout\,
	datac => \DUT|Selector44~0_combout\,
	datad => \DUT|Selector45~1_combout\,
	combout => \DUT|Selector45~2_combout\);

-- Location: FF_X26_Y8_N23
\DUT|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector45~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(4));

-- Location: LCCOMB_X26_Y8_N26
\DUT|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector38~1_combout\ = (!\DUT|Equal1~6_combout\ & ((\DUT|op_state.WAIT_DELAY_L~q\) # ((!\DUT|Selector38~0_combout\) # (!\DUT|Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_DELAY_L~q\,
	datab => \DUT|Selector45~0_combout\,
	datac => \DUT|Selector38~0_combout\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|Selector38~1_combout\);

-- Location: LCCOMB_X25_Y8_N22
\DUT|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~10_combout\ = (\DUT|cnt\(5) & (\DUT|Add1~9\ & VCC)) # (!\DUT|cnt\(5) & (!\DUT|Add1~9\))
-- \DUT|Add1~11\ = CARRY((!\DUT|cnt\(5) & !\DUT|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(5),
	datad => VCC,
	cin => \DUT|Add1~9\,
	combout => \DUT|Add1~10_combout\,
	cout => \DUT|Add1~11\);

-- Location: LCCOMB_X26_Y8_N28
\DUT|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector44~1_combout\ = (\DUT|Selector44~0_combout\ & (((\DUT|Selector38~1_combout\ & \DUT|Add1~10_combout\)) # (!\DUT|Selector35~1_combout\))) # (!\DUT|Selector44~0_combout\ & (((\DUT|Selector38~1_combout\ & \DUT|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector44~0_combout\,
	datab => \DUT|Selector35~1_combout\,
	datac => \DUT|Selector38~1_combout\,
	datad => \DUT|Add1~10_combout\,
	combout => \DUT|Selector44~1_combout\);

-- Location: FF_X26_Y8_N29
\DUT|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector44~1_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(5));

-- Location: LCCOMB_X26_Y8_N24
\DUT|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal1~2_combout\ = (!\DUT|cnt\(4) & (!\DUT|cnt\(2) & (!\DUT|cnt\(3) & !\DUT|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(4),
	datab => \DUT|cnt\(2),
	datac => \DUT|cnt\(3),
	datad => \DUT|cnt\(5),
	combout => \DUT|Equal1~2_combout\);

-- Location: LCCOMB_X24_Y8_N20
\DUT|Selector36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector36~5_combout\ = (!\DUT|op_state.DONE~q\ & (\DUT|op_state.IDLE~q\ & !\DUT|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|op_state.DONE~q\,
	datac => \DUT|op_state.IDLE~q\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|Selector36~5_combout\);

-- Location: LCCOMB_X24_Y7_N2
\DUT|Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector38~2_combout\ = (!\DUT|ptr\(0) & \DUT|op_state.WAIT_HOLD_H~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datac => \DUT|op_state.WAIT_HOLD_H~q\,
	combout => \DUT|Selector38~2_combout\);

-- Location: LCCOMB_X24_Y7_N24
\DUT|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector20~0_combout\ = (!\DUT|ptr\(1) & (\DUT|state.CONFIG~q\ & (\DUT|ptr\(0) $ (!\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|ptr\(1),
	datac => \DUT|ptr\(2),
	datad => \DUT|state.CONFIG~q\,
	combout => \DUT|Selector20~0_combout\);

-- Location: LCCOMB_X24_Y7_N20
\DUT|Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector38~3_combout\ = (\DUT|Selector35~0_combout\ & ((\DUT|Selector38~2_combout\) # ((\DUT|op_state.WAIT_HOLD_L~q\ & !\DUT|Selector20~0_combout\)))) # (!\DUT|Selector35~0_combout\ & (((\DUT|op_state.WAIT_HOLD_L~q\ & !\DUT|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector35~0_combout\,
	datab => \DUT|Selector38~2_combout\,
	datac => \DUT|op_state.WAIT_HOLD_L~q\,
	datad => \DUT|Selector20~0_combout\,
	combout => \DUT|Selector38~3_combout\);

-- Location: LCCOMB_X24_Y8_N0
\DUT|lcd_rs~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|lcd_rs~3_combout\ = (\DUT|op_state.IDLE~q\ & !\DUT|op_state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|op_state.IDLE~q\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|lcd_rs~3_combout\);

-- Location: LCCOMB_X24_Y8_N30
\DUT|Selector39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector39~5_combout\ = ((\DUT|Equal1~6_combout\ & ((\DUT|op_state.WAIT_HOLD_L~q\) # (!\DUT|op_state.WAIT_HOLD_H~q\)))) # (!\DUT|lcd_rs~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_HOLD_H~q\,
	datab => \DUT|lcd_rs~3_combout\,
	datac => \DUT|op_state.WAIT_HOLD_L~q\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|Selector39~5_combout\);

-- Location: LCCOMB_X24_Y7_N30
\DUT|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector39~2_combout\ = (\DUT|cnt[13]~0_combout\ & ((\DUT|ptr\(0)) # ((!\DUT|Mux22~7_combout\) # (!\DUT|state.CONFIG~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|state.CONFIG~q\,
	datac => \DUT|cnt[13]~0_combout\,
	datad => \DUT|Mux22~7_combout\,
	combout => \DUT|Selector39~2_combout\);

-- Location: LCCOMB_X25_Y8_N24
\DUT|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~12_combout\ = (\DUT|cnt\(6) & ((GND) # (!\DUT|Add1~11\))) # (!\DUT|cnt\(6) & (\DUT|Add1~11\ $ (GND)))
-- \DUT|Add1~13\ = CARRY((\DUT|cnt\(6)) # (!\DUT|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(6),
	datad => VCC,
	cin => \DUT|Add1~11\,
	combout => \DUT|Add1~12_combout\,
	cout => \DUT|Add1~13\);

-- Location: LCCOMB_X25_Y8_N10
\DUT|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector43~4_combout\ = (\DUT|Selector35~0_combout\ & (\DUT|Add1~12_combout\ & ((\DUT|Selector36~5_combout\)))) # (!\DUT|Selector35~0_combout\ & ((\DUT|cnt[10]~2_combout\) # ((\DUT|Add1~12_combout\ & \DUT|Selector36~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector35~0_combout\,
	datab => \DUT|Add1~12_combout\,
	datac => \DUT|cnt[10]~2_combout\,
	datad => \DUT|Selector36~5_combout\,
	combout => \DUT|Selector43~4_combout\);

-- Location: FF_X25_Y8_N11
\DUT|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector43~4_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(6));

-- Location: LCCOMB_X25_Y8_N26
\DUT|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~14_combout\ = (\DUT|cnt\(7) & (\DUT|Add1~13\ & VCC)) # (!\DUT|cnt\(7) & (!\DUT|Add1~13\))
-- \DUT|Add1~15\ = CARRY((!\DUT|cnt\(7) & !\DUT|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(7),
	datad => VCC,
	cin => \DUT|Add1~13\,
	combout => \DUT|Add1~14_combout\,
	cout => \DUT|Add1~15\);

-- Location: LCCOMB_X25_Y8_N2
\DUT|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector42~3_combout\ = (\DUT|cnt[10]~2_combout\ & (\DUT|ptr\(2) & (\DUT|state.CONFIG~q\))) # (!\DUT|cnt[10]~2_combout\ & (((\DUT|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|state.CONFIG~q\,
	datac => \DUT|Add1~14_combout\,
	datad => \DUT|cnt[10]~2_combout\,
	combout => \DUT|Selector42~3_combout\);

-- Location: LCCOMB_X25_Y8_N4
\DUT|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector42~2_combout\ = (\DUT|Selector35~1_combout\ & (\DUT|Selector42~3_combout\ & ((!\DUT|Selector39~5_combout\)))) # (!\DUT|Selector35~1_combout\ & ((\DUT|cnt[13]~0_combout\) # ((\DUT|Selector42~3_combout\ & !\DUT|Selector39~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector35~1_combout\,
	datab => \DUT|Selector42~3_combout\,
	datac => \DUT|cnt[13]~0_combout\,
	datad => \DUT|Selector39~5_combout\,
	combout => \DUT|Selector42~2_combout\);

-- Location: FF_X25_Y8_N5
\DUT|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector42~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(7));

-- Location: LCCOMB_X25_Y8_N28
\DUT|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~16_combout\ = (\DUT|cnt\(8) & ((GND) # (!\DUT|Add1~15\))) # (!\DUT|cnt\(8) & (\DUT|Add1~15\ $ (GND)))
-- \DUT|Add1~17\ = CARRY((\DUT|cnt\(8)) # (!\DUT|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(8),
	datad => VCC,
	cin => \DUT|Add1~15\,
	combout => \DUT|Add1~16_combout\,
	cout => \DUT|Add1~17\);

-- Location: LCCOMB_X24_Y7_N12
\DUT|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector41~0_combout\ = (\DUT|cnt[10]~2_combout\ & (((\DUT|state.CONFIG~q\ & \DUT|ptr\(2))))) # (!\DUT|cnt[10]~2_combout\ & (\DUT|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Add1~16_combout\,
	datab => \DUT|state.CONFIG~q\,
	datac => \DUT|ptr\(2),
	datad => \DUT|cnt[10]~2_combout\,
	combout => \DUT|Selector41~0_combout\);

-- Location: LCCOMB_X24_Y7_N16
\DUT|Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector41~1_combout\ = (\DUT|Selector39~2_combout\) # ((!\DUT|Selector39~5_combout\ & \DUT|Selector41~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector39~2_combout\,
	datac => \DUT|Selector39~5_combout\,
	datad => \DUT|Selector41~0_combout\,
	combout => \DUT|Selector41~1_combout\);

-- Location: FF_X24_Y7_N17
\DUT|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector41~1_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(8));

-- Location: LCCOMB_X25_Y8_N30
\DUT|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~18_combout\ = (\DUT|cnt\(9) & (\DUT|Add1~17\ & VCC)) # (!\DUT|cnt\(9) & (!\DUT|Add1~17\))
-- \DUT|Add1~19\ = CARRY((!\DUT|cnt\(9) & !\DUT|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(9),
	datad => VCC,
	cin => \DUT|Add1~17\,
	combout => \DUT|Add1~18_combout\,
	cout => \DUT|Add1~19\);

-- Location: LCCOMB_X24_Y7_N6
\DUT|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector40~0_combout\ = (\DUT|cnt[10]~2_combout\ & (\DUT|Selector35~0_combout\ & ((!\DUT|ptr\(0))))) # (!\DUT|cnt[10]~2_combout\ & (((\DUT|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector35~0_combout\,
	datab => \DUT|Add1~18_combout\,
	datac => \DUT|ptr\(0),
	datad => \DUT|cnt[10]~2_combout\,
	combout => \DUT|Selector40~0_combout\);

-- Location: LCCOMB_X24_Y7_N26
\DUT|Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector40~1_combout\ = (\DUT|Selector39~2_combout\) # ((!\DUT|Selector39~5_combout\ & \DUT|Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector39~5_combout\,
	datac => \DUT|Selector39~2_combout\,
	datad => \DUT|Selector40~0_combout\,
	combout => \DUT|Selector40~1_combout\);

-- Location: FF_X24_Y7_N27
\DUT|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector40~1_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(9));

-- Location: LCCOMB_X25_Y7_N0
\DUT|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~20_combout\ = (\DUT|cnt\(10) & ((GND) # (!\DUT|Add1~19\))) # (!\DUT|cnt\(10) & (\DUT|Add1~19\ $ (GND)))
-- \DUT|Add1~21\ = CARRY((\DUT|cnt\(10)) # (!\DUT|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(10),
	datad => VCC,
	cin => \DUT|Add1~19\,
	combout => \DUT|Add1~20_combout\,
	cout => \DUT|Add1~21\);

-- Location: LCCOMB_X24_Y7_N28
\DUT|Selector39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector39~3_combout\ = (\DUT|cnt[10]~2_combout\ & (\DUT|Selector35~0_combout\ & ((!\DUT|ptr\(0))))) # (!\DUT|cnt[10]~2_combout\ & (((\DUT|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector35~0_combout\,
	datab => \DUT|Add1~20_combout\,
	datac => \DUT|ptr\(0),
	datad => \DUT|cnt[10]~2_combout\,
	combout => \DUT|Selector39~3_combout\);

-- Location: LCCOMB_X24_Y7_N8
\DUT|Selector39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector39~4_combout\ = (\DUT|Selector39~2_combout\) # ((!\DUT|Selector39~5_combout\ & \DUT|Selector39~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector39~5_combout\,
	datac => \DUT|Selector39~2_combout\,
	datad => \DUT|Selector39~3_combout\,
	combout => \DUT|Selector39~4_combout\);

-- Location: FF_X24_Y7_N9
\DUT|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector39~4_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(10));

-- Location: LCCOMB_X25_Y7_N2
\DUT|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~22_combout\ = (\DUT|cnt\(11) & (\DUT|Add1~21\ & VCC)) # (!\DUT|cnt\(11) & (!\DUT|Add1~21\))
-- \DUT|Add1~23\ = CARRY((!\DUT|cnt\(11) & !\DUT|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(11),
	datad => VCC,
	cin => \DUT|Add1~21\,
	combout => \DUT|Add1~22_combout\,
	cout => \DUT|Add1~23\);

-- Location: LCCOMB_X26_Y8_N30
\DUT|Selector38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector38~4_combout\ = (\DUT|Equal1~6_combout\ & ((\DUT|Selector38~3_combout\) # ((\DUT|Selector38~1_combout\ & \DUT|Add1~22_combout\)))) # (!\DUT|Equal1~6_combout\ & (((\DUT|Selector38~1_combout\ & \DUT|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Equal1~6_combout\,
	datab => \DUT|Selector38~3_combout\,
	datac => \DUT|Selector38~1_combout\,
	datad => \DUT|Add1~22_combout\,
	combout => \DUT|Selector38~4_combout\);

-- Location: FF_X26_Y8_N31
\DUT|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector38~4_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(11));

-- Location: LCCOMB_X25_Y7_N4
\DUT|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~24_combout\ = (\DUT|cnt\(12) & ((GND) # (!\DUT|Add1~23\))) # (!\DUT|cnt\(12) & (\DUT|Add1~23\ $ (GND)))
-- \DUT|Add1~25\ = CARRY((\DUT|cnt\(12)) # (!\DUT|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(12),
	datad => VCC,
	cin => \DUT|Add1~23\,
	combout => \DUT|Add1~24_combout\,
	cout => \DUT|Add1~25\);

-- Location: LCCOMB_X25_Y7_N30
\DUT|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector37~2_combout\ = (!\DUT|Equal1~6_combout\ & (\DUT|op_state.IDLE~q\ & (\DUT|Add1~24_combout\ & !\DUT|op_state.DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Equal1~6_combout\,
	datab => \DUT|op_state.IDLE~q\,
	datac => \DUT|Add1~24_combout\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|Selector37~2_combout\);

-- Location: FF_X25_Y7_N31
\DUT|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector37~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(12));

-- Location: LCCOMB_X25_Y7_N6
\DUT|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~26_combout\ = (\DUT|cnt\(13) & (\DUT|Add1~25\ & VCC)) # (!\DUT|cnt\(13) & (!\DUT|Add1~25\))
-- \DUT|Add1~27\ = CARRY((!\DUT|cnt\(13) & !\DUT|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(13),
	datad => VCC,
	cin => \DUT|Add1~25\,
	combout => \DUT|Add1~26_combout\,
	cout => \DUT|Add1~27\);

-- Location: LCCOMB_X24_Y8_N2
\DUT|Selector36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector36~4_combout\ = (\DUT|cnt[13]~0_combout\ & ((\DUT|Selector35~1_combout\) # ((\DUT|Add1~26_combout\ & \DUT|Selector36~5_combout\)))) # (!\DUT|cnt[13]~0_combout\ & (((\DUT|Add1~26_combout\ & \DUT|Selector36~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt[13]~0_combout\,
	datab => \DUT|Selector35~1_combout\,
	datac => \DUT|Add1~26_combout\,
	datad => \DUT|Selector36~5_combout\,
	combout => \DUT|Selector36~4_combout\);

-- Location: FF_X24_Y8_N3
\DUT|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector36~4_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(13));

-- Location: LCCOMB_X25_Y7_N8
\DUT|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~28_combout\ = (\DUT|cnt\(14) & ((GND) # (!\DUT|Add1~27\))) # (!\DUT|cnt\(14) & (\DUT|Add1~27\ $ (GND)))
-- \DUT|Add1~29\ = CARRY((\DUT|cnt\(14)) # (!\DUT|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(14),
	datad => VCC,
	cin => \DUT|Add1~27\,
	combout => \DUT|Add1~28_combout\,
	cout => \DUT|Add1~29\);

-- Location: LCCOMB_X24_Y8_N16
\DUT|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector35~2_combout\ = (\DUT|Selector36~5_combout\ & ((\DUT|Add1~28_combout\) # ((\DUT|Selector35~1_combout\ & \DUT|cnt[10]~2_combout\)))) # (!\DUT|Selector36~5_combout\ & (\DUT|Selector35~1_combout\ & (\DUT|cnt[10]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector36~5_combout\,
	datab => \DUT|Selector35~1_combout\,
	datac => \DUT|cnt[10]~2_combout\,
	datad => \DUT|Add1~28_combout\,
	combout => \DUT|Selector35~2_combout\);

-- Location: FF_X24_Y8_N17
\DUT|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector35~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(14));

-- Location: LCCOMB_X25_Y7_N10
\DUT|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~30_combout\ = (\DUT|cnt\(15) & (\DUT|Add1~29\ & VCC)) # (!\DUT|cnt\(15) & (!\DUT|Add1~29\))
-- \DUT|Add1~31\ = CARRY((!\DUT|cnt\(15) & !\DUT|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(15),
	datad => VCC,
	cin => \DUT|Add1~29\,
	combout => \DUT|Add1~30_combout\,
	cout => \DUT|Add1~31\);

-- Location: LCCOMB_X23_Y8_N14
\DUT|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector34~0_combout\ = (!\DUT|ptr\(0) & (!\DUT|ptr\(2) & (!\DUT|ptr\(1) & \DUT|state.CONFIG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|ptr\(2),
	datac => \DUT|ptr\(1),
	datad => \DUT|state.CONFIG~q\,
	combout => \DUT|Selector34~0_combout\);

-- Location: LCCOMB_X24_Y8_N10
\DUT|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector34~1_combout\ = (\DUT|cnt[13]~0_combout\ & ((\DUT|Selector34~0_combout\) # ((\DUT|Selector36~5_combout\ & \DUT|Add1~30_combout\)))) # (!\DUT|cnt[13]~0_combout\ & (\DUT|Selector36~5_combout\ & (\DUT|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt[13]~0_combout\,
	datab => \DUT|Selector36~5_combout\,
	datac => \DUT|Add1~30_combout\,
	datad => \DUT|Selector34~0_combout\,
	combout => \DUT|Selector34~1_combout\);

-- Location: FF_X24_Y8_N11
\DUT|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector34~1_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(15));

-- Location: LCCOMB_X24_Y8_N4
\DUT|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal1~3_combout\ = (!\DUT|cnt\(15) & (!\DUT|cnt\(14) & (!\DUT|cnt\(1) & !\DUT|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(15),
	datab => \DUT|cnt\(14),
	datac => \DUT|cnt\(1),
	datad => \DUT|cnt\(0),
	combout => \DUT|Equal1~3_combout\);

-- Location: LCCOMB_X24_Y8_N14
\DUT|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal1~1_combout\ = (!\DUT|cnt\(7) & (!\DUT|cnt\(6) & (!\DUT|cnt\(8) & !\DUT|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(7),
	datab => \DUT|cnt\(6),
	datac => \DUT|cnt\(8),
	datad => \DUT|cnt\(9),
	combout => \DUT|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y8_N24
\DUT|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal1~0_combout\ = (!\DUT|cnt\(11) & (!\DUT|cnt\(13) & (!\DUT|cnt\(10) & !\DUT|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(11),
	datab => \DUT|cnt\(13),
	datac => \DUT|cnt\(10),
	datad => \DUT|cnt\(12),
	combout => \DUT|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\DUT|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal1~4_combout\ = (\DUT|Equal1~2_combout\ & (\DUT|Equal1~3_combout\ & (\DUT|Equal1~1_combout\ & \DUT|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Equal1~2_combout\,
	datab => \DUT|Equal1~3_combout\,
	datac => \DUT|Equal1~1_combout\,
	datad => \DUT|Equal1~0_combout\,
	combout => \DUT|Equal1~4_combout\);

-- Location: LCCOMB_X24_Y8_N12
\DUT|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal1~6_combout\ = (!\DUT|cnt\(20) & (\DUT|Equal1~5_combout\ & \DUT|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(20),
	datab => \DUT|Equal1~5_combout\,
	datad => \DUT|Equal1~4_combout\,
	combout => \DUT|Equal1~6_combout\);

-- Location: LCCOMB_X25_Y7_N12
\DUT|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~32_combout\ = (\DUT|cnt\(16) & ((GND) # (!\DUT|Add1~31\))) # (!\DUT|cnt\(16) & (\DUT|Add1~31\ $ (GND)))
-- \DUT|Add1~33\ = CARRY((\DUT|cnt\(16)) # (!\DUT|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(16),
	datad => VCC,
	cin => \DUT|Add1~31\,
	combout => \DUT|Add1~32_combout\,
	cout => \DUT|Add1~33\);

-- Location: LCCOMB_X25_Y7_N28
\DUT|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector33~2_combout\ = (!\DUT|op_state.DONE~q\ & (\DUT|op_state.IDLE~q\ & (!\DUT|Equal1~6_combout\ & \DUT|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.DONE~q\,
	datab => \DUT|op_state.IDLE~q\,
	datac => \DUT|Equal1~6_combout\,
	datad => \DUT|Add1~32_combout\,
	combout => \DUT|Selector33~2_combout\);

-- Location: FF_X25_Y7_N29
\DUT|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector33~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(16));

-- Location: LCCOMB_X25_Y7_N14
\DUT|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~34_combout\ = (\DUT|cnt\(17) & (\DUT|Add1~33\ & VCC)) # (!\DUT|cnt\(17) & (!\DUT|Add1~33\))
-- \DUT|Add1~35\ = CARRY((!\DUT|cnt\(17) & !\DUT|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(17),
	datad => VCC,
	cin => \DUT|Add1~33\,
	combout => \DUT|Add1~34_combout\,
	cout => \DUT|Add1~35\);

-- Location: LCCOMB_X25_Y7_N16
\DUT|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~36_combout\ = (\DUT|cnt\(18) & ((GND) # (!\DUT|Add1~35\))) # (!\DUT|cnt\(18) & (\DUT|Add1~35\ $ (GND)))
-- \DUT|Add1~37\ = CARRY((\DUT|cnt\(18)) # (!\DUT|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(18),
	datad => VCC,
	cin => \DUT|Add1~35\,
	combout => \DUT|Add1~36_combout\,
	cout => \DUT|Add1~37\);

-- Location: LCCOMB_X25_Y7_N26
\DUT|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector31~0_combout\ = (\DUT|cnt[10]~2_combout\ & ((\DUT|Selector35~1_combout\) # ((\DUT|Selector36~5_combout\ & \DUT|Add1~36_combout\)))) # (!\DUT|cnt[10]~2_combout\ & (((\DUT|Selector36~5_combout\ & \DUT|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt[10]~2_combout\,
	datab => \DUT|Selector35~1_combout\,
	datac => \DUT|Selector36~5_combout\,
	datad => \DUT|Add1~36_combout\,
	combout => \DUT|Selector31~0_combout\);

-- Location: FF_X25_Y7_N27
\DUT|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector31~0_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(18));

-- Location: LCCOMB_X25_Y7_N18
\DUT|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~38_combout\ = (\DUT|cnt\(19) & (\DUT|Add1~37\ & VCC)) # (!\DUT|cnt\(19) & (!\DUT|Add1~37\))
-- \DUT|Add1~39\ = CARRY((!\DUT|cnt\(19) & !\DUT|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT|cnt\(19),
	datad => VCC,
	cin => \DUT|Add1~37\,
	combout => \DUT|Add1~38_combout\,
	cout => \DUT|Add1~39\);

-- Location: LCCOMB_X25_Y7_N24
\DUT|Selector30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector30~2_combout\ = (!\DUT|op_state.DONE~q\ & (\DUT|op_state.IDLE~q\ & (!\DUT|Equal1~6_combout\ & \DUT|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.DONE~q\,
	datab => \DUT|op_state.IDLE~q\,
	datac => \DUT|Equal1~6_combout\,
	datad => \DUT|Add1~38_combout\,
	combout => \DUT|Selector30~2_combout\);

-- Location: FF_X25_Y7_N25
\DUT|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector30~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(19));

-- Location: LCCOMB_X25_Y7_N20
\DUT|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Add1~40_combout\ = \DUT|Add1~39\ $ (\DUT|cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DUT|cnt\(20),
	cin => \DUT|Add1~39\,
	combout => \DUT|Add1~40_combout\);

-- Location: LCCOMB_X25_Y7_N22
\DUT|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector29~2_combout\ = (!\DUT|op_state.DONE~q\ & (\DUT|op_state.IDLE~q\ & (!\DUT|Equal1~6_combout\ & \DUT|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.DONE~q\,
	datab => \DUT|op_state.IDLE~q\,
	datac => \DUT|Equal1~6_combout\,
	datad => \DUT|Add1~40_combout\,
	combout => \DUT|Selector29~2_combout\);

-- Location: FF_X25_Y7_N23
\DUT|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector29~2_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(20));

-- Location: LCCOMB_X24_Y8_N26
\DUT|cnt[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|cnt[13]~0_combout\ = (!\DUT|cnt\(20) & (\DUT|op_state.WAIT_HOLD_L~q\ & (\DUT|Equal1~5_combout\ & \DUT|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(20),
	datab => \DUT|op_state.WAIT_HOLD_L~q\,
	datac => \DUT|Equal1~5_combout\,
	datad => \DUT|Equal1~4_combout\,
	combout => \DUT|cnt[13]~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\DUT|Selector32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector32~5_combout\ = (!\DUT|ptr\(0) & (!\DUT|ptr\(2) & (\DUT|cnt[13]~0_combout\ & !\DUT|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|ptr\(2),
	datac => \DUT|cnt[13]~0_combout\,
	datad => \DUT|ptr\(1),
	combout => \DUT|Selector32~5_combout\);

-- Location: LCCOMB_X24_Y7_N4
\DUT|Selector32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector32~3_combout\ = (\DUT|ptr\(0) & (\DUT|ptr\(2) & (!\DUT|Selector39~5_combout\ & \DUT|cnt[10]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|ptr\(2),
	datac => \DUT|Selector39~5_combout\,
	datad => \DUT|cnt[10]~2_combout\,
	combout => \DUT|Selector32~3_combout\);

-- Location: LCCOMB_X24_Y7_N18
\DUT|Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector32~2_combout\ = (!\DUT|Selector39~5_combout\ & (\DUT|Add1~34_combout\ & !\DUT|cnt[10]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector39~5_combout\,
	datac => \DUT|Add1~34_combout\,
	datad => \DUT|cnt[10]~2_combout\,
	combout => \DUT|Selector32~2_combout\);

-- Location: LCCOMB_X24_Y7_N10
\DUT|Selector32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector32~4_combout\ = (\DUT|Selector32~2_combout\) # ((\DUT|state.CONFIG~q\ & ((\DUT|Selector32~5_combout\) # (\DUT|Selector32~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.CONFIG~q\,
	datab => \DUT|Selector32~5_combout\,
	datac => \DUT|Selector32~3_combout\,
	datad => \DUT|Selector32~2_combout\,
	combout => \DUT|Selector32~4_combout\);

-- Location: FF_X24_Y7_N11
\DUT|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector32~4_combout\,
	ena => \DUT|state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt\(17));

-- Location: LCCOMB_X24_Y7_N0
\DUT|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Equal1~5_combout\ = (!\DUT|cnt\(17) & (!\DUT|cnt\(16) & (!\DUT|cnt\(19) & !\DUT|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt\(17),
	datab => \DUT|cnt\(16),
	datac => \DUT|cnt\(19),
	datad => \DUT|cnt\(18),
	combout => \DUT|Equal1~5_combout\);

-- Location: LCCOMB_X25_Y6_N14
\DUT|op_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~13_combout\ = ((\DUT|Equal1~5_combout\ & (!\DUT|cnt\(20) & \DUT|Equal1~4_combout\))) # (!\DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Equal1~5_combout\,
	datab => \DUT|state.RESET~q\,
	datac => \DUT|cnt\(20),
	datad => \DUT|Equal1~4_combout\,
	combout => \DUT|op_state~13_combout\);

-- Location: FF_X25_Y6_N31
\DUT|op_state.WAIT_HOLD_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~21_combout\,
	ena => \DUT|op_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.WAIT_HOLD_H~q\);

-- Location: LCCOMB_X25_Y6_N24
\DUT|op_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~15_combout\ = (\DUT|op_state.WAIT_HOLD_H~q\ & \DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|op_state.WAIT_HOLD_H~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|op_state~15_combout\);

-- Location: FF_X25_Y6_N25
\DUT|op_state.WAIT_DELAY_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~15_combout\,
	ena => \DUT|op_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.WAIT_DELAY_H~q\);

-- Location: LCCOMB_X25_Y6_N12
\DUT|op_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~19_combout\ = (\DUT|op_state.WAIT_DELAY_H~q\ & \DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|op_state.WAIT_DELAY_H~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|op_state~19_combout\);

-- Location: FF_X25_Y6_N13
\DUT|op_state.WAIT_SETUP_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~19_combout\,
	ena => \DUT|op_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.WAIT_SETUP_L~q\);

-- Location: LCCOMB_X25_Y6_N18
\DUT|op_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~14_combout\ = (\DUT|op_state.WAIT_SETUP_L~q\ & \DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_SETUP_L~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|op_state~14_combout\);

-- Location: FF_X25_Y6_N19
\DUT|op_state.ENABLE_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~14_combout\,
	ena => \DUT|op_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.ENABLE_L~q\);

-- Location: LCCOMB_X25_Y6_N22
\DUT|op_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~20_combout\ = (\DUT|op_state.ENABLE_L~q\ & \DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|op_state.ENABLE_L~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|op_state~20_combout\);

-- Location: FF_X25_Y6_N23
\DUT|op_state.WAIT_HOLD_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~20_combout\,
	ena => \DUT|op_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.WAIT_HOLD_L~q\);

-- Location: LCCOMB_X25_Y6_N2
\DUT|op_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~18_combout\ = (\DUT|op_state.WAIT_HOLD_L~q\ & \DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|op_state.WAIT_HOLD_L~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|op_state~18_combout\);

-- Location: FF_X25_Y6_N3
\DUT|op_state.WAIT_DELAY_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~18_combout\,
	ena => \DUT|op_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.WAIT_DELAY_L~q\);

-- Location: LCCOMB_X26_Y8_N20
\DUT|op_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~17_combout\ = (\DUT|state.RESET~q\ & (\DUT|op_state.WAIT_DELAY_L~q\ & \DUT|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RESET~q\,
	datac => \DUT|op_state.WAIT_DELAY_L~q\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|op_state~17_combout\);

-- Location: FF_X26_Y8_N21
\DUT|op_state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.DONE~q\);

-- Location: LCCOMB_X24_Y8_N22
\DUT|op_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~16_combout\ = (\DUT|state.RESET~q\ & !\DUT|op_state.DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RESET~q\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|op_state~16_combout\);

-- Location: FF_X24_Y8_N23
\DUT|op_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.IDLE~q\);

-- Location: LCCOMB_X24_Y8_N28
\DUT|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector21~0_combout\ = ((\DUT|op_state.WAIT_SETUP_H~q\ & !\DUT|Equal1~6_combout\)) # (!\DUT|op_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.IDLE~q\,
	datac => \DUT|op_state.WAIT_SETUP_H~q\,
	datad => \DUT|Equal1~6_combout\,
	combout => \DUT|Selector21~0_combout\);

-- Location: FF_X24_Y8_N29
\DUT|op_state.WAIT_SETUP_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|Selector21~0_combout\,
	sclr => \DUT|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.WAIT_SETUP_H~q\);

-- Location: LCCOMB_X25_Y6_N8
\DUT|op_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|op_state~12_combout\ = (\DUT|op_state.WAIT_SETUP_H~q\ & \DUT|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|op_state.WAIT_SETUP_H~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|op_state~12_combout\);

-- Location: FF_X25_Y6_N9
\DUT|op_state.ENABLE_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \DUT|op_state~12_combout\,
	ena => \DUT|op_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|op_state.ENABLE_H~q\);

-- Location: LCCOMB_X25_Y6_N16
\DUT|lcd_e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|lcd_e~0_combout\ = (!\DUT|op_state.ENABLE_H~q\ & !\DUT|op_state.ENABLE_L~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|op_state.ENABLE_H~q\,
	datad => \DUT|op_state.ENABLE_L~q\,
	combout => \DUT|lcd_e~0_combout\);

-- Location: LCCOMB_X26_Y7_N28
\DUT|lcd_rs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|lcd_rs~2_combout\ = (!\DUT|op_state.WAIT_DELAY_H~q\ & ((\DUT|state.WRITE_LINE2~q\) # ((\DUT|state.WRITE_LINE1~q\) # (!\DUT|state.RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_DELAY_H~q\,
	datab => \DUT|state.WRITE_LINE2~q\,
	datac => \DUT|state.WRITE_LINE1~q\,
	datad => \DUT|state.RESET~q\,
	combout => \DUT|lcd_rs~2_combout\);

-- Location: LCCOMB_X26_Y7_N10
\DUT|lcd_rs~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|lcd_rs~4_combout\ = (!\DUT|op_state.WAIT_DELAY_L~q\ & (\DUT|lcd_rs~2_combout\ & (\DUT|op_state.IDLE~q\ & !\DUT|op_state.DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|op_state.WAIT_DELAY_L~q\,
	datab => \DUT|lcd_rs~2_combout\,
	datac => \DUT|op_state.IDLE~q\,
	datad => \DUT|op_state.DONE~q\,
	combout => \DUT|lcd_rs~4_combout\);

-- Location: LCCOMB_X19_Y16_N10
\CLK10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~0_combout\ = \CLK10|contador\(0) $ (VCC)
-- \CLK10|Add0~1\ = CARRY(\CLK10|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(0),
	datad => VCC,
	combout => \CLK10|Add0~0_combout\,
	cout => \CLK10|Add0~1\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G3
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X19_Y16_N11
\CLK10|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(0));

-- Location: LCCOMB_X19_Y16_N12
\CLK10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~2_combout\ = (\CLK10|contador\(1) & (!\CLK10|Add0~1\)) # (!\CLK10|contador\(1) & ((\CLK10|Add0~1\) # (GND)))
-- \CLK10|Add0~3\ = CARRY((!\CLK10|Add0~1\) # (!\CLK10|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(1),
	datad => VCC,
	cin => \CLK10|Add0~1\,
	combout => \CLK10|Add0~2_combout\,
	cout => \CLK10|Add0~3\);

-- Location: FF_X19_Y16_N13
\CLK10|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(1));

-- Location: LCCOMB_X19_Y16_N14
\CLK10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~4_combout\ = (\CLK10|contador\(2) & (\CLK10|Add0~3\ $ (GND))) # (!\CLK10|contador\(2) & (!\CLK10|Add0~3\ & VCC))
-- \CLK10|Add0~5\ = CARRY((\CLK10|contador\(2) & !\CLK10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(2),
	datad => VCC,
	cin => \CLK10|Add0~3\,
	combout => \CLK10|Add0~4_combout\,
	cout => \CLK10|Add0~5\);

-- Location: FF_X19_Y16_N15
\CLK10|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(2));

-- Location: LCCOMB_X19_Y16_N16
\CLK10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~6_combout\ = (\CLK10|contador\(3) & (!\CLK10|Add0~5\)) # (!\CLK10|contador\(3) & ((\CLK10|Add0~5\) # (GND)))
-- \CLK10|Add0~7\ = CARRY((!\CLK10|Add0~5\) # (!\CLK10|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(3),
	datad => VCC,
	cin => \CLK10|Add0~5\,
	combout => \CLK10|Add0~6_combout\,
	cout => \CLK10|Add0~7\);

-- Location: FF_X19_Y16_N17
\CLK10|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(3));

-- Location: LCCOMB_X19_Y16_N18
\CLK10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~8_combout\ = (\CLK10|contador\(4) & (\CLK10|Add0~7\ $ (GND))) # (!\CLK10|contador\(4) & (!\CLK10|Add0~7\ & VCC))
-- \CLK10|Add0~9\ = CARRY((\CLK10|contador\(4) & !\CLK10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(4),
	datad => VCC,
	cin => \CLK10|Add0~7\,
	combout => \CLK10|Add0~8_combout\,
	cout => \CLK10|Add0~9\);

-- Location: FF_X19_Y16_N19
\CLK10|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(4));

-- Location: LCCOMB_X19_Y16_N8
\CLK10|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Equal0~6_combout\ = (\CLK10|contador\(3) & (\CLK10|contador\(2) & \CLK10|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(3),
	datac => \CLK10|contador\(2),
	datad => \CLK10|contador\(4),
	combout => \CLK10|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y16_N20
\CLK10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~10_combout\ = (\CLK10|contador\(5) & (!\CLK10|Add0~9\)) # (!\CLK10|contador\(5) & ((\CLK10|Add0~9\) # (GND)))
-- \CLK10|Add0~11\ = CARRY((!\CLK10|Add0~9\) # (!\CLK10|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(5),
	datad => VCC,
	cin => \CLK10|Add0~9\,
	combout => \CLK10|Add0~10_combout\,
	cout => \CLK10|Add0~11\);

-- Location: FF_X19_Y16_N21
\CLK10|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(5));

-- Location: LCCOMB_X19_Y16_N22
\CLK10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~12_combout\ = (\CLK10|contador\(6) & (\CLK10|Add0~11\ $ (GND))) # (!\CLK10|contador\(6) & (!\CLK10|Add0~11\ & VCC))
-- \CLK10|Add0~13\ = CARRY((\CLK10|contador\(6) & !\CLK10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(6),
	datad => VCC,
	cin => \CLK10|Add0~11\,
	combout => \CLK10|Add0~12_combout\,
	cout => \CLK10|Add0~13\);

-- Location: LCCOMB_X19_Y16_N0
\CLK10|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~7_combout\ = (\CLK10|Add0~12_combout\ & (((!\CLK10|Equal0~4_combout\) # (!\CLK10|Equal0~6_combout\)) # (!\CLK10|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~5_combout\,
	datab => \CLK10|Equal0~6_combout\,
	datac => \CLK10|Add0~12_combout\,
	datad => \CLK10|Equal0~4_combout\,
	combout => \CLK10|contador~7_combout\);

-- Location: FF_X19_Y16_N1
\CLK10|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(6));

-- Location: LCCOMB_X19_Y16_N24
\CLK10|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~14_combout\ = (\CLK10|contador\(7) & (!\CLK10|Add0~13\)) # (!\CLK10|contador\(7) & ((\CLK10|Add0~13\) # (GND)))
-- \CLK10|Add0~15\ = CARRY((!\CLK10|Add0~13\) # (!\CLK10|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(7),
	datad => VCC,
	cin => \CLK10|Add0~13\,
	combout => \CLK10|Add0~14_combout\,
	cout => \CLK10|Add0~15\);

-- Location: FF_X19_Y16_N25
\CLK10|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(7));

-- Location: LCCOMB_X19_Y16_N26
\CLK10|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~16_combout\ = (\CLK10|contador\(8) & (\CLK10|Add0~15\ $ (GND))) # (!\CLK10|contador\(8) & (!\CLK10|Add0~15\ & VCC))
-- \CLK10|Add0~17\ = CARRY((\CLK10|contador\(8) & !\CLK10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(8),
	datad => VCC,
	cin => \CLK10|Add0~15\,
	combout => \CLK10|Add0~16_combout\,
	cout => \CLK10|Add0~17\);

-- Location: LCCOMB_X19_Y16_N2
\CLK10|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~6_combout\ = (\CLK10|Add0~16_combout\ & (((!\CLK10|Equal0~4_combout\) # (!\CLK10|Equal0~6_combout\)) # (!\CLK10|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~5_combout\,
	datab => \CLK10|Equal0~6_combout\,
	datac => \CLK10|Add0~16_combout\,
	datad => \CLK10|Equal0~4_combout\,
	combout => \CLK10|contador~6_combout\);

-- Location: FF_X19_Y16_N3
\CLK10|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(8));

-- Location: LCCOMB_X19_Y16_N6
\CLK10|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Equal0~5_combout\ = (!\CLK10|contador\(6) & (\CLK10|contador\(8) & (!\CLK10|contador\(7) & \CLK10|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(6),
	datab => \CLK10|contador\(8),
	datac => \CLK10|contador\(7),
	datad => \CLK10|contador\(5),
	combout => \CLK10|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y16_N28
\CLK10|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~18_combout\ = (\CLK10|contador\(9) & (!\CLK10|Add0~17\)) # (!\CLK10|contador\(9) & ((\CLK10|Add0~17\) # (GND)))
-- \CLK10|Add0~19\ = CARRY((!\CLK10|Add0~17\) # (!\CLK10|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(9),
	datad => VCC,
	cin => \CLK10|Add0~17\,
	combout => \CLK10|Add0~18_combout\,
	cout => \CLK10|Add0~19\);

-- Location: LCCOMB_X19_Y16_N4
\CLK10|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~5_combout\ = (\CLK10|Add0~18_combout\ & (((!\CLK10|Equal0~4_combout\) # (!\CLK10|Equal0~6_combout\)) # (!\CLK10|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~5_combout\,
	datab => \CLK10|Add0~18_combout\,
	datac => \CLK10|Equal0~6_combout\,
	datad => \CLK10|Equal0~4_combout\,
	combout => \CLK10|contador~5_combout\);

-- Location: FF_X19_Y16_N5
\CLK10|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(9));

-- Location: LCCOMB_X19_Y16_N30
\CLK10|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~20_combout\ = (\CLK10|contador\(10) & (\CLK10|Add0~19\ $ (GND))) # (!\CLK10|contador\(10) & (!\CLK10|Add0~19\ & VCC))
-- \CLK10|Add0~21\ = CARRY((\CLK10|contador\(10) & !\CLK10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(10),
	datad => VCC,
	cin => \CLK10|Add0~19\,
	combout => \CLK10|Add0~20_combout\,
	cout => \CLK10|Add0~21\);

-- Location: FF_X19_Y16_N31
\CLK10|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(10));

-- Location: LCCOMB_X19_Y15_N0
\CLK10|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~22_combout\ = (\CLK10|contador\(11) & (!\CLK10|Add0~21\)) # (!\CLK10|contador\(11) & ((\CLK10|Add0~21\) # (GND)))
-- \CLK10|Add0~23\ = CARRY((!\CLK10|Add0~21\) # (!\CLK10|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(11),
	datad => VCC,
	cin => \CLK10|Add0~21\,
	combout => \CLK10|Add0~22_combout\,
	cout => \CLK10|Add0~23\);

-- Location: LCCOMB_X19_Y15_N30
\CLK10|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~4_combout\ = (\CLK10|Add0~22_combout\ & (((!\CLK10|Equal0~5_combout\) # (!\CLK10|Equal0~4_combout\)) # (!\CLK10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~6_combout\,
	datab => \CLK10|Add0~22_combout\,
	datac => \CLK10|Equal0~4_combout\,
	datad => \CLK10|Equal0~5_combout\,
	combout => \CLK10|contador~4_combout\);

-- Location: FF_X19_Y15_N31
\CLK10|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(11));

-- Location: LCCOMB_X19_Y15_N2
\CLK10|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~24_combout\ = (\CLK10|contador\(12) & (\CLK10|Add0~23\ $ (GND))) # (!\CLK10|contador\(12) & (!\CLK10|Add0~23\ & VCC))
-- \CLK10|Add0~25\ = CARRY((\CLK10|contador\(12) & !\CLK10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(12),
	datad => VCC,
	cin => \CLK10|Add0~23\,
	combout => \CLK10|Add0~24_combout\,
	cout => \CLK10|Add0~25\);

-- Location: FF_X19_Y15_N3
\CLK10|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~24_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(12));

-- Location: LCCOMB_X19_Y15_N4
\CLK10|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~26_combout\ = (\CLK10|contador\(13) & (!\CLK10|Add0~25\)) # (!\CLK10|contador\(13) & ((\CLK10|Add0~25\) # (GND)))
-- \CLK10|Add0~27\ = CARRY((!\CLK10|Add0~25\) # (!\CLK10|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(13),
	datad => VCC,
	cin => \CLK10|Add0~25\,
	combout => \CLK10|Add0~26_combout\,
	cout => \CLK10|Add0~27\);

-- Location: FF_X19_Y15_N5
\CLK10|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(13));

-- Location: LCCOMB_X19_Y15_N6
\CLK10|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~28_combout\ = (\CLK10|contador\(14) & (\CLK10|Add0~27\ $ (GND))) # (!\CLK10|contador\(14) & (!\CLK10|Add0~27\ & VCC))
-- \CLK10|Add0~29\ = CARRY((\CLK10|contador\(14) & !\CLK10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(14),
	datad => VCC,
	cin => \CLK10|Add0~27\,
	combout => \CLK10|Add0~28_combout\,
	cout => \CLK10|Add0~29\);

-- Location: LCCOMB_X19_Y15_N24
\CLK10|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~3_combout\ = (\CLK10|Add0~28_combout\ & (((!\CLK10|Equal0~5_combout\) # (!\CLK10|Equal0~6_combout\)) # (!\CLK10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~4_combout\,
	datab => \CLK10|Equal0~6_combout\,
	datac => \CLK10|Equal0~5_combout\,
	datad => \CLK10|Add0~28_combout\,
	combout => \CLK10|contador~3_combout\);

-- Location: FF_X19_Y15_N25
\CLK10|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(14));

-- Location: LCCOMB_X19_Y15_N8
\CLK10|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~30_combout\ = (\CLK10|contador\(15) & (!\CLK10|Add0~29\)) # (!\CLK10|contador\(15) & ((\CLK10|Add0~29\) # (GND)))
-- \CLK10|Add0~31\ = CARRY((!\CLK10|Add0~29\) # (!\CLK10|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(15),
	datad => VCC,
	cin => \CLK10|Add0~29\,
	combout => \CLK10|Add0~30_combout\,
	cout => \CLK10|Add0~31\);

-- Location: FF_X19_Y15_N9
\CLK10|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~30_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(15));

-- Location: LCCOMB_X19_Y15_N10
\CLK10|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~32_combout\ = (\CLK10|contador\(16) & (\CLK10|Add0~31\ $ (GND))) # (!\CLK10|contador\(16) & (!\CLK10|Add0~31\ & VCC))
-- \CLK10|Add0~33\ = CARRY((\CLK10|contador\(16) & !\CLK10|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(16),
	datad => VCC,
	cin => \CLK10|Add0~31\,
	combout => \CLK10|Add0~32_combout\,
	cout => \CLK10|Add0~33\);

-- Location: FF_X19_Y15_N11
\CLK10|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(16));

-- Location: LCCOMB_X18_Y15_N26
\CLK10|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Equal0~2_combout\ = (!\CLK10|contador\(13) & (!\CLK10|contador\(16) & (!\CLK10|contador\(15) & \CLK10|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(13),
	datab => \CLK10|contador\(16),
	datac => \CLK10|contador\(15),
	datad => \CLK10|contador\(14),
	combout => \CLK10|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y15_N12
\CLK10|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~34_combout\ = (\CLK10|contador\(17) & (!\CLK10|Add0~33\)) # (!\CLK10|contador\(17) & ((\CLK10|Add0~33\) # (GND)))
-- \CLK10|Add0~35\ = CARRY((!\CLK10|Add0~33\) # (!\CLK10|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(17),
	datad => VCC,
	cin => \CLK10|Add0~33\,
	combout => \CLK10|Add0~34_combout\,
	cout => \CLK10|Add0~35\);

-- Location: FF_X19_Y15_N13
\CLK10|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(17));

-- Location: LCCOMB_X19_Y15_N14
\CLK10|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~36_combout\ = (\CLK10|contador\(18) & (\CLK10|Add0~35\ $ (GND))) # (!\CLK10|contador\(18) & (!\CLK10|Add0~35\ & VCC))
-- \CLK10|Add0~37\ = CARRY((\CLK10|contador\(18) & !\CLK10|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(18),
	datad => VCC,
	cin => \CLK10|Add0~35\,
	combout => \CLK10|Add0~36_combout\,
	cout => \CLK10|Add0~37\);

-- Location: LCCOMB_X18_Y15_N14
\CLK10|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~2_combout\ = (\CLK10|Add0~36_combout\ & (((!\CLK10|Equal0~5_combout\) # (!\CLK10|Equal0~4_combout\)) # (!\CLK10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~6_combout\,
	datab => \CLK10|Equal0~4_combout\,
	datac => \CLK10|Add0~36_combout\,
	datad => \CLK10|Equal0~5_combout\,
	combout => \CLK10|contador~2_combout\);

-- Location: FF_X18_Y15_N15
\CLK10|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(18));

-- Location: LCCOMB_X19_Y15_N16
\CLK10|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~38_combout\ = (\CLK10|contador\(19) & (!\CLK10|Add0~37\)) # (!\CLK10|contador\(19) & ((\CLK10|Add0~37\) # (GND)))
-- \CLK10|Add0~39\ = CARRY((!\CLK10|Add0~37\) # (!\CLK10|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(19),
	datad => VCC,
	cin => \CLK10|Add0~37\,
	combout => \CLK10|Add0~38_combout\,
	cout => \CLK10|Add0~39\);

-- Location: LCCOMB_X19_Y15_N26
\CLK10|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~1_combout\ = (\CLK10|Add0~38_combout\ & (((!\CLK10|Equal0~5_combout\) # (!\CLK10|Equal0~6_combout\)) # (!\CLK10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~4_combout\,
	datab => \CLK10|Equal0~6_combout\,
	datac => \CLK10|Equal0~5_combout\,
	datad => \CLK10|Add0~38_combout\,
	combout => \CLK10|contador~1_combout\);

-- Location: FF_X19_Y15_N27
\CLK10|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(19));

-- Location: LCCOMB_X19_Y15_N18
\CLK10|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~40_combout\ = (\CLK10|contador\(20) & (\CLK10|Add0~39\ $ (GND))) # (!\CLK10|contador\(20) & (!\CLK10|Add0~39\ & VCC))
-- \CLK10|Add0~41\ = CARRY((\CLK10|contador\(20) & !\CLK10|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(20),
	datad => VCC,
	cin => \CLK10|Add0~39\,
	combout => \CLK10|Add0~40_combout\,
	cout => \CLK10|Add0~41\);

-- Location: FF_X19_Y15_N19
\CLK10|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(20));

-- Location: LCCOMB_X19_Y15_N20
\CLK10|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~42_combout\ = (\CLK10|contador\(21) & (!\CLK10|Add0~41\)) # (!\CLK10|contador\(21) & ((\CLK10|Add0~41\) # (GND)))
-- \CLK10|Add0~43\ = CARRY((!\CLK10|Add0~41\) # (!\CLK10|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK10|contador\(21),
	datad => VCC,
	cin => \CLK10|Add0~41\,
	combout => \CLK10|Add0~42_combout\,
	cout => \CLK10|Add0~43\);

-- Location: FF_X19_Y15_N21
\CLK10|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|Add0~42_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(21));

-- Location: LCCOMB_X19_Y15_N22
\CLK10|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Add0~44_combout\ = \CLK10|Add0~43\ $ (!\CLK10|contador\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLK10|contador\(22),
	cin => \CLK10|Add0~43\,
	combout => \CLK10|Add0~44_combout\);

-- Location: LCCOMB_X19_Y15_N28
\CLK10|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|contador~0_combout\ = (\CLK10|Add0~44_combout\ & (((!\CLK10|Equal0~4_combout\) # (!\CLK10|Equal0~6_combout\)) # (!\CLK10|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~5_combout\,
	datab => \CLK10|Equal0~6_combout\,
	datac => \CLK10|Add0~44_combout\,
	datad => \CLK10|Equal0~4_combout\,
	combout => \CLK10|contador~0_combout\);

-- Location: FF_X19_Y15_N29
\CLK10|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|contador~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|contador\(22));

-- Location: LCCOMB_X18_Y15_N28
\CLK10|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Equal0~0_combout\ = (!\CLK10|contador\(21) & (\CLK10|contador\(22) & (\CLK10|contador\(0) & \CLK10|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(21),
	datab => \CLK10|contador\(22),
	datac => \CLK10|contador\(0),
	datad => \CLK10|contador\(1),
	combout => \CLK10|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y15_N22
\CLK10|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Equal0~3_combout\ = (!\CLK10|contador\(12) & (!\CLK10|contador\(10) & (\CLK10|contador\(9) & \CLK10|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(12),
	datab => \CLK10|contador\(10),
	datac => \CLK10|contador\(9),
	datad => \CLK10|contador\(11),
	combout => \CLK10|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y15_N24
\CLK10|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Equal0~1_combout\ = (\CLK10|contador\(18) & (!\CLK10|contador\(20) & (!\CLK10|contador\(17) & \CLK10|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(18),
	datab => \CLK10|contador\(20),
	datac => \CLK10|contador\(17),
	datad => \CLK10|contador\(19),
	combout => \CLK10|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y15_N16
\CLK10|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|Equal0~4_combout\ = (\CLK10|Equal0~2_combout\ & (\CLK10|Equal0~0_combout\ & (\CLK10|Equal0~3_combout\ & \CLK10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~2_combout\,
	datab => \CLK10|Equal0~0_combout\,
	datac => \CLK10|Equal0~3_combout\,
	datad => \CLK10|Equal0~1_combout\,
	combout => \CLK10|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y15_N30
\CLK10|clk_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|clk_sig~0_combout\ = \CLK10|clk_sig~q\ $ (((\CLK10|Equal0~6_combout\ & (\CLK10|Equal0~4_combout\ & \CLK10|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|Equal0~6_combout\,
	datab => \CLK10|Equal0~4_combout\,
	datac => \CLK10|clk_sig~q\,
	datad => \CLK10|Equal0~5_combout\,
	combout => \CLK10|clk_sig~0_combout\);

-- Location: LCCOMB_X18_Y15_N18
\CLK10|clk_sig~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK10|clk_sig~feeder_combout\ = \CLK10|clk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK10|clk_sig~0_combout\,
	combout => \CLK10|clk_sig~feeder_combout\);

-- Location: FF_X18_Y15_N19
\CLK10|clk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLK10|clk_sig~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK10|clk_sig~q\);

-- Location: CLKCTRL_G1
\CLK10|clk_sig~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK10|clk_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK10|clk_sig~clkctrl_outclk\);

-- Location: IOIBUF_X23_Y24_N8
\ps2d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ps2d,
	o => \ps2d~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\ps2c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ps2c,
	o => \ps2c~input_o\);

-- Location: FF_X23_Y15_N31
\KB0|filter_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	asdata => \ps2c~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(7));

-- Location: FF_X23_Y15_N13
\KB0|filter_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	asdata => \KB0|filter_reg\(7),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(6));

-- Location: LCCOMB_X23_Y15_N24
\KB0|filter_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|filter_reg[5]~feeder_combout\ = \KB0|filter_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KB0|filter_reg\(6),
	combout => \KB0|filter_reg[5]~feeder_combout\);

-- Location: FF_X23_Y15_N25
\KB0|filter_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|filter_reg[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(5));

-- Location: LCCOMB_X23_Y15_N8
\KB0|filter_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|filter_reg[4]~feeder_combout\ = \KB0|filter_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KB0|filter_reg\(5),
	combout => \KB0|filter_reg[4]~feeder_combout\);

-- Location: FF_X23_Y15_N9
\KB0|filter_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|filter_reg[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(4));

-- Location: LCCOMB_X23_Y15_N30
\KB0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Equal0~0_combout\ = (!\KB0|filter_reg\(6) & (!\KB0|filter_reg\(4) & (!\KB0|filter_reg\(7) & !\KB0|filter_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|filter_reg\(6),
	datab => \KB0|filter_reg\(4),
	datac => \KB0|filter_reg\(7),
	datad => \KB0|filter_reg\(5),
	combout => \KB0|Equal0~0_combout\);

-- Location: FF_X23_Y15_N27
\KB0|filter_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	asdata => \KB0|filter_reg\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(3));

-- Location: FF_X23_Y15_N19
\KB0|filter_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	asdata => \KB0|filter_reg\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(2));

-- Location: LCCOMB_X23_Y15_N10
\KB0|filter_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|filter_reg[1]~feeder_combout\ = \KB0|filter_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KB0|filter_reg\(2),
	combout => \KB0|filter_reg[1]~feeder_combout\);

-- Location: FF_X23_Y15_N11
\KB0|filter_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|filter_reg[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(1));

-- Location: LCCOMB_X23_Y15_N20
\KB0|filter_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|filter_reg[0]~feeder_combout\ = \KB0|filter_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KB0|filter_reg\(1),
	combout => \KB0|filter_reg[0]~feeder_combout\);

-- Location: FF_X23_Y15_N21
\KB0|filter_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|filter_reg[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|filter_reg\(0));

-- Location: LCCOMB_X23_Y15_N26
\KB0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Equal0~1_combout\ = (!\KB0|filter_reg\(1) & (!\KB0|filter_reg\(2) & (!\KB0|filter_reg\(3) & !\KB0|filter_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|filter_reg\(1),
	datab => \KB0|filter_reg\(2),
	datac => \KB0|filter_reg\(3),
	datad => \KB0|filter_reg\(0),
	combout => \KB0|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y15_N22
\KB0|f_ps2c_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|f_ps2c_next~0_combout\ = (\KB0|f_ps2c_reg~q\ & ((!\KB0|Equal0~1_combout\) # (!\KB0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|f_ps2c_reg~q\,
	datab => \KB0|Equal0~0_combout\,
	datad => \KB0|Equal0~1_combout\,
	combout => \KB0|f_ps2c_next~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\KB0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Equal1~0_combout\ = (\KB0|filter_reg\(7) & (\KB0|filter_reg\(4) & (\KB0|filter_reg\(6) & \KB0|filter_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|filter_reg\(7),
	datab => \KB0|filter_reg\(4),
	datac => \KB0|filter_reg\(6),
	datad => \KB0|filter_reg\(5),
	combout => \KB0|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y15_N18
\KB0|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Equal1~1_combout\ = (\KB0|filter_reg\(3) & (\KB0|filter_reg\(0) & (\KB0|filter_reg\(2) & \KB0|filter_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|filter_reg\(3),
	datab => \KB0|filter_reg\(0),
	datac => \KB0|filter_reg\(2),
	datad => \KB0|filter_reg\(1),
	combout => \KB0|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y15_N2
\KB0|f_ps2c_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|f_ps2c_next~1_combout\ = (\KB0|f_ps2c_next~0_combout\) # ((\KB0|Equal1~0_combout\ & \KB0|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|f_ps2c_next~0_combout\,
	datab => \KB0|Equal1~0_combout\,
	datac => \KB0|Equal1~1_combout\,
	combout => \KB0|f_ps2c_next~1_combout\);

-- Location: FF_X23_Y15_N3
\KB0|f_ps2c_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|f_ps2c_next~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|f_ps2c_reg~q\);

-- Location: LCCOMB_X23_Y15_N14
\KB0|fall_edge\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|fall_edge~combout\ = (\KB0|f_ps2c_reg~q\ & (!\KB0|f_ps2c_next~0_combout\ & ((!\KB0|Equal1~0_combout\) # (!\KB0|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|f_ps2c_reg~q\,
	datab => \KB0|Equal1~1_combout\,
	datac => \KB0|f_ps2c_next~0_combout\,
	datad => \KB0|Equal1~0_combout\,
	combout => \KB0|fall_edge~combout\);

-- Location: IOIBUF_X34_Y12_N8
\rx_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_en,
	o => \rx_en~input_o\);

-- Location: LCCOMB_X24_Y15_N2
\KB0|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Selector14~0_combout\ = (!\KB0|state_reg.load~q\ & ((\KB0|state_reg.idle~q\) # ((\rx_en~input_o\ & \KB0|fall_edge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_en~input_o\,
	datab => \KB0|fall_edge~combout\,
	datac => \KB0|state_reg.idle~q\,
	datad => \KB0|state_reg.load~q\,
	combout => \KB0|Selector14~0_combout\);

-- Location: FF_X24_Y15_N3
\KB0|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|Selector14~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|state_reg.idle~q\);

-- Location: LCCOMB_X24_Y15_N20
\KB0|n_reg[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|n_reg[1]~0_combout\ = (\KB0|state_next~2_combout\) # (!\KB0|state_reg.dps~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KB0|state_reg.dps~q\,
	datad => \KB0|state_next~2_combout\,
	combout => \KB0|n_reg[1]~0_combout\);

-- Location: LCCOMB_X24_Y15_N10
\KB0|n_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|n_reg[1]~1_combout\ = ((\KB0|n_reg[1]~0_combout\ & ((\KB0|state_reg.idle~q\) # (!\rx_en~input_o\)))) # (!\KB0|fall_edge~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|state_reg.idle~q\,
	datab => \KB0|n_reg[1]~0_combout\,
	datac => \rx_en~input_o\,
	datad => \KB0|fall_edge~combout\,
	combout => \KB0|n_reg[1]~1_combout\);

-- Location: LCCOMB_X24_Y15_N22
\KB0|n_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|n_reg[0]~5_combout\ = (\KB0|n_reg\(0) & ((\KB0|n_reg[1]~1_combout\) # (!\KB0|state_reg.dps~q\))) # (!\KB0|n_reg\(0) & ((!\KB0|n_reg[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|state_reg.dps~q\,
	datac => \KB0|n_reg\(0),
	datad => \KB0|n_reg[1]~1_combout\,
	combout => \KB0|n_reg[0]~5_combout\);

-- Location: FF_X24_Y15_N23
\KB0|n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|n_reg[0]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|n_reg\(0));

-- Location: LCCOMB_X24_Y15_N8
\KB0|n_reg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|n_reg[1]~4_combout\ = (\KB0|n_reg[1]~1_combout\ & (((\KB0|n_reg\(1))))) # (!\KB0|n_reg[1]~1_combout\ & (\KB0|state_reg.dps~q\ & (\KB0|n_reg\(0) $ (!\KB0|n_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|n_reg\(0),
	datab => \KB0|state_reg.dps~q\,
	datac => \KB0|n_reg\(1),
	datad => \KB0|n_reg[1]~1_combout\,
	combout => \KB0|n_reg[1]~4_combout\);

-- Location: FF_X24_Y15_N9
\KB0|n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|n_reg[1]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|n_reg\(1));

-- Location: LCCOMB_X24_Y15_N6
\KB0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Add0~1_combout\ = \KB0|n_reg\(2) $ (((\KB0|n_reg\(1)) # (\KB0|n_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|n_reg\(1),
	datac => \KB0|n_reg\(0),
	datad => \KB0|n_reg\(2),
	combout => \KB0|Add0~1_combout\);

-- Location: LCCOMB_X24_Y15_N18
\KB0|n_reg[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|n_reg[2]~3_combout\ = (\KB0|n_reg[1]~1_combout\ & (((\KB0|n_reg\(2))))) # (!\KB0|n_reg[1]~1_combout\ & (!\KB0|Add0~1_combout\ & (\KB0|state_reg.dps~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|Add0~1_combout\,
	datab => \KB0|state_reg.dps~q\,
	datac => \KB0|n_reg\(2),
	datad => \KB0|n_reg[1]~1_combout\,
	combout => \KB0|n_reg[2]~3_combout\);

-- Location: FF_X24_Y15_N19
\KB0|n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|n_reg[2]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|n_reg\(2));

-- Location: LCCOMB_X24_Y15_N12
\KB0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Add0~0_combout\ = \KB0|n_reg\(3) $ (((\KB0|n_reg\(0)) # ((\KB0|n_reg\(2)) # (\KB0|n_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|n_reg\(0),
	datab => \KB0|n_reg\(2),
	datac => \KB0|n_reg\(1),
	datad => \KB0|n_reg\(3),
	combout => \KB0|Add0~0_combout\);

-- Location: LCCOMB_X24_Y15_N28
\KB0|n_reg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|n_reg[3]~2_combout\ = (\KB0|n_reg[1]~1_combout\ & (((\KB0|n_reg\(3))))) # (!\KB0|n_reg[1]~1_combout\ & (((!\KB0|state_reg.dps~q\)) # (!\KB0|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|Add0~0_combout\,
	datab => \KB0|state_reg.dps~q\,
	datac => \KB0|n_reg\(3),
	datad => \KB0|n_reg[1]~1_combout\,
	combout => \KB0|n_reg[3]~2_combout\);

-- Location: FF_X24_Y15_N29
\KB0|n_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|n_reg[3]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|n_reg\(3));

-- Location: LCCOMB_X24_Y15_N24
\KB0|state_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|state_next~2_combout\ = (!\KB0|n_reg\(0) & (!\KB0|n_reg\(2) & (!\KB0|n_reg\(1) & !\KB0|n_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|n_reg\(0),
	datab => \KB0|n_reg\(2),
	datac => \KB0|n_reg\(1),
	datad => \KB0|n_reg\(3),
	combout => \KB0|state_next~2_combout\);

-- Location: LCCOMB_X23_Y15_N16
\KB0|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Selector15~0_combout\ = (\KB0|state_reg.dps~q\ & ((!\KB0|fall_edge~combout\) # (!\KB0|state_next~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|state_reg.dps~q\,
	datab => \KB0|state_next~2_combout\,
	datad => \KB0|fall_edge~combout\,
	combout => \KB0|Selector15~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\KB0|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Selector15~1_combout\ = (\KB0|Selector15~0_combout\) # ((\rx_en~input_o\ & (\KB0|fall_edge~combout\ & !\KB0|state_reg.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_en~input_o\,
	datab => \KB0|fall_edge~combout\,
	datac => \KB0|state_reg.idle~q\,
	datad => \KB0|Selector15~0_combout\,
	combout => \KB0|Selector15~1_combout\);

-- Location: FF_X23_Y15_N5
\KB0|state_reg.dps\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|Selector15~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|state_reg.dps~q\);

-- Location: LCCOMB_X23_Y15_N28
\KB0|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|Selector16~0_combout\ = (\KB0|fall_edge~combout\ & (\KB0|state_reg.dps~q\ & \KB0|state_next~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|fall_edge~combout\,
	datac => \KB0|state_reg.dps~q\,
	datad => \KB0|state_next~2_combout\,
	combout => \KB0|Selector16~0_combout\);

-- Location: FF_X23_Y15_N29
\KB0|state_reg.load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \KB0|Selector16~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|state_reg.load~q\);

-- Location: LCCOMB_X23_Y15_N6
\KB0|b_reg[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|b_reg[8]~0_combout\ = (\rx_en~input_o\ & (((\KB0|Equal1~0_combout\ & \KB0|Equal1~1_combout\)))) # (!\rx_en~input_o\ & (((\KB0|Equal1~0_combout\ & \KB0|Equal1~1_combout\)) # (!\KB0|state_reg.dps~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_en~input_o\,
	datab => \KB0|state_reg.dps~q\,
	datac => \KB0|Equal1~0_combout\,
	datad => \KB0|Equal1~1_combout\,
	combout => \KB0|b_reg[8]~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\KB0|b_reg[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|b_reg[8]~1_combout\ = (!\KB0|state_reg.load~q\ & (\KB0|f_ps2c_reg~q\ & (!\KB0|f_ps2c_next~0_combout\ & !\KB0|b_reg[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|state_reg.load~q\,
	datab => \KB0|f_ps2c_reg~q\,
	datac => \KB0|f_ps2c_next~0_combout\,
	datad => \KB0|b_reg[8]~0_combout\,
	combout => \KB0|b_reg[8]~1_combout\);

-- Location: FF_X23_Y15_N23
\KB0|b_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	asdata => \ps2d~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(10));

-- Location: FF_X23_Y15_N17
\KB0|b_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	asdata => \KB0|b_reg\(10),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(9));

-- Location: FF_X23_Y12_N23
\KB0|b_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	asdata => \KB0|b_reg\(9),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(8));

-- Location: FF_X23_Y12_N27
\KB0|b_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	asdata => \KB0|b_reg\(8),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(7));

-- Location: FF_X23_Y12_N9
\KB0|b_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	asdata => \KB0|b_reg\(7),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(6));

-- Location: FF_X23_Y12_N5
\KB0|b_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	asdata => \KB0|b_reg\(6),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(5));

-- Location: FF_X23_Y12_N15
\KB0|b_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	asdata => \KB0|b_reg\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(4));

-- Location: FF_X23_Y12_N21
\KB0|b_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	asdata => \KB0|b_reg\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(3));

-- Location: FF_X22_Y12_N3
\KB0|b_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	asdata => \KB0|b_reg\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(2));

-- Location: LCCOMB_X23_Y12_N4
\KB0|OUT1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux4~4_combout\ = (\KB0|b_reg\(4) & (\KB0|b_reg\(5) $ (((\KB0|b_reg\(3)) # (\KB0|b_reg\(6)))))) # (!\KB0|b_reg\(4) & (\KB0|b_reg\(3) & ((\KB0|b_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(3),
	datab => \KB0|b_reg\(4),
	datac => \KB0|b_reg\(5),
	datad => \KB0|b_reg\(6),
	combout => \KB0|OUT1|Mux4~4_combout\);

-- Location: LCCOMB_X23_Y12_N14
\KB0|OUT1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux4~2_combout\ = (\KB0|b_reg\(3) & (((\KB0|b_reg\(4)) # (\KB0|b_reg\(5))))) # (!\KB0|b_reg\(3) & (\KB0|b_reg\(6) & ((!\KB0|b_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(3),
	datab => \KB0|b_reg\(6),
	datac => \KB0|b_reg\(4),
	datad => \KB0|b_reg\(5),
	combout => \KB0|OUT1|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y12_N12
\KB0|OUT1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux4~5_combout\ = (\KB0|OUT1|Mux4~4_combout\ & (\KB0|OUT1|Mux4~2_combout\ $ (((\KB0|b_reg\(7)) # (\KB0|b_reg\(3)))))) # (!\KB0|OUT1|Mux4~4_combout\ & (!\KB0|b_reg\(7) & (\KB0|b_reg\(3) & \KB0|OUT1|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(7),
	datab => \KB0|b_reg\(3),
	datac => \KB0|OUT1|Mux4~4_combout\,
	datad => \KB0|OUT1|Mux4~2_combout\,
	combout => \KB0|OUT1|Mux4~5_combout\);

-- Location: LCCOMB_X22_Y12_N8
\KB0|b_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|b_reg[1]~feeder_combout\ = \KB0|b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KB0|b_reg\(2),
	combout => \KB0|b_reg[1]~feeder_combout\);

-- Location: FF_X22_Y12_N9
\KB0|b_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \KB0|b_reg[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \KB0|b_reg[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KB0|b_reg\(1));

-- Location: LCCOMB_X23_Y12_N24
\KB0|OUT1|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux4~6_combout\ = (\KB0|OUT1|Mux4~5_combout\ & (\KB0|b_reg\(7) $ (((\KB0|b_reg\(8)) # (!\KB0|b_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux4~5_combout\,
	datab => \KB0|b_reg\(8),
	datac => \KB0|b_reg\(7),
	datad => \KB0|b_reg\(1),
	combout => \KB0|OUT1|Mux4~6_combout\);

-- Location: LCCOMB_X23_Y12_N26
\KB0|OUT1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux4~3_combout\ = (\KB0|OUT1|Mux4~2_combout\ & (!\KB0|b_reg\(7) & !\KB0|b_reg\(3))) # (!\KB0|OUT1|Mux4~2_combout\ & (\KB0|b_reg\(7) & \KB0|b_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux4~2_combout\,
	datac => \KB0|b_reg\(7),
	datad => \KB0|b_reg\(3),
	combout => \KB0|OUT1|Mux4~3_combout\);

-- Location: LCCOMB_X23_Y12_N6
\KB0|OUT1|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux4~7_combout\ = (\KB0|OUT1|Mux4~6_combout\ & (((\KB0|OUT1|Mux4~3_combout\)) # (!\KB0|b_reg\(2)))) # (!\KB0|OUT1|Mux4~6_combout\ & ((\KB0|b_reg\(2) $ (!\KB0|b_reg\(1))) # (!\KB0|OUT1|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(2),
	datab => \KB0|OUT1|Mux4~6_combout\,
	datac => \KB0|OUT1|Mux4~3_combout\,
	datad => \KB0|b_reg\(1),
	combout => \KB0|OUT1|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y12_N18
\KB0|OUT1|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux4~8_combout\ = (\KB0|OUT1|Mux4~7_combout\) # ((\KB0|b_reg\(8) & ((\KB0|b_reg\(2)) # (\KB0|b_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux4~7_combout\,
	datab => \KB0|b_reg\(8),
	datac => \KB0|b_reg\(2),
	datad => \KB0|b_reg\(1),
	combout => \KB0|OUT1|Mux4~8_combout\);

-- Location: LCCOMB_X23_Y12_N22
\KB0|OUT1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux2~2_combout\ = (!\KB0|b_reg\(7) & \KB0|b_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|b_reg\(7),
	datad => \KB0|b_reg\(6),
	combout => \KB0|OUT1|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y14_N2
\KB0|OUT1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~2_combout\ = (\KB0|b_reg\(4) & (\KB0|b_reg\(3) $ (((\KB0|b_reg\(5)) # (!\KB0|b_reg\(1)))))) # (!\KB0|b_reg\(4) & (\KB0|b_reg\(5) & ((\KB0|b_reg\(1)) # (!\KB0|b_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(4),
	datab => \KB0|b_reg\(1),
	datac => \KB0|b_reg\(3),
	datad => \KB0|b_reg\(5),
	combout => \KB0|OUT1|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y14_N30
\KB0|OUT1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~3_combout\ = (\KB0|OUT1|Mux2~2_combout\ & (!\KB0|OUT1|Mux1~2_combout\ & (\KB0|b_reg\(2) $ (\KB0|b_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(2),
	datab => \KB0|b_reg\(1),
	datac => \KB0|OUT1|Mux2~2_combout\,
	datad => \KB0|OUT1|Mux1~2_combout\,
	combout => \KB0|OUT1|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y12_N28
\KB0|OUT1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~6_combout\ = (!\KB0|b_reg\(3) & \KB0|b_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KB0|b_reg\(3),
	datad => \KB0|b_reg\(1),
	combout => \KB0|OUT1|Mux1~6_combout\);

-- Location: LCCOMB_X22_Y12_N4
\KB0|OUT1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux5~1_combout\ = (\KB0|b_reg\(5) & (\KB0|b_reg\(4) & \KB0|b_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(5),
	datac => \KB0|b_reg\(4),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y12_N24
\KB0|OUT1|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~7_combout\ = (\KB0|b_reg\(3) & (!\KB0|b_reg\(4) & (\KB0|b_reg\(2) $ (\KB0|b_reg\(1))))) # (!\KB0|b_reg\(3) & (\KB0|b_reg\(2) & (!\KB0|b_reg\(1) & \KB0|b_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(3),
	datab => \KB0|b_reg\(2),
	datac => \KB0|b_reg\(1),
	datad => \KB0|b_reg\(4),
	combout => \KB0|OUT1|Mux1~7_combout\);

-- Location: LCCOMB_X22_Y12_N6
\KB0|OUT1|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~8_combout\ = (\KB0|b_reg\(5) & (\KB0|OUT1|Mux1~6_combout\ & (\KB0|OUT1|Mux5~1_combout\))) # (!\KB0|b_reg\(5) & ((\KB0|OUT1|Mux1~7_combout\) # ((\KB0|OUT1|Mux1~6_combout\ & \KB0|OUT1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(5),
	datab => \KB0|OUT1|Mux1~6_combout\,
	datac => \KB0|OUT1|Mux5~1_combout\,
	datad => \KB0|OUT1|Mux1~7_combout\,
	combout => \KB0|OUT1|Mux1~8_combout\);

-- Location: LCCOMB_X22_Y12_N30
\KB0|OUT1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~4_combout\ = (\KB0|b_reg\(5) & (!\KB0|b_reg\(1) & \KB0|b_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(5),
	datac => \KB0|b_reg\(1),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y12_N22
\KB0|OUT1|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~10_combout\ = (\KB0|b_reg\(7) & (\KB0|OUT1|Mux1~8_combout\)) # (!\KB0|b_reg\(7) & (((\KB0|b_reg\(3) & \KB0|OUT1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux1~8_combout\,
	datab => \KB0|b_reg\(3),
	datac => \KB0|OUT1|Mux1~4_combout\,
	datad => \KB0|b_reg\(7),
	combout => \KB0|OUT1|Mux1~10_combout\);

-- Location: LCCOMB_X23_Y13_N24
\KB0|OUT1|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~9_combout\ = (!\KB0|b_reg\(8) & ((\KB0|OUT1|Mux1~3_combout\) # ((!\KB0|b_reg\(6) & \KB0|OUT1|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux1~3_combout\,
	datab => \KB0|b_reg\(6),
	datac => \KB0|b_reg\(8),
	datad => \KB0|OUT1|Mux1~10_combout\,
	combout => \KB0|OUT1|Mux1~9_combout\);

-- Location: LCCOMB_X23_Y14_N12
\KB0|OUT1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux3~4_combout\ = (\KB0|b_reg\(7) & ((\KB0|b_reg\(6)) # (\KB0|b_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|b_reg\(6),
	datac => \KB0|b_reg\(4),
	datad => \KB0|b_reg\(7),
	combout => \KB0|OUT1|Mux3~4_combout\);

-- Location: LCCOMB_X23_Y14_N28
\KB0|OUT1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux3~0_combout\ = (!\KB0|b_reg\(6) & (((!\KB0|OUT1|Mux1~4_combout\ & !\KB0|b_reg\(7))) # (!\KB0|b_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(6),
	datab => \KB0|OUT1|Mux1~4_combout\,
	datac => \KB0|b_reg\(3),
	datad => \KB0|b_reg\(7),
	combout => \KB0|OUT1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\KB0|OUT1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux1~5_combout\ = (\KB0|b_reg\(3) & !\KB0|b_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KB0|b_reg\(3),
	datad => \KB0|b_reg\(7),
	combout => \KB0|OUT1|Mux1~5_combout\);

-- Location: LCCOMB_X23_Y14_N22
\KB0|OUT1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux3~3_combout\ = (!\KB0|OUT1|Mux1~5_combout\ & ((\KB0|b_reg\(5)) # ((\KB0|b_reg\(2)) # (!\KB0|b_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux1~5_combout\,
	datab => \KB0|b_reg\(5),
	datac => \KB0|b_reg\(1),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux3~3_combout\);

-- Location: LCCOMB_X23_Y14_N14
\KB0|OUT1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux3~1_combout\ = (\KB0|b_reg\(1) & (!\KB0|b_reg\(2) & (\KB0|b_reg\(5) $ (!\KB0|b_reg\(4))))) # (!\KB0|b_reg\(1) & (\KB0|b_reg\(2) & ((!\KB0|b_reg\(4)) # (!\KB0|b_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(1),
	datab => \KB0|b_reg\(5),
	datac => \KB0|b_reg\(4),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y14_N16
\KB0|OUT1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux3~2_combout\ = (\KB0|b_reg\(8)) # ((\KB0|b_reg\(6) & (\KB0|b_reg\(3) & !\KB0|OUT1|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(6),
	datab => \KB0|b_reg\(3),
	datac => \KB0|OUT1|Mux3~1_combout\,
	datad => \KB0|b_reg\(8),
	combout => \KB0|OUT1|Mux3~2_combout\);

-- Location: LCCOMB_X23_Y14_N18
\KB0|OUT1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux3~5_combout\ = (\KB0|OUT1|Mux3~4_combout\) # ((\KB0|OUT1|Mux3~0_combout\) # ((\KB0|OUT1|Mux3~3_combout\) # (\KB0|OUT1|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux3~4_combout\,
	datab => \KB0|OUT1|Mux3~0_combout\,
	datac => \KB0|OUT1|Mux3~3_combout\,
	datad => \KB0|OUT1|Mux3~2_combout\,
	combout => \KB0|OUT1|Mux3~5_combout\);

-- Location: LCCOMB_X22_Y12_N2
\KB0|OUT1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux5~0_combout\ = (\KB0|b_reg\(4) & (!\KB0|b_reg\(1) & (\KB0|b_reg\(2) & \KB0|b_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(4),
	datab => \KB0|b_reg\(1),
	datac => \KB0|b_reg\(2),
	datad => \KB0|b_reg\(5),
	combout => \KB0|OUT1|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y12_N20
\KB0|OUT1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux5~2_combout\ = (\KB0|b_reg\(4) & (\KB0|b_reg\(5) & (\KB0|b_reg\(1) & !\KB0|b_reg\(2)))) # (!\KB0|b_reg\(4) & (((!\KB0|b_reg\(1) & \KB0|b_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(4),
	datab => \KB0|b_reg\(5),
	datac => \KB0|b_reg\(1),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y12_N0
\KB0|OUT1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux5~3_combout\ = (\KB0|OUT1|Mux1~5_combout\ & ((\KB0|b_reg\(6) & ((\KB0|OUT1|Mux5~2_combout\))) # (!\KB0|b_reg\(6) & (\KB0|OUT1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux5~0_combout\,
	datab => \KB0|OUT1|Mux5~2_combout\,
	datac => \KB0|b_reg\(6),
	datad => \KB0|OUT1|Mux1~5_combout\,
	combout => \KB0|OUT1|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y12_N20
\KB0|OUT1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux5~4_combout\ = (\KB0|OUT1|Mux2~2_combout\ & (!\KB0|b_reg\(2) & (!\KB0|b_reg\(4) & !\KB0|b_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux2~2_combout\,
	datab => \KB0|b_reg\(2),
	datac => \KB0|b_reg\(4),
	datad => \KB0|b_reg\(5),
	combout => \KB0|OUT1|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y13_N8
\KB0|OUT1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux5~5_combout\ = (\KB0|OUT1|Mux5~4_combout\) # ((!\KB0|b_reg\(6) & (\KB0|b_reg\(7) & \KB0|OUT1|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(6),
	datab => \KB0|OUT1|Mux5~4_combout\,
	datac => \KB0|b_reg\(7),
	datad => \KB0|OUT1|Mux5~1_combout\,
	combout => \KB0|OUT1|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y13_N16
\KB0|OUT1|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux5~6_combout\ = (!\KB0|b_reg\(8) & ((\KB0|OUT1|Mux5~3_combout\) # ((\KB0|OUT1|Mux5~5_combout\ & \KB0|OUT1|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(8),
	datab => \KB0|OUT1|Mux5~3_combout\,
	datac => \KB0|OUT1|Mux5~5_combout\,
	datad => \KB0|OUT1|Mux1~6_combout\,
	combout => \KB0|OUT1|Mux5~6_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\KB0|OUT1|Mux1~9_combout\ & (\KB0|OUT1|Mux3~5_combout\ & (!\KB0|OUT1|Mux5~6_combout\ & \KB0|OUT1|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux1~9_combout\,
	datab => \KB0|OUT1|Mux3~5_combout\,
	datac => \KB0|OUT1|Mux5~6_combout\,
	datad => \KB0|OUT1|Mux4~8_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X22_Y12_N26
\KB0|OUT1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux6~2_combout\ = (!\KB0|b_reg\(5) & ((\KB0|b_reg\(4) & (\KB0|b_reg\(1) & !\KB0|b_reg\(2))) # (!\KB0|b_reg\(4) & (!\KB0|b_reg\(1) & \KB0|b_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(4),
	datab => \KB0|b_reg\(5),
	datac => \KB0|b_reg\(1),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux6~2_combout\);

-- Location: LCCOMB_X22_Y12_N14
\KB0|OUT1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux6~3_combout\ = (\KB0|b_reg\(5) & (((!\KB0|b_reg\(1) & \KB0|b_reg\(2))))) # (!\KB0|b_reg\(5) & (!\KB0|b_reg\(4) & (\KB0|b_reg\(1) & !\KB0|b_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(4),
	datab => \KB0|b_reg\(5),
	datac => \KB0|b_reg\(1),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux6~3_combout\);

-- Location: LCCOMB_X22_Y12_N10
\KB0|OUT1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux6~4_combout\ = (\KB0|b_reg\(3) & (((!\KB0|OUT1|Mux6~3_combout\ & \KB0|b_reg\(6))))) # (!\KB0|b_reg\(3) & (!\KB0|OUT1|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux6~2_combout\,
	datab => \KB0|OUT1|Mux6~3_combout\,
	datac => \KB0|b_reg\(6),
	datad => \KB0|b_reg\(3),
	combout => \KB0|OUT1|Mux6~4_combout\);

-- Location: LCCOMB_X22_Y12_N16
\KB0|OUT1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux6~5_combout\ = (\KB0|OUT1|Mux6~4_combout\) # ((!\KB0|b_reg\(6) & ((!\KB0|b_reg\(3)) # (!\KB0|OUT1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux6~4_combout\,
	datab => \KB0|OUT1|Mux5~0_combout\,
	datac => \KB0|b_reg\(6),
	datad => \KB0|b_reg\(3),
	combout => \KB0|OUT1|Mux6~5_combout\);

-- Location: LCCOMB_X22_Y13_N6
\KB0|OUT1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux6~0_combout\ = (\KB0|b_reg\(3) & ((\KB0|b_reg\(6) & (!\KB0|b_reg\(1) & \KB0|b_reg\(2))) # (!\KB0|b_reg\(6) & (\KB0|b_reg\(1) & !\KB0|b_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(6),
	datab => \KB0|b_reg\(1),
	datac => \KB0|b_reg\(3),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y13_N18
\KB0|OUT1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux6~1_combout\ = (\KB0|b_reg\(7) & ((\KB0|b_reg\(5)) # ((\KB0|b_reg\(4)) # (!\KB0|OUT1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(5),
	datab => \KB0|OUT1|Mux6~0_combout\,
	datac => \KB0|b_reg\(4),
	datad => \KB0|b_reg\(7),
	combout => \KB0|OUT1|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y13_N16
\KB0|OUT1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux6~6_combout\ = (\KB0|OUT1|Mux6~1_combout\) # ((\KB0|b_reg\(8)) # ((\KB0|OUT1|Mux6~5_combout\ & !\KB0|b_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux6~5_combout\,
	datab => \KB0|OUT1|Mux6~1_combout\,
	datac => \KB0|b_reg\(8),
	datad => \KB0|b_reg\(7),
	combout => \KB0|OUT1|Mux6~6_combout\);

-- Location: LCCOMB_X22_Y12_N12
\KB0|OUT1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux2~3_combout\ = (\KB0|b_reg\(3) & (!\KB0|b_reg\(8) & (\KB0|b_reg\(1) $ (\KB0|b_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(1),
	datab => \KB0|b_reg\(2),
	datac => \KB0|b_reg\(3),
	datad => \KB0|b_reg\(8),
	combout => \KB0|OUT1|Mux2~3_combout\);

-- Location: LCCOMB_X23_Y12_N8
\KB0|OUT1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux2~8_combout\ = (\KB0|b_reg\(6) & ((\KB0|OUT1|Mux2~3_combout\) # (!\KB0|b_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|b_reg\(7),
	datac => \KB0|b_reg\(6),
	datad => \KB0|OUT1|Mux2~3_combout\,
	combout => \KB0|OUT1|Mux2~8_combout\);

-- Location: LCCOMB_X22_Y12_N18
\KB0|OUT1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux2~4_combout\ = (!\KB0|b_reg\(8) & (!\KB0|b_reg\(1) & \KB0|b_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|b_reg\(8),
	datac => \KB0|b_reg\(1),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux2~4_combout\);

-- Location: LCCOMB_X22_Y13_N18
\KB0|OUT1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux2~5_combout\ = (\KB0|b_reg\(5) & (!\KB0|OUT1|Mux2~4_combout\ & ((!\KB0|b_reg\(4)) # (!\KB0|OUT1|Mux2~8_combout\)))) # (!\KB0|b_reg\(5) & (\KB0|b_reg\(4) $ (((\KB0|OUT1|Mux2~8_combout\ & \KB0|OUT1|Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(5),
	datab => \KB0|OUT1|Mux2~8_combout\,
	datac => \KB0|b_reg\(4),
	datad => \KB0|OUT1|Mux2~4_combout\,
	combout => \KB0|OUT1|Mux2~5_combout\);

-- Location: LCCOMB_X22_Y13_N14
\KB0|OUT1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux2~6_combout\ = (\KB0|OUT1|Mux2~8_combout\ & ((\KB0|OUT1|Mux2~4_combout\) # (\KB0|b_reg\(5) $ (!\KB0|b_reg\(4))))) # (!\KB0|OUT1|Mux2~8_combout\ & (\KB0|b_reg\(5) & ((\KB0|OUT1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(5),
	datab => \KB0|OUT1|Mux2~8_combout\,
	datac => \KB0|b_reg\(4),
	datad => \KB0|OUT1|Mux2~4_combout\,
	combout => \KB0|OUT1|Mux2~6_combout\);

-- Location: LCCOMB_X22_Y13_N24
\KB0|OUT1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux2~7_combout\ = (\KB0|OUT1|Mux2~5_combout\ & (\KB0|OUT1|Mux2~6_combout\ & ((!\KB0|OUT1|Mux2~3_combout\) # (!\KB0|b_reg\(7))))) # (!\KB0|OUT1|Mux2~5_combout\ & (\KB0|OUT1|Mux2~3_combout\ & (\KB0|b_reg\(7) $ (\KB0|OUT1|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(7),
	datab => \KB0|OUT1|Mux2~5_combout\,
	datac => \KB0|OUT1|Mux2~6_combout\,
	datad => \KB0|OUT1|Mux2~3_combout\,
	combout => \KB0|OUT1|Mux2~7_combout\);

-- Location: LCCOMB_X23_Y14_N8
\KB0|OUT1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux0~0_combout\ = (!\KB0|b_reg\(3) & (!\KB0|b_reg\(4) & (\KB0|b_reg\(1) $ (\KB0|b_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|b_reg\(1),
	datab => \KB0|b_reg\(3),
	datac => \KB0|b_reg\(4),
	datad => \KB0|b_reg\(2),
	combout => \KB0|OUT1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\KB0|OUT1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KB0|OUT1|Mux0~1_combout\ = (\KB0|OUT1|Mux2~2_combout\ & (!\KB0|b_reg\(5) & (\KB0|OUT1|Mux0~0_combout\ & !\KB0|b_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux2~2_combout\,
	datab => \KB0|b_reg\(5),
	datac => \KB0|OUT1|Mux0~0_combout\,
	datad => \KB0|b_reg\(8),
	combout => \KB0|OUT1|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y13_N2
\Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\KB0|OUT1|Mux6~6_combout\ & (!\KB0|OUT1|Mux2~7_combout\ & !\KB0|OUT1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|OUT1|Mux6~6_combout\,
	datac => \KB0|OUT1|Mux2~7_combout\,
	datad => \KB0|OUT1|Mux0~1_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X23_Y13_N0
\dato1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato1[0]~0_combout\ = (\estado.S1~q\) # ((\Selector0~2_combout\ & \Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datac => \estado.S1~q\,
	datad => \Selector0~5_combout\,
	combout => \dato1[0]~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\dato1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato1(2) = (\dato1[0]~0_combout\ & (dato1(2))) # (!\dato1[0]~0_combout\ & ((\KB0|OUT1|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(2),
	datac => \KB0|OUT1|Mux4~8_combout\,
	datad => \dato1[0]~0_combout\,
	combout => dato1(2));

-- Location: LCCOMB_X23_Y12_N16
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = dato1(2) $ (\KB0|OUT1|Mux4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(2),
	datad => \KB0|OUT1|Mux4~8_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X23_Y14_N6
\dato1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato1(3) = (\dato1[0]~0_combout\ & (dato1(3))) # (!\dato1[0]~0_combout\ & ((\KB0|OUT1|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(3),
	datab => \KB0|OUT1|Mux3~5_combout\,
	datac => \dato1[0]~0_combout\,
	combout => dato1(3));

-- Location: LCCOMB_X23_Y14_N26
\dato1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato1(6) = (\dato1[0]~0_combout\ & (dato1(6))) # (!\dato1[0]~0_combout\ & ((\KB0|OUT1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(6),
	datab => \KB0|OUT1|Mux0~1_combout\,
	datac => \dato1[0]~0_combout\,
	combout => dato1(6));

-- Location: LCCOMB_X23_Y14_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (dato1(3) & (\KB0|OUT1|Mux3~5_combout\ & (dato1(6) $ (!\KB0|OUT1|Mux0~1_combout\)))) # (!dato1(3) & (!\KB0|OUT1|Mux3~5_combout\ & (dato1(6) $ (!\KB0|OUT1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(3),
	datab => \KB0|OUT1|Mux3~5_combout\,
	datac => dato1(6),
	datad => \KB0|OUT1|Mux0~1_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X22_Y13_N2
\dato1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato1(4) = (\dato1[0]~0_combout\ & (dato1(4))) # (!\dato1[0]~0_combout\ & ((\KB0|OUT1|Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(4),
	datac => \dato1[0]~0_combout\,
	datad => \KB0|OUT1|Mux2~7_combout\,
	combout => dato1(4));

-- Location: LCCOMB_X23_Y14_N10
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\Equal1~2_combout\ & (\Equal1~1_combout\ & (dato1(4) $ (!\KB0|OUT1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => dato1(4),
	datad => \KB0|OUT1|Mux2~7_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X23_Y13_N26
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~2_combout\ & (\KB0|OUT1|Mux6~6_combout\ & (!\KB0|OUT1|Mux2~7_combout\ & !\KB0|OUT1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \KB0|OUT1|Mux6~6_combout\,
	datac => \KB0|OUT1|Mux2~7_combout\,
	datad => \KB0|OUT1|Mux0~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X23_Y13_N22
\dato1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato1(1) = (\dato1[0]~0_combout\ & (dato1(1))) # (!\dato1[0]~0_combout\ & ((\KB0|OUT1|Mux5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(1),
	datac => \KB0|OUT1|Mux5~6_combout\,
	datad => \dato1[0]~0_combout\,
	combout => dato1(1));

-- Location: LCCOMB_X22_Y13_N28
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = dato1(1) $ (\KB0|OUT1|Mux5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(1),
	datad => \KB0|OUT1|Mux5~6_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X23_Y13_N12
\dato1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato1(0) = (\dato1[0]~0_combout\ & (dato1(0))) # (!\dato1[0]~0_combout\ & ((\KB0|OUT1|Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(0),
	datab => \KB0|OUT1|Mux6~6_combout\,
	datad => \dato1[0]~0_combout\,
	combout => dato1(0));

-- Location: LCCOMB_X23_Y13_N4
\dato1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato1(5) = (\dato1[0]~0_combout\ & ((dato1(5)))) # (!\dato1[0]~0_combout\ & (\KB0|OUT1|Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|OUT1|Mux1~9_combout\,
	datac => dato1(5),
	datad => \dato1[0]~0_combout\,
	combout => dato1(5));

-- Location: LCCOMB_X23_Y13_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (dato1(0) & (\KB0|OUT1|Mux6~6_combout\ & (\KB0|OUT1|Mux1~9_combout\ $ (!dato1(5))))) # (!dato1(0) & (!\KB0|OUT1|Mux6~6_combout\ & (\KB0|OUT1|Mux1~9_combout\ $ (!dato1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(0),
	datab => \KB0|OUT1|Mux1~9_combout\,
	datac => dato1(5),
	datad => \KB0|OUT1|Mux6~6_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Equal1~4_combout\ & (\Equal1~3_combout\ & (\Equal1~0_combout\ & \estado.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~0_combout\,
	datad => \estado.S2~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector0~1_combout\) # ((!\estado.S1~q\ & !\Selector0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S1~q\,
	datac => \Selector0~3_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X23_Y12_N29
\estado.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK10|clk_sig~q\,
	d => \Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S2~q\);

-- Location: LCCOMB_X22_Y14_N0
\operador[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \operador[7]~0_combout\ = (\estado.S2~q\ & (((\Equal1~4_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \estado.S2~q\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~4_combout\,
	combout => \operador[7]~0_combout\);

-- Location: LCCOMB_X25_Y14_N30
\operador[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- operador(2) = (\operador[7]~0_combout\ & ((\KB0|OUT1|Mux4~8_combout\))) # (!\operador[7]~0_combout\ & (operador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(2),
	datac => \KB0|OUT1|Mux4~8_combout\,
	datad => \operador[7]~0_combout\,
	combout => operador(2));

-- Location: LCCOMB_X22_Y14_N26
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = \KB0|OUT1|Mux4~8_combout\ $ (operador(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KB0|OUT1|Mux4~8_combout\,
	datad => operador(2),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X24_Y14_N6
\operador[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- operador(3) = (\operador[7]~0_combout\ & ((\KB0|OUT1|Mux3~5_combout\))) # (!\operador[7]~0_combout\ & (operador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(3),
	datab => \KB0|OUT1|Mux3~5_combout\,
	datac => \operador[7]~0_combout\,
	combout => operador(3));

-- Location: LCCOMB_X24_Y12_N0
\operador[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- operador(6) = (\operador[7]~0_combout\ & ((\KB0|OUT1|Mux0~1_combout\))) # (!\operador[7]~0_combout\ & (operador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => operador(6),
	datac => \KB0|OUT1|Mux0~1_combout\,
	datad => \operador[7]~0_combout\,
	combout => operador(6));

-- Location: LCCOMB_X22_Y14_N2
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (operador(3) & (\KB0|OUT1|Mux3~5_combout\ & (operador(6) $ (!\KB0|OUT1|Mux0~1_combout\)))) # (!operador(3) & (!\KB0|OUT1|Mux3~5_combout\ & (operador(6) $ (!\KB0|OUT1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(3),
	datab => operador(6),
	datac => \KB0|OUT1|Mux0~1_combout\,
	datad => \KB0|OUT1|Mux3~5_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X22_Y13_N0
\operador[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- operador(4) = (\operador[7]~0_combout\ & (\KB0|OUT1|Mux2~7_combout\)) # (!\operador[7]~0_combout\ & ((operador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|OUT1|Mux2~7_combout\,
	datac => \operador[7]~0_combout\,
	datad => operador(4),
	combout => operador(4));

-- Location: LCCOMB_X22_Y14_N24
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\Equal2~2_combout\ & (\Equal2~1_combout\ & (operador(4) $ (!\KB0|OUT1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~1_combout\,
	datac => operador(4),
	datad => \KB0|OUT1|Mux2~7_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X24_Y14_N2
\operador[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- operador(0) = (\operador[7]~0_combout\ & (\KB0|OUT1|Mux6~6_combout\)) # (!\operador[7]~0_combout\ & ((operador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux6~6_combout\,
	datab => operador(0),
	datac => \operador[7]~0_combout\,
	combout => operador(0));

-- Location: LCCOMB_X25_Y14_N12
\operador[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- operador(5) = (\operador[7]~0_combout\ & ((\KB0|OUT1|Mux1~9_combout\))) # (!\operador[7]~0_combout\ & (operador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(5),
	datac => \KB0|OUT1|Mux1~9_combout\,
	datad => \operador[7]~0_combout\,
	combout => operador(5));

-- Location: LCCOMB_X22_Y14_N4
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (operador(0) & (\KB0|OUT1|Mux6~6_combout\ & (\KB0|OUT1|Mux1~9_combout\ $ (!operador(5))))) # (!operador(0) & (!\KB0|OUT1|Mux6~6_combout\ & (\KB0|OUT1|Mux1~9_combout\ $ (!operador(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(0),
	datab => \KB0|OUT1|Mux6~6_combout\,
	datac => \KB0|OUT1|Mux1~9_combout\,
	datad => operador(5),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X22_Y13_N4
\operador[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- operador(1) = (\operador[7]~0_combout\ & (\KB0|OUT1|Mux5~6_combout\)) # (!\operador[7]~0_combout\ & ((operador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|OUT1|Mux5~6_combout\,
	datac => \operador[7]~0_combout\,
	datad => operador(1),
	combout => operador(1));

-- Location: LCCOMB_X22_Y14_N16
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~0_combout\ & (\KB0|OUT1|Mux5~6_combout\ $ (!operador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~0_combout\,
	datac => \KB0|OUT1|Mux5~6_combout\,
	datad => operador(1),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X22_Y14_N14
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\operador[7]~0_combout\) # ((\Equal2~4_combout\ & \estado.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \estado.S3~q\,
	datad => \operador[7]~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X22_Y14_N31
\estado.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK10|clk_sig~clkctrl_outclk\,
	asdata => \Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S3~q\);

-- Location: LCCOMB_X22_Y13_N12
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = operador(1) $ (\KB0|OUT1|Mux5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => operador(1),
	datad => \KB0|OUT1|Mux5~6_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X22_Y14_N30
\dato2[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato2[7]~0_combout\ = (\estado.S3~q\ & (((\Equal2~5_combout\) # (!\Equal2~0_combout\)) # (!\Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~0_combout\,
	datac => \estado.S3~q\,
	datad => \Equal2~5_combout\,
	combout => \dato2[7]~0_combout\);

-- Location: LCCOMB_X22_Y13_N20
\dato2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato2(1) = (\dato2[7]~0_combout\ & ((\KB0|OUT1|Mux5~6_combout\))) # (!\dato2[7]~0_combout\ & (dato2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato2(1),
	datac => \dato2[7]~0_combout\,
	datad => \KB0|OUT1|Mux5~6_combout\,
	combout => dato2(1));

-- Location: LCCOMB_X22_Y14_N22
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = \KB0|OUT1|Mux5~6_combout\ $ (dato2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KB0|OUT1|Mux5~6_combout\,
	datad => dato2(1),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X23_Y13_N14
\dato2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato2(5) = (\dato2[7]~0_combout\ & (\KB0|OUT1|Mux1~9_combout\)) # (!\dato2[7]~0_combout\ & ((dato2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|OUT1|Mux1~9_combout\,
	datac => dato2(5),
	datad => \dato2[7]~0_combout\,
	combout => dato2(5));

-- Location: LCCOMB_X23_Y13_N28
\dato2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato2(0) = (\dato2[7]~0_combout\ & ((\KB0|OUT1|Mux6~6_combout\))) # (!\dato2[7]~0_combout\ & (dato2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato2[7]~0_combout\,
	datab => dato2(0),
	datad => \KB0|OUT1|Mux6~6_combout\,
	combout => dato2(0));

-- Location: LCCOMB_X22_Y14_N28
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (dato2(5) & (\KB0|OUT1|Mux1~9_combout\ & (dato2(0) $ (!\KB0|OUT1|Mux6~6_combout\)))) # (!dato2(5) & (!\KB0|OUT1|Mux1~9_combout\ & (dato2(0) $ (!\KB0|OUT1|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(5),
	datab => dato2(0),
	datac => \KB0|OUT1|Mux1~9_combout\,
	datad => \KB0|OUT1|Mux6~6_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X23_Y14_N20
\dato2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato2(3) = (\dato2[7]~0_combout\ & ((\KB0|OUT1|Mux3~5_combout\))) # (!\dato2[7]~0_combout\ & (dato2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato2(3),
	datac => \KB0|OUT1|Mux3~5_combout\,
	datad => \dato2[7]~0_combout\,
	combout => dato2(3));

-- Location: LCCOMB_X24_Y13_N0
\dato2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato2(6) = (\dato2[7]~0_combout\ & (\KB0|OUT1|Mux0~1_combout\)) # (!\dato2[7]~0_combout\ & ((dato2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KB0|OUT1|Mux0~1_combout\,
	datac => \dato2[7]~0_combout\,
	datad => dato2(6),
	combout => dato2(6));

-- Location: LCCOMB_X22_Y14_N8
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (dato2(3) & (\KB0|OUT1|Mux3~5_combout\ & (dato2(6) $ (!\KB0|OUT1|Mux0~1_combout\)))) # (!dato2(3) & (!\KB0|OUT1|Mux3~5_combout\ & (dato2(6) $ (!\KB0|OUT1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(3),
	datab => dato2(6),
	datac => \KB0|OUT1|Mux0~1_combout\,
	datad => \KB0|OUT1|Mux3~5_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X23_Y12_N30
\dato2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato2(2) = (\dato2[7]~0_combout\ & ((\KB0|OUT1|Mux4~8_combout\))) # (!\dato2[7]~0_combout\ & (dato2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(2),
	datac => \dato2[7]~0_combout\,
	datad => \KB0|OUT1|Mux4~8_combout\,
	combout => dato2(2));

-- Location: LCCOMB_X22_Y13_N10
\dato2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- dato2(4) = (\dato2[7]~0_combout\ & ((\KB0|OUT1|Mux2~7_combout\))) # (!\dato2[7]~0_combout\ & (dato2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(4),
	datac => \dato2[7]~0_combout\,
	datad => \KB0|OUT1|Mux2~7_combout\,
	combout => dato2(4));

-- Location: LCCOMB_X22_Y14_N12
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (dato2(2) & (\KB0|OUT1|Mux4~8_combout\ & (dato2(4) $ (!\KB0|OUT1|Mux2~7_combout\)))) # (!dato2(2) & (!\KB0|OUT1|Mux4~8_combout\ & (dato2(4) $ (!\KB0|OUT1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(2),
	datab => \KB0|OUT1|Mux4~8_combout\,
	datac => dato2(4),
	datad => \KB0|OUT1|Mux2~7_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (!\Equal3~3_combout\ & (\Equal3~0_combout\ & (\Equal3~2_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~2_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X22_Y14_N6
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\estado.S3~q\ & (((\estado.S4~q\ & \Equal3~4_combout\)) # (!\Equal2~4_combout\))) # (!\estado.S3~q\ & (((\estado.S4~q\ & \Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S3~q\,
	datab => \Equal2~4_combout\,
	datac => \estado.S4~q\,
	datad => \Equal3~4_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X22_Y14_N7
\estado.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK10|clk_sig~q\,
	d => \Selector4~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S4~q\);

-- Location: LCCOMB_X22_Y14_N18
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado.S4~q\ & (\Equal3~4_combout\ & ((\estado.S1~q\) # (!\Selector0~3_combout\)))) # (!\estado.S4~q\ & ((\estado.S1~q\) # ((!\Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => \estado.S1~q\,
	datac => \Selector0~3_combout\,
	datad => \Equal3~4_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X23_Y13_N1
\estado.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK10|clk_sig~clkctrl_outclk\,
	asdata => \Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S1~q\);

-- Location: LCCOMB_X19_Y8_N16
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado.S2~q\) # (!\estado.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.S1~q\,
	datad => \estado.S2~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X22_Y14_N10
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\estado.S4~q\ & ((\Equal3~4_combout\) # ((\Equal2~4_combout\ & \estado.S3~q\)))) # (!\estado.S4~q\ & (\Equal2~4_combout\ & (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => \Equal2~4_combout\,
	datac => \estado.S3~q\,
	datad => \Equal3~4_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
\Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\Selector0~0_combout\) # ((\Selector0~1_combout\) # ((\Selector0~3_combout\ & !\estado.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector0~1_combout\,
	datac => \Selector0~3_combout\,
	datad => \estado.S1~q\,
	combout => \Selector0~4_combout\);

-- Location: CLKCTRL_G5
\Selector0~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~4clkctrl_outclk\);

-- Location: LCCOMB_X19_Y8_N24
\line1[88]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(88) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector12~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1(88),
	datac => \Selector12~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(88));

-- Location: LCCOMB_X19_Y8_N14
\line1_buffer[88]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(88) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(88))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1_buffer(88))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1(88),
	datac => line1_buffer(88),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(88));

-- Location: LCCOMB_X19_Y8_N26
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.S4~q\) # (!\estado.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S1~q\,
	datac => \estado.S4~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\line1[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(56) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector9~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1(56),
	datab => \Selector9~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(56));

-- Location: LCCOMB_X19_Y8_N4
\line1_buffer[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(56) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(56))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1_buffer(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1(56),
	datac => line1_buffer(56),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(56));

-- Location: LCCOMB_X19_Y8_N10
\DUT|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~1_combout\ = (\DUT|ptr\(1) & (((line1_buffer(56)) # (\DUT|ptr\(0))))) # (!\DUT|ptr\(1) & (line1_buffer(88) & ((!\DUT|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line1_buffer(88),
	datac => line1_buffer(56),
	datad => \DUT|ptr\(0),
	combout => \DUT|Mux14~1_combout\);

-- Location: LCCOMB_X21_Y8_N16
\line1[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(68) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\estado.S2~q\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S2~q\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line1(68),
	combout => line1(68));

-- Location: LCCOMB_X21_Y8_N24
\line1_buffer[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(68) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(68)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1_buffer(68),
	datac => line1(68),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(68));

-- Location: LCCOMB_X21_Y8_N18
\line1[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(44) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\estado.S3~q\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1(44),
	datac => \estado.S3~q\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(44));

-- Location: LCCOMB_X21_Y8_N22
\line1_buffer[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(44) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(44)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(44),
	datac => line1(44),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(44));

-- Location: LCCOMB_X19_Y8_N0
\DUT|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~2_combout\ = (\DUT|Mux14~1_combout\ & (((line1_buffer(68))) # (!\DUT|ptr\(0)))) # (!\DUT|Mux14~1_combout\ & (\DUT|ptr\(0) & ((line1_buffer(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux14~1_combout\,
	datab => \DUT|ptr\(0),
	datac => line1_buffer(68),
	datad => line1_buffer(44),
	combout => \DUT|Mux14~2_combout\);

-- Location: LCCOMB_X21_Y8_N2
\DUT|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~3_combout\ = ((\DUT|ptr\(0) & line1_buffer(44))) # (!\DUT|ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(0),
	datac => line1_buffer(44),
	combout => \DUT|Mux14~3_combout\);

-- Location: LCCOMB_X21_Y8_N20
\DUT|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~4_combout\ = (\DUT|ptr\(2) & ((\DUT|Mux14~2_combout\) # ((\DUT|ptr\(3))))) # (!\DUT|ptr\(2) & (((\DUT|Mux14~3_combout\ & !\DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux14~2_combout\,
	datab => \DUT|Mux14~3_combout\,
	datac => \DUT|ptr\(2),
	datad => \DUT|ptr\(3),
	combout => \DUT|Mux14~4_combout\);

-- Location: LCCOMB_X21_Y10_N20
\line2[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(72) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\estado.S4~q\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(72),
	datac => \estado.S4~q\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(72));

-- Location: LCCOMB_X21_Y10_N14
\line2_buffer[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(72) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(72)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(72),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(72),
	combout => line2_buffer(72));

-- Location: LCCOMB_X21_Y9_N18
\line1[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(72) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\estado.S1~q\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S1~q\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line1(72),
	combout => line1(72));

-- Location: LCCOMB_X21_Y9_N8
\line1_buffer[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(72) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(72)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1_buffer(72),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line1(72),
	combout => line1_buffer(72));

-- Location: LCCOMB_X19_Y8_N22
\DUT|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~5_combout\ = (\DUT|ptr\(1) & ((\DUT|ptr\(0)) # ((line1_buffer(88))))) # (!\DUT|ptr\(1) & (!\DUT|ptr\(0) & ((line1_buffer(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(0),
	datac => line1_buffer(88),
	datad => line1_buffer(72),
	combout => \DUT|Mux14~5_combout\);

-- Location: LCCOMB_X18_Y8_N28
\line1[96]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(96) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((!\estado.S2~q\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(96)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1(96),
	datac => \estado.S2~q\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(96));

-- Location: LCCOMB_X18_Y8_N10
\line1_buffer[96]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(96) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(96)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(96)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(96),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line1(96),
	combout => line1_buffer(96));

-- Location: LCCOMB_X19_Y8_N12
\DUT|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~6_combout\ = (\DUT|ptr\(0) & ((\DUT|Mux14~5_combout\ & ((line1_buffer(96)))) # (!\DUT|Mux14~5_combout\ & (line2_buffer(72))))) # (!\DUT|ptr\(0) & (((\DUT|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(72),
	datab => \DUT|ptr\(0),
	datac => \DUT|Mux14~5_combout\,
	datad => line1_buffer(96),
	combout => \DUT|Mux14~6_combout\);

-- Location: LCCOMB_X18_Y8_N12
\DUT|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~0_combout\ = (!\DUT|ptr\(0) & ((\DUT|ptr\(1) & ((line1_buffer(56)))) # (!\DUT|ptr\(1) & (line1_buffer(68)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => line1_buffer(68),
	datac => line1_buffer(56),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux14~0_combout\);

-- Location: LCCOMB_X18_Y8_N6
\DUT|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux14~7_combout\ = (\DUT|Mux14~4_combout\ & (((\DUT|Mux14~6_combout\)) # (!\DUT|ptr\(3)))) # (!\DUT|Mux14~4_combout\ & (\DUT|ptr\(3) & ((\DUT|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux14~4_combout\,
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux14~6_combout\,
	datad => \DUT|Mux14~0_combout\,
	combout => \DUT|Mux14~7_combout\);

-- Location: LCCOMB_X21_Y10_N0
\DUT|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~1_combout\ = (\DUT|ptr\(1) & (line2_buffer(72) & \DUT|ptr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|ptr\(1),
	datac => line2_buffer(72),
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux22~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (!\estado.S4~q\ & \KB0|OUT1|Mux2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S4~q\,
	datad => \KB0|OUT1|Mux2~7_combout\,
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X24_Y13_N14
\line2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(4) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector66~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~0_combout\,
	datab => line2(4),
	datac => \Selector0~4clkctrl_outclk\,
	combout => line2(4));

-- Location: LCCOMB_X24_Y13_N2
\line2_buffer[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(4) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(4))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(4),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2_buffer(4),
	combout => line2_buffer(4));

-- Location: LCCOMB_X21_Y13_N24
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!operador(3) & dato2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => operador(3),
	datad => dato2(4),
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X25_Y14_N6
\Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (operador(0) & (operador(6) & (!operador(2) & operador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(0),
	datab => operador(6),
	datac => operador(2),
	datad => operador(1),
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X25_Y14_N8
\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (!operador(0) & (operador(6) & (!operador(2) & !operador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(0),
	datab => operador(6),
	datac => operador(2),
	datad => operador(1),
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X25_Y14_N16
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (operador(0) & (!operador(6) & (operador(2) $ (operador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(0),
	datab => operador(6),
	datac => operador(2),
	datad => operador(1),
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X25_Y14_N18
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (operador(4) & (((\Mux28~7_combout\)) # (!operador(3)))) # (!operador(4) & (operador(3) & ((\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(3),
	datac => \Mux28~7_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (operador(5) & ((\Mux30~0_combout\ & ((operador(3)))) # (!\Mux30~0_combout\ & (\Mux28~10_combout\ & !operador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~10_combout\,
	datab => \Mux30~0_combout\,
	datac => operador(3),
	datad => operador(5),
	combout => \Mux30~1_combout\);

-- Location: CLKCTRL_G6
\Mux30~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux30~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux30~1clkctrl_outclk\);

-- Location: LCCOMB_X21_Y10_N2
\case4[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- case4(4) = (GLOBAL(\Mux30~1clkctrl_outclk\) & (\Mux34~0_combout\)) # (!GLOBAL(\Mux30~1clkctrl_outclk\) & ((case4(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux34~0_combout\,
	datac => case4(4),
	datad => \Mux30~1clkctrl_outclk\,
	combout => case4(4));

-- Location: LCCOMB_X21_Y10_N4
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (case4(4) & \estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => case4(4),
	datad => \estado.S4~q\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X21_Y10_N16
\line2[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(52) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector56~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~0_combout\,
	datab => line2(52),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(52));

-- Location: LCCOMB_X21_Y10_N10
\line2_buffer[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(52) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(52)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(52),
	datac => line2(52),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(52));

-- Location: LCCOMB_X21_Y10_N26
\DUT|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~2_combout\ = (\DUT|ptr\(2) & (\DUT|ptr\(1) & ((line2_buffer(52))))) # (!\DUT|ptr\(2) & (!\DUT|ptr\(1) & (line2_buffer(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|ptr\(1),
	datac => line2_buffer(4),
	datad => line2_buffer(52),
	combout => \DUT|Mux22~2_combout\);

-- Location: LCCOMB_X21_Y10_N12
\DUT|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~3_combout\ = (\DUT|ptr\(0) & ((\DUT|Mux22~1_combout\) # ((\DUT|ptr\(3))))) # (!\DUT|ptr\(0) & (((\DUT|Mux22~2_combout\ & !\DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|Mux22~1_combout\,
	datac => \DUT|Mux22~2_combout\,
	datad => \DUT|ptr\(3),
	combout => \DUT|Mux22~3_combout\);

-- Location: LCCOMB_X25_Y14_N22
\Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (!operador(1) & (((operador(0) & !operador(2))) # (!operador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(0),
	datab => operador(2),
	datac => operador(3),
	datad => operador(1),
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X24_Y12_N22
\ALU0|M4B|HA0|s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|HA0|s1~combout\ = (dato2(0) & (dato1(1) $ (((dato1(0) & dato2(1)))))) # (!dato2(0) & (dato1(0) & (dato2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(0),
	datab => dato1(0),
	datac => dato2(1),
	datad => dato1(1),
	combout => \ALU0|M4B|HA0|s1~combout\);

-- Location: LCCOMB_X24_Y12_N10
\ALU0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~2_combout\ = (dato2(0) & ((dato1(1) $ (dato2(1))) # (!dato1(0)))) # (!dato2(0) & ((dato1(0)) # (dato1(1) $ (dato2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(0),
	datab => dato1(1),
	datac => dato2(1),
	datad => dato1(0),
	combout => \ALU0|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y12_N2
\ALU0|C4B|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|C4B|LessThan0~2_combout\ = (dato2(2) & (dato1(2) & (dato1(3) $ (!dato2(3))))) # (!dato2(2) & (!dato1(2) & (dato1(3) $ (!dato2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(2),
	datab => dato1(2),
	datac => dato1(3),
	datad => dato2(3),
	combout => \ALU0|C4B|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y12_N24
\ALU0|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~6_combout\ = (operador(6) & ((operador(4)) # ((\ALU0|Mux0~2_combout\) # (!\ALU0|C4B|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(6),
	datac => \ALU0|Mux0~2_combout\,
	datad => \ALU0|C4B|LessThan0~2_combout\,
	combout => \ALU0|Mux0~6_combout\);

-- Location: LCCOMB_X24_Y12_N28
\ALU0|C4B|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|C4B|LessThan0~0_combout\ = (dato2(3) & (((!dato1(2) & dato2(2))) # (!dato1(3)))) # (!dato2(3) & (!dato1(2) & (dato2(2) & !dato1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(2),
	datab => dato2(2),
	datac => dato2(3),
	datad => dato1(3),
	combout => \ALU0|C4B|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\ALU0|C4B|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|C4B|LessThan0~1_combout\ = (dato1(1) & (!dato1(0) & (dato2(0) & dato2(1)))) # (!dato1(1) & ((dato2(1)) # ((!dato1(0) & dato2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(0),
	datab => dato1(1),
	datac => dato2(0),
	datad => dato2(1),
	combout => \ALU0|C4B|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y12_N16
\ALU0|C4B|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|C4B|LessThan0~3_combout\ = (\ALU0|C4B|LessThan0~0_combout\) # ((\ALU0|C4B|LessThan0~1_combout\ & \ALU0|C4B|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|C4B|LessThan0~0_combout\,
	datac => \ALU0|C4B|LessThan0~1_combout\,
	datad => \ALU0|C4B|LessThan0~2_combout\,
	combout => \ALU0|C4B|LessThan0~3_combout\);

-- Location: IOIBUF_X34_Y12_N22
\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X24_Y12_N6
\ALU0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~1_combout\ = (dato2(0) & ((\cin~input_o\) # (dato1(0) $ (operador(2))))) # (!dato2(0) & (\cin~input_o\ & (dato1(0) $ (operador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(0),
	datab => \cin~input_o\,
	datac => dato1(0),
	datad => operador(2),
	combout => \ALU0|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y13_N20
\ALU0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~0_combout\ = dato2(1) $ (!dato1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato2(1),
	datad => dato1(1),
	combout => \ALU0|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\ALU0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~2_combout\ = (operador(6) & (((operador(4))))) # (!operador(6) & (\ALU0|Mux1~1_combout\ $ (((!\ALU0|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~1_combout\,
	datab => operador(6),
	datac => operador(4),
	datad => \ALU0|Mux1~0_combout\,
	combout => \ALU0|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y12_N26
\ALU0|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux1~3_combout\ = (\ALU0|Mux0~6_combout\ & ((\ALU0|Mux1~2_combout\ & (\ALU0|M4B|HA0|s1~combout\)) # (!\ALU0|Mux1~2_combout\ & ((!\ALU0|C4B|LessThan0~3_combout\))))) # (!\ALU0|Mux0~6_combout\ & (((\ALU0|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|HA0|s1~combout\,
	datab => \ALU0|Mux0~6_combout\,
	datac => \ALU0|C4B|LessThan0~3_combout\,
	datad => \ALU0|Mux1~2_combout\,
	combout => \ALU0|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y13_N22
\ALU0|M4B|Pm8b[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|Pm8b\(0) = (dato1(0) & dato2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(0),
	datad => dato2(0),
	combout => \ALU0|M4B|Pm8b\(0));

-- Location: LCCOMB_X23_Y13_N6
\ALU0|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~3_combout\ = \cin~input_o\ $ (!dato2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cin~input_o\,
	datad => dato2(0),
	combout => \ALU0|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y12_N14
\ALU0|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~4_combout\ = (operador(6) & (((operador(4))))) # (!operador(6) & (\ALU0|Mux0~3_combout\ $ ((!dato1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux0~3_combout\,
	datab => dato1(0),
	datac => operador(4),
	datad => operador(6),
	combout => \ALU0|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y12_N18
\ALU0|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux0~5_combout\ = (\ALU0|Mux0~6_combout\ & ((\ALU0|Mux0~4_combout\ & (\ALU0|M4B|Pm8b\(0))) # (!\ALU0|Mux0~4_combout\ & ((\ALU0|C4B|LessThan0~3_combout\))))) # (!\ALU0|Mux0~6_combout\ & (((\ALU0|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|Pm8b\(0),
	datab => \ALU0|Mux0~6_combout\,
	datac => \ALU0|C4B|LessThan0~3_combout\,
	datad => \ALU0|Mux0~4_combout\,
	combout => \ALU0|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y10_N10
\Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (dato1(4) & (operador(6) & ((!\ALU0|Mux0~5_combout\) # (!\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~3_combout\,
	datab => dato1(4),
	datac => \ALU0|Mux0~5_combout\,
	datad => operador(6),
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X24_Y10_N8
\Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (\Selector44~1_combout\) # ((!operador(4) & ((\Selector44~2_combout\) # (!operador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~1_combout\,
	datab => operador(0),
	datac => \Selector44~2_combout\,
	datad => operador(4),
	combout => \Selector44~3_combout\);

-- Location: LCCOMB_X24_Y10_N18
\ALU0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~0_combout\ = (!operador(3) & (!operador(2) & operador(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => operador(3),
	datac => operador(2),
	datad => operador(6),
	combout => \ALU0|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y13_N30
\ALU0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~1_combout\ = (operador(1) & !operador(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => operador(1),
	datad => operador(4),
	combout => \ALU0|Mux3~1_combout\);

-- Location: LCCOMB_X25_Y12_N16
\ALU0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux3~2_combout\ = (operador(0) & (\ALU0|Mux3~0_combout\ & (\ALU0|Mux3~1_combout\ & operador(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(0),
	datab => \ALU0|Mux3~0_combout\,
	datac => \ALU0|Mux3~1_combout\,
	datad => operador(5),
	combout => \ALU0|Mux3~2_combout\);

-- Location: CLKCTRL_G8
\ALU0|Mux3~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALU0|Mux3~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALU0|Mux3~2clkctrl_outclk\);

-- Location: LCCOMB_X23_Y13_N20
\ALU0|M4B|FA0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA0|Cout~0_combout\ = (dato1(1) & dato2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato1(1),
	datad => dato2(0),
	combout => \ALU0|M4B|FA0|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N22
\ALU0|M4B|FA0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA0|Cout~1_combout\ = (dato2(1) & (\ALU0|M4B|FA0|Cout~0_combout\ & ((dato1(0)) # (dato1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(0),
	datab => dato2(1),
	datac => \ALU0|M4B|FA0|Cout~0_combout\,
	datad => dato1(2),
	combout => \ALU0|M4B|FA0|Cout~1_combout\);

-- Location: LCCOMB_X23_Y11_N0
\ALU0|M4B|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~2_combout\ = (dato2(1) & dato1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato2(1),
	datad => dato1(2),
	combout => \ALU0|M4B|comb~2_combout\);

-- Location: LCCOMB_X23_Y11_N30
\ALU0|M4B|FA1|HA2|s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA1|HA2|s1~combout\ = \ALU0|M4B|FA0|Cout~1_combout\ $ (\ALU0|M4B|comb~2_combout\ $ (((dato2(0) & dato1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(0),
	datab => dato1(3),
	datac => \ALU0|M4B|FA0|Cout~1_combout\,
	datad => \ALU0|M4B|comb~2_combout\,
	combout => \ALU0|M4B|FA1|HA2|s1~combout\);

-- Location: LCCOMB_X23_Y11_N4
\ALU0|M4B|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~3_combout\ = (dato1(1) & dato2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(1),
	datac => dato2(2),
	combout => \ALU0|M4B|comb~3_combout\);

-- Location: LCCOMB_X23_Y11_N2
\ALU0|M4B|FA0|HA2|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA0|HA2|s1~0_combout\ = (dato1(1) & dato2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato1(1),
	datad => dato2(1),
	combout => \ALU0|M4B|FA0|HA2|s1~0_combout\);

-- Location: LCCOMB_X23_Y11_N12
\ALU0|M4B|FA0|HA2|s1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA0|HA2|s1~1_combout\ = (dato2(0) & (dato1(2) $ (((!dato1(0) & \ALU0|M4B|FA0|HA2|s1~0_combout\))))) # (!dato2(0) & (((\ALU0|M4B|FA0|HA2|s1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(0),
	datab => dato1(2),
	datac => dato1(0),
	datad => \ALU0|M4B|FA0|HA2|s1~0_combout\,
	combout => \ALU0|M4B|FA0|HA2|s1~1_combout\);

-- Location: LCCOMB_X23_Y11_N20
\ALU0|M4B|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~0_combout\ = (dato1(0) & dato2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato1(0),
	datad => dato2(2),
	combout => \ALU0|M4B|comb~0_combout\);

-- Location: LCCOMB_X23_Y11_N26
\ALU0|M4B|FA2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA2|Cout~0_combout\ = (\ALU0|M4B|FA1|HA2|s1~combout\ & ((\ALU0|M4B|comb~3_combout\) # ((\ALU0|M4B|FA0|HA2|s1~1_combout\ & \ALU0|M4B|comb~0_combout\)))) # (!\ALU0|M4B|FA1|HA2|s1~combout\ & (\ALU0|M4B|comb~3_combout\ & 
-- (\ALU0|M4B|FA0|HA2|s1~1_combout\ & \ALU0|M4B|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|FA1|HA2|s1~combout\,
	datab => \ALU0|M4B|comb~3_combout\,
	datac => \ALU0|M4B|FA0|HA2|s1~1_combout\,
	datad => \ALU0|M4B|comb~0_combout\,
	combout => \ALU0|M4B|FA2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\ALU0|M4B|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~6_combout\ = (dato1(2) & dato2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(2),
	datac => dato2(2),
	combout => \ALU0|M4B|comb~6_combout\);

-- Location: LCCOMB_X23_Y11_N24
\ALU0|M4B|FA1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA1|Cout~0_combout\ = (\ALU0|M4B|FA0|Cout~1_combout\ & ((\ALU0|M4B|comb~2_combout\) # ((dato2(0) & dato1(3))))) # (!\ALU0|M4B|FA0|Cout~1_combout\ & (dato2(0) & (dato1(3) & \ALU0|M4B|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(0),
	datab => \ALU0|M4B|FA0|Cout~1_combout\,
	datac => dato1(3),
	datad => \ALU0|M4B|comb~2_combout\,
	combout => \ALU0|M4B|FA1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y13_N26
\ALU0|M4B|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~5_combout\ = (dato1(3) & dato2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato1(3),
	datad => dato2(1),
	combout => \ALU0|M4B|comb~5_combout\);

-- Location: LCCOMB_X23_Y11_N8
\ALU0|M4B|FA3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA3|Cout~0_combout\ = (\ALU0|M4B|FA2|Cout~0_combout\ & ((\ALU0|M4B|comb~6_combout\) # (\ALU0|M4B|FA1|Cout~0_combout\ $ (\ALU0|M4B|comb~5_combout\)))) # (!\ALU0|M4B|FA2|Cout~0_combout\ & (\ALU0|M4B|comb~6_combout\ & (\ALU0|M4B|FA1|Cout~0_combout\ 
-- $ (\ALU0|M4B|comb~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|FA2|Cout~0_combout\,
	datab => \ALU0|M4B|comb~6_combout\,
	datac => \ALU0|M4B|FA1|Cout~0_combout\,
	datad => \ALU0|M4B|comb~5_combout\,
	combout => \ALU0|M4B|FA3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N14
\ALU0|M4B|FA4|HA1|s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA4|HA1|s1~combout\ = (dato1(3) & (dato2(2) $ (((dato2(1) & \ALU0|M4B|FA1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(1),
	datab => dato2(2),
	datac => dato1(3),
	datad => \ALU0|M4B|FA1|Cout~0_combout\,
	combout => \ALU0|M4B|FA4|HA1|s1~combout\);

-- Location: LCCOMB_X23_Y11_N18
\ALU0|M4B|FA2|HA2|s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA2|HA2|s1~combout\ = \ALU0|M4B|FA1|HA2|s1~combout\ $ (\ALU0|M4B|comb~3_combout\ $ (((\ALU0|M4B|FA0|HA2|s1~1_combout\ & \ALU0|M4B|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|FA1|HA2|s1~combout\,
	datab => \ALU0|M4B|comb~3_combout\,
	datac => \ALU0|M4B|FA0|HA2|s1~1_combout\,
	datad => \ALU0|M4B|comb~0_combout\,
	combout => \ALU0|M4B|FA2|HA2|s1~combout\);

-- Location: LCCOMB_X22_Y11_N6
\ALU0|M4B|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~4_combout\ = (dato1(1) & dato2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato1(1),
	datad => dato2(3),
	combout => \ALU0|M4B|comb~4_combout\);

-- Location: LCCOMB_X23_Y11_N6
\ALU0|M4B|FA3|HA2|s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA3|HA2|s1~combout\ = \ALU0|M4B|comb~5_combout\ $ (\ALU0|M4B|FA1|Cout~0_combout\ $ (\ALU0|M4B|FA2|Cout~0_combout\ $ (\ALU0|M4B|comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|comb~5_combout\,
	datab => \ALU0|M4B|FA1|Cout~0_combout\,
	datac => \ALU0|M4B|FA2|Cout~0_combout\,
	datad => \ALU0|M4B|comb~6_combout\,
	combout => \ALU0|M4B|FA3|HA2|s1~combout\);

-- Location: LCCOMB_X24_Y11_N16
\ALU0|M4B|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~1_combout\ = (dato1(0) & dato2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(0),
	datac => dato2(3),
	combout => \ALU0|M4B|comb~1_combout\);

-- Location: LCCOMB_X24_Y11_N8
\ALU0|M4B|FA5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA5|Cout~0_combout\ = (\ALU0|M4B|comb~4_combout\ & ((\ALU0|M4B|FA3|HA2|s1~combout\) # ((\ALU0|M4B|FA2|HA2|s1~combout\ & \ALU0|M4B|comb~1_combout\)))) # (!\ALU0|M4B|comb~4_combout\ & (\ALU0|M4B|FA2|HA2|s1~combout\ & (\ALU0|M4B|FA3|HA2|s1~combout\ 
-- & \ALU0|M4B|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|FA2|HA2|s1~combout\,
	datab => \ALU0|M4B|comb~4_combout\,
	datac => \ALU0|M4B|FA3|HA2|s1~combout\,
	datad => \ALU0|M4B|comb~1_combout\,
	combout => \ALU0|M4B|FA5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N6
\ALU0|M4B|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~8_combout\ = (dato2(3) & dato1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato2(3),
	datad => dato1(2),
	combout => \ALU0|M4B|comb~8_combout\);

-- Location: LCCOMB_X24_Y11_N14
\ALU0|M4B|FA6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA6|Cout~0_combout\ = (\ALU0|M4B|FA5|Cout~0_combout\ & ((\ALU0|M4B|comb~8_combout\) # (\ALU0|M4B|FA3|Cout~0_combout\ $ (\ALU0|M4B|FA4|HA1|s1~combout\)))) # (!\ALU0|M4B|FA5|Cout~0_combout\ & (\ALU0|M4B|comb~8_combout\ & 
-- (\ALU0|M4B|FA3|Cout~0_combout\ $ (\ALU0|M4B|FA4|HA1|s1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|FA3|Cout~0_combout\,
	datab => \ALU0|M4B|FA4|HA1|s1~combout\,
	datac => \ALU0|M4B|FA5|Cout~0_combout\,
	datad => \ALU0|M4B|comb~8_combout\,
	combout => \ALU0|M4B|FA6|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\ALU0|M4B|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~9_combout\ = (dato1(3) & dato2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato1(3),
	datac => dato2(2),
	combout => \ALU0|M4B|comb~9_combout\);

-- Location: LCCOMB_X23_Y11_N16
\ALU0|M4B|FA4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA4|Cout~0_combout\ = (\ALU0|M4B|comb~9_combout\ & ((\ALU0|M4B|FA3|Cout~0_combout\) # ((\ALU0|M4B|comb~5_combout\ & \ALU0|M4B|FA1|Cout~0_combout\)))) # (!\ALU0|M4B|comb~9_combout\ & (\ALU0|M4B|comb~5_combout\ & (\ALU0|M4B|FA1|Cout~0_combout\ & 
-- \ALU0|M4B|FA3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|comb~5_combout\,
	datab => \ALU0|M4B|FA1|Cout~0_combout\,
	datac => \ALU0|M4B|comb~9_combout\,
	datad => \ALU0|M4B|FA3|Cout~0_combout\,
	combout => \ALU0|M4B|FA4|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N30
\ALU0|M4B|FA7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA7|Cout~0_combout\ = (\ALU0|M4B|FA6|Cout~0_combout\ & ((\ALU0|M4B|FA4|Cout~0_combout\) # ((dato2(3) & dato1(3))))) # (!\ALU0|M4B|FA6|Cout~0_combout\ & (dato2(3) & (dato1(3) & \ALU0|M4B|FA4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(3),
	datab => dato1(3),
	datac => \ALU0|M4B|FA6|Cout~0_combout\,
	datad => \ALU0|M4B|FA4|Cout~0_combout\,
	combout => \ALU0|M4B|FA7|Cout~0_combout\);

-- Location: LCCOMB_X24_Y11_N4
\ALU0|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux10~0_combout\ = (operador(6) & \ALU0|M4B|FA7|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datad => \ALU0|M4B|FA7|Cout~0_combout\,
	combout => \ALU0|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y11_N26
\ALU0|solucion[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|solucion[7]$latch~combout\ = (GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & (\ALU0|solucion[7]$latch~combout\)) # (!GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & ((\ALU0|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datac => \ALU0|Mux3~2clkctrl_outclk\,
	datad => \ALU0|Mux10~0_combout\,
	combout => \ALU0|solucion[7]$latch~combout\);

-- Location: LCCOMB_X24_Y13_N20
\ALU0|A4B|FA0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|A4B|FA0|Cout~0_combout\ = (\cin~input_o\ & ((dato1(0)) # (dato2(0)))) # (!\cin~input_o\ & (dato1(0) & dato2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datac => dato1(0),
	datad => dato2(0),
	combout => \ALU0|A4B|FA0|Cout~0_combout\);

-- Location: LCCOMB_X25_Y11_N30
\ALU0|A4B|FA1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|A4B|FA1|Cout~0_combout\ = (dato2(1) & ((\ALU0|A4B|FA0|Cout~0_combout\) # (dato1(1)))) # (!dato2(1) & (\ALU0|A4B|FA0|Cout~0_combout\ & dato1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato2(1),
	datac => \ALU0|A4B|FA0|Cout~0_combout\,
	datad => dato1(1),
	combout => \ALU0|A4B|FA1|Cout~0_combout\);

-- Location: LCCOMB_X25_Y11_N2
\ALU0|A4B|FA2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|A4B|FA2|Cout~0_combout\ = (\ALU0|A4B|FA1|Cout~0_combout\ & ((dato1(2)) # (dato2(2)))) # (!\ALU0|A4B|FA1|Cout~0_combout\ & (dato1(2) & dato2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|A4B|FA1|Cout~0_combout\,
	datab => dato1(2),
	datad => dato2(2),
	combout => \ALU0|A4B|FA2|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\ALU0|S4B|FS0|Bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|S4B|FS0|Bout~combout\ = (\cin~input_o\ & ((dato2(0)) # (!dato1(0)))) # (!\cin~input_o\ & (!dato1(0) & dato2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datac => dato1(0),
	datad => dato2(0),
	combout => \ALU0|S4B|FS0|Bout~combout\);

-- Location: LCCOMB_X25_Y11_N28
\ALU0|S4B|FS1|Bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|S4B|FS1|Bout~combout\ = (\ALU0|S4B|FS0|Bout~combout\ & ((dato2(1)) # (!dato1(1)))) # (!\ALU0|S4B|FS0|Bout~combout\ & (dato2(1) & !dato1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|S4B|FS0|Bout~combout\,
	datac => dato2(1),
	datad => dato1(1),
	combout => \ALU0|S4B|FS1|Bout~combout\);

-- Location: LCCOMB_X25_Y11_N6
\ALU0|S4B|FS2|Bout\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|S4B|FS2|Bout~combout\ = (dato2(2) & ((\ALU0|S4B|FS1|Bout~combout\) # (!dato1(2)))) # (!dato2(2) & (!dato1(2) & \ALU0|S4B|FS1|Bout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(2),
	datab => dato1(2),
	datad => \ALU0|S4B|FS1|Bout~combout\,
	combout => \ALU0|S4B|FS2|Bout~combout\);

-- Location: LCCOMB_X25_Y11_N4
\ALU0|A4B|FA4|HA2|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|A4B|FA4|HA2|s1~0_combout\ = dato2(3) $ (dato1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(3),
	datac => dato1(3),
	combout => \ALU0|A4B|FA4|HA2|s1~0_combout\);

-- Location: LCCOMB_X26_Y11_N18
\ALU0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux5~0_combout\ = \ALU0|A4B|FA4|HA2|s1~0_combout\ $ (((operador(2) & ((\ALU0|S4B|FS2|Bout~combout\))) # (!operador(2) & (\ALU0|A4B|FA2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|A4B|FA2|Cout~0_combout\,
	datab => \ALU0|S4B|FS2|Bout~combout\,
	datac => \ALU0|A4B|FA4|HA2|s1~0_combout\,
	datad => operador(2),
	combout => \ALU0|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y11_N16
\ALU0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux5~1_combout\ = (operador(6) & (\ALU0|M4B|FA2|HA2|s1~combout\ $ (((\ALU0|M4B|comb~1_combout\))))) # (!operador(6) & (((\ALU0|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datab => \ALU0|M4B|FA2|HA2|s1~combout\,
	datac => \ALU0|Mux5~0_combout\,
	datad => \ALU0|M4B|comb~1_combout\,
	combout => \ALU0|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y11_N24
\ALU0|solucion[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|solucion[3]$latch~combout\ = (GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & (\ALU0|solucion[3]$latch~combout\)) # (!GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & ((\ALU0|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|Mux5~1_combout\,
	datad => \ALU0|Mux3~2clkctrl_outclk\,
	combout => \ALU0|solucion[3]$latch~combout\);

-- Location: LCCOMB_X25_Y11_N26
\ALU0|A4B|FA2|HA2|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|A4B|FA2|HA2|s1~0_combout\ = dato1(2) $ (dato2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(2),
	datad => dato2(2),
	combout => \ALU0|A4B|FA2|HA2|s1~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\ALU0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux4~0_combout\ = \ALU0|A4B|FA2|HA2|s1~0_combout\ $ (((operador(2) & (\ALU0|S4B|FS1|Bout~combout\)) # (!operador(2) & ((\ALU0|A4B|FA1|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|S4B|FS1|Bout~combout\,
	datab => \ALU0|A4B|FA2|HA2|s1~0_combout\,
	datac => \ALU0|A4B|FA1|Cout~0_combout\,
	datad => operador(2),
	combout => \ALU0|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y11_N22
\ALU0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux4~1_combout\ = (operador(6) & (\ALU0|M4B|comb~0_combout\ $ ((\ALU0|M4B|FA0|HA2|s1~1_combout\)))) # (!operador(6) & (((\ALU0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|comb~0_combout\,
	datab => \ALU0|M4B|FA0|HA2|s1~1_combout\,
	datac => \ALU0|Mux4~0_combout\,
	datad => operador(6),
	combout => \ALU0|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y11_N14
\ALU0|solucion[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|solucion[2]$latch~combout\ = (GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & ((\ALU0|solucion[2]$latch~combout\))) # (!GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & (\ALU0|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|Mux4~1_combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \ALU0|Mux3~2clkctrl_outclk\,
	combout => \ALU0|solucion[2]$latch~combout\);

-- Location: LCCOMB_X25_Y10_N24
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\ALU0|solucion[3]$latch~combout\ & ((\ALU0|solucion[2]$latch~combout\) # (\ALU0|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \ALU0|Mux1~3_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y10_N8
\ALU0|M4B|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|comb~7_combout\ = (dato2(3) & dato1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato2(3),
	datac => dato1(3),
	combout => \ALU0|M4B|comb~7_combout\);

-- Location: LCCOMB_X24_Y11_N0
\ALU0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux9~0_combout\ = (operador(6) & (\ALU0|M4B|FA4|Cout~0_combout\ $ (\ALU0|M4B|comb~7_combout\ $ (\ALU0|M4B|FA6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datab => \ALU0|M4B|FA4|Cout~0_combout\,
	datac => \ALU0|M4B|comb~7_combout\,
	datad => \ALU0|M4B|FA6|Cout~0_combout\,
	combout => \ALU0|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y11_N10
\ALU0|solucion[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|solucion[6]$latch~combout\ = (GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & (\ALU0|solucion[6]$latch~combout\)) # (!GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & ((\ALU0|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datac => \ALU0|Mux9~0_combout\,
	datad => \ALU0|Mux3~2clkctrl_outclk\,
	combout => \ALU0|solucion[6]$latch~combout\);

-- Location: LCCOMB_X24_Y11_N18
\ALU0|M4B|FA6|HA2|s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA6|HA2|s1~combout\ = \ALU0|M4B|comb~8_combout\ $ (\ALU0|M4B|FA5|Cout~0_combout\ $ (\ALU0|M4B|FA3|Cout~0_combout\ $ (\ALU0|M4B|FA4|HA1|s1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|comb~8_combout\,
	datab => \ALU0|M4B|FA5|Cout~0_combout\,
	datac => \ALU0|M4B|FA3|Cout~0_combout\,
	datad => \ALU0|M4B|FA4|HA1|s1~combout\,
	combout => \ALU0|M4B|FA6|HA2|s1~combout\);

-- Location: LCCOMB_X24_Y11_N12
\ALU0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux8~0_combout\ = (operador(6) & \ALU0|M4B|FA6|HA2|s1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datac => \ALU0|M4B|FA6|HA2|s1~combout\,
	combout => \ALU0|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y11_N20
\ALU0|solucion[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|solucion[5]$latch~combout\ = (GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & (\ALU0|solucion[5]$latch~combout\)) # (!GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & ((\ALU0|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|solucion[5]$latch~combout\,
	datac => \ALU0|Mux8~0_combout\,
	datad => \ALU0|Mux3~2clkctrl_outclk\,
	combout => \ALU0|solucion[5]$latch~combout\);

-- Location: LCCOMB_X24_Y11_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\ALU0|solucion[6]$latch~combout\ & !\ALU0|solucion[5]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y11_N12
\ALU0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~1_combout\ = (operador(2) & ((\ALU0|S4B|FS2|Bout~combout\ & ((dato2(3)) # (!dato1(3)))) # (!\ALU0|S4B|FS2|Bout~combout\ & (dato2(3) & !dato1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|S4B|FS2|Bout~combout\,
	datab => dato2(3),
	datac => operador(2),
	datad => dato1(3),
	combout => \ALU0|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y11_N0
\ALU0|M4B|FA5|HA2|s1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|M4B|FA5|HA2|s1~combout\ = \ALU0|M4B|comb~4_combout\ $ (\ALU0|M4B|FA3|HA2|s1~combout\ $ (((\ALU0|M4B|comb~1_combout\ & \ALU0|M4B|FA2|HA2|s1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|M4B|comb~4_combout\,
	datab => \ALU0|M4B|FA3|HA2|s1~combout\,
	datac => \ALU0|M4B|comb~1_combout\,
	datad => \ALU0|M4B|FA2|HA2|s1~combout\,
	combout => \ALU0|M4B|FA5|HA2|s1~combout\);

-- Location: LCCOMB_X25_Y11_N8
\ALU0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~0_combout\ = (!operador(2) & ((dato2(3) & ((\ALU0|A4B|FA2|Cout~0_combout\) # (dato1(3)))) # (!dato2(3) & (\ALU0|A4B|FA2|Cout~0_combout\ & dato1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(3),
	datab => \ALU0|A4B|FA2|Cout~0_combout\,
	datac => operador(2),
	datad => dato1(3),
	combout => \ALU0|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y11_N10
\ALU0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|Mux7~2_combout\ = (operador(6) & (((\ALU0|M4B|FA5|HA2|s1~combout\)))) # (!operador(6) & ((\ALU0|Mux7~1_combout\) # ((\ALU0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux7~1_combout\,
	datab => operador(6),
	datac => \ALU0|M4B|FA5|HA2|s1~combout\,
	datad => \ALU0|Mux7~0_combout\,
	combout => \ALU0|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y11_N14
\ALU0|solucion[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU0|solucion[4]$latch~combout\ = (GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & ((\ALU0|solucion[4]$latch~combout\))) # (!GLOBAL(\ALU0|Mux3~2clkctrl_outclk\) & (\ALU0|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux7~2_combout\,
	datac => \ALU0|solucion[4]$latch~combout\,
	datad => \ALU0|Mux3~2clkctrl_outclk\,
	combout => \ALU0|solucion[4]$latch~combout\);

-- Location: LCCOMB_X25_Y10_N10
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!\ALU0|solucion[7]$latch~combout\ & ((\LessThan2~0_combout\) # ((\ALU0|solucion[4]$latch~combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \ALU0|solucion[4]$latch~combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\LessThan2~1_combout\ & (((!operador(6) & !operador(2))) # (!operador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datab => \LessThan2~1_combout\,
	datac => operador(0),
	datad => operador(2),
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X22_Y10_N6
\Selector44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~5_combout\ = (operador(4)) # ((operador(2)) # (operador(3) $ (!operador(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(3),
	datac => operador(2),
	datad => operador(6),
	combout => \Selector44~5_combout\);

-- Location: LCCOMB_X22_Y10_N16
\Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~4_combout\ = (operador(6) & (((operador(2))))) # (!operador(6) & ((operador(4)) # ((operador(2) & \ALU0|solucion[7]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(6),
	datac => operador(2),
	datad => \ALU0|solucion[7]$latch~combout\,
	combout => \Selector44~4_combout\);

-- Location: LCCOMB_X22_Y10_N24
\Selector44~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~6_combout\ = (\Selector44~4_combout\) # (((\Selector44~5_combout\ & operador(1))) # (!operador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~5_combout\,
	datab => operador(1),
	datac => \Selector44~4_combout\,
	datad => operador(5),
	combout => \Selector44~6_combout\);

-- Location: LCCOMB_X21_Y10_N18
\Selector44~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~7_combout\ = (\estado.S4~q\ & ((\Selector44~3_combout\) # ((\Selector44~0_combout\) # (\Selector44~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => \Selector44~3_combout\,
	datac => \Selector44~0_combout\,
	datad => \Selector44~6_combout\,
	combout => \Selector44~7_combout\);

-- Location: LCCOMB_X21_Y10_N30
\line2[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(68) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector44~7_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~7_combout\,
	datac => line2(68),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(68));

-- Location: LCCOMB_X21_Y10_N8
\line2_buffer[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(68) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(68)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(68),
	datac => line2(68),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(68));

-- Location: LCCOMB_X21_Y14_N16
\DUT|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~0_combout\ = (!\DUT|ptr\(2) & (!\DUT|ptr\(1) & line2_buffer(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datac => \DUT|ptr\(1),
	datad => line2_buffer(68),
	combout => \DUT|Mux22~0_combout\);

-- Location: LCCOMB_X24_Y14_N14
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\estado.S1~q\ & dato1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S1~q\,
	datab => dato1(4),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\line2[124]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(124) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector20~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(124),
	datac => \Selector20~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(124));

-- Location: LCCOMB_X24_Y14_N26
\line2_buffer[124]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(124) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(124)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(124),
	datac => line2(124),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(124));

-- Location: LCCOMB_X19_Y13_N24
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\estado.S4~q\ & dato2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.S4~q\,
	datad => dato2(4),
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X19_Y13_N14
\line2[92]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(92) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector36~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(92)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(92),
	datac => \Selector36~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(92));

-- Location: LCCOMB_X19_Y13_N22
\line2_buffer[92]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(92) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(92)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(92)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(92),
	datac => line2(92),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(92));

-- Location: LCCOMB_X21_Y10_N22
\DUT|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~4_combout\ = (\DUT|ptr\(2) & (((\DUT|ptr\(1))))) # (!\DUT|ptr\(2) & ((\DUT|ptr\(1) & (line2_buffer(92))) # (!\DUT|ptr\(1) & ((line2_buffer(72))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => line2_buffer(92),
	datac => line2_buffer(72),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux22~4_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (operador(4) & ((\estado.S4~q\) # (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => operador(4),
	datad => \estado.S3~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X25_Y13_N2
\line2[108]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(108) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector28~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector28~0_combout\,
	datac => line2(108),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(108));

-- Location: LCCOMB_X25_Y13_N22
\line2_buffer[108]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(108) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(108)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(108),
	datac => line2(108),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(108));

-- Location: LCCOMB_X21_Y10_N28
\DUT|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~5_combout\ = (\DUT|ptr\(2) & ((\DUT|Mux22~4_combout\ & (line2_buffer(124))) # (!\DUT|Mux22~4_combout\ & ((line2_buffer(108)))))) # (!\DUT|ptr\(2) & (((\DUT|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => line2_buffer(124),
	datac => \DUT|Mux22~4_combout\,
	datad => line2_buffer(108),
	combout => \DUT|Mux22~5_combout\);

-- Location: LCCOMB_X21_Y10_N6
\DUT|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux22~6_combout\ = (\DUT|Mux22~3_combout\ & (((\DUT|Mux22~5_combout\)) # (!\DUT|ptr\(3)))) # (!\DUT|Mux22~3_combout\ & (\DUT|ptr\(3) & (\DUT|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux22~3_combout\,
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux22~0_combout\,
	datad => \DUT|Mux22~5_combout\,
	combout => \DUT|Mux22~6_combout\);

-- Location: LCCOMB_X22_Y7_N12
\DUT|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector20~3_combout\ = (\DUT|state.WRITE_LINE2~q\ & ((\DUT|Mux22~6_combout\) # ((\DUT|Mux14~7_combout\ & \DUT|state.WRITE_LINE1~q\)))) # (!\DUT|state.WRITE_LINE2~q\ & (\DUT|Mux14~7_combout\ & ((\DUT|state.WRITE_LINE1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.WRITE_LINE2~q\,
	datab => \DUT|Mux14~7_combout\,
	datac => \DUT|Mux22~6_combout\,
	datad => \DUT|state.WRITE_LINE1~q\,
	combout => \DUT|Selector20~3_combout\);

-- Location: LCCOMB_X19_Y8_N18
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\estado.S2~q\) # (\estado.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S2~q\,
	datac => \estado.S3~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X19_Y8_N30
\line1[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(48) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector15~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1(48),
	datac => \Selector15~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(48));

-- Location: LCCOMB_X19_Y8_N20
\line1_buffer[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(48) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(48))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1_buffer(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1(48),
	datab => line1_buffer(48),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(48));

-- Location: LCCOMB_X21_Y7_N6
\DUT|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~2_combout\ = (\DUT|ptr\(1) & ((\DUT|ptr\(3) & (line1_buffer(88))) # (!\DUT|ptr\(3) & ((line1_buffer(48)))))) # (!\DUT|ptr\(1) & (((\DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(88),
	datab => \DUT|ptr\(1),
	datac => line1_buffer(48),
	datad => \DUT|ptr\(3),
	combout => \DUT|Mux18~2_combout\);

-- Location: LCCOMB_X21_Y7_N20
\DUT|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~3_combout\ = (\DUT|Mux18~2_combout\ & (((!\DUT|ptr\(1) & !line1_buffer(72))) # (!\DUT|ptr\(0)))) # (!\DUT|Mux18~2_combout\ & (\DUT|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux18~2_combout\,
	datab => \DUT|ptr\(1),
	datac => \DUT|ptr\(0),
	datad => line1_buffer(72),
	combout => \DUT|Mux18~3_combout\);

-- Location: LCCOMB_X24_Y14_N12
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\estado.S3~q\) # (!\estado.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.S1~q\,
	datad => \estado.S3~q\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X24_Y14_N4
\line1[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(32) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector16~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1(32),
	datac => \Selector16~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(32));

-- Location: LCCOMB_X24_Y14_N16
\line1_buffer[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(32) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(32)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1_buffer(32),
	datac => line1(32),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(32));

-- Location: LCCOMB_X21_Y7_N30
\DUT|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~4_combout\ = (\DUT|ptr\(2) & (\DUT|ptr\(0))) # (!\DUT|ptr\(2) & (!\DUT|Mux18~3_combout\ & ((\DUT|ptr\(0)) # (line1_buffer(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|Mux18~3_combout\,
	datac => \DUT|ptr\(2),
	datad => line1_buffer(32),
	combout => \DUT|Mux18~4_combout\);

-- Location: LCCOMB_X19_Y8_N28
\DUT|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~5_combout\ = (\DUT|ptr\(1) & (!\DUT|ptr\(3) & ((line1_buffer(56))))) # (!\DUT|ptr\(1) & ((\DUT|ptr\(3)) # ((line1_buffer(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(3),
	datac => line1_buffer(88),
	datad => line1_buffer(56),
	combout => \DUT|Mux18~5_combout\);

-- Location: LCCOMB_X21_Y8_N28
\DUT|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~6_combout\ = (\DUT|Mux18~5_combout\) # ((\DUT|ptr\(3) & line1_buffer(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux18~5_combout\,
	datab => \DUT|ptr\(3),
	datad => line1_buffer(48),
	combout => \DUT|Mux18~6_combout\);

-- Location: LCCOMB_X24_Y14_N22
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado.S3~q\) # (\estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S3~q\,
	datad => \estado.S4~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\line1[112]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(112) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(112)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1(112),
	datac => \Selector8~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(112));

-- Location: LCCOMB_X24_Y14_N10
\line1_buffer[112]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(112) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(112)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(112)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(112),
	datac => line1(112),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(112));

-- Location: LCCOMB_X18_Y8_N16
\DUT|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~0_combout\ = (\DUT|ptr\(3) & (((\DUT|ptr\(1))))) # (!\DUT|ptr\(3) & ((\DUT|ptr\(1) & ((line1_buffer(48)))) # (!\DUT|ptr\(1) & (line1_buffer(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(32),
	datab => \DUT|ptr\(3),
	datac => line1_buffer(48),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux18~0_combout\);

-- Location: LCCOMB_X18_Y8_N14
\DUT|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~1_combout\ = (\DUT|ptr\(3) & ((\DUT|Mux18~0_combout\ & ((line1_buffer(112)))) # (!\DUT|Mux18~0_combout\ & (line1_buffer(96))))) # (!\DUT|ptr\(3) & (((\DUT|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(96),
	datab => line1_buffer(112),
	datac => \DUT|ptr\(3),
	datad => \DUT|Mux18~0_combout\,
	combout => \DUT|Mux18~1_combout\);

-- Location: LCCOMB_X21_Y7_N0
\DUT|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux18~7_combout\ = (\DUT|Mux18~4_combout\ & (((\DUT|Mux18~6_combout\)) # (!\DUT|ptr\(2)))) # (!\DUT|Mux18~4_combout\ & (\DUT|ptr\(2) & ((\DUT|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux18~4_combout\,
	datab => \DUT|ptr\(2),
	datac => \DUT|Mux18~6_combout\,
	datad => \DUT|Mux18~1_combout\,
	combout => \DUT|Mux18~7_combout\);

-- Location: LCCOMB_X23_Y10_N30
\Selector42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~4_combout\ = (operador(3) & (operador(2) & (!operador(6) & \ALU0|solucion[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(3),
	datab => operador(2),
	datac => operador(6),
	datad => \ALU0|solucion[7]$latch~combout\,
	combout => \Selector42~4_combout\);

-- Location: LCCOMB_X23_Y10_N4
\Selector48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~4_combout\ = (operador(4) & (((operador(0))))) # (!operador(4) & (((!operador(1) & !\Selector42~4_combout\)) # (!operador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(1),
	datac => \Selector42~4_combout\,
	datad => operador(0),
	combout => \Selector48~4_combout\);

-- Location: LCCOMB_X23_Y10_N22
\Selector48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~5_combout\ = (\estado.S4~q\ & ((\Selector48~4_combout\) # (!operador(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => operador(5),
	datad => \Selector48~4_combout\,
	combout => \Selector48~5_combout\);

-- Location: LCCOMB_X22_Y13_N22
\Selector48~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~6_combout\ = (\estado.S4~q\ & operador(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => operador(4),
	combout => \Selector48~6_combout\);

-- Location: LCCOMB_X23_Y9_N28
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (operador(6) & ((operador(3)) # ((\ALU0|Mux1~3_combout\ & \ALU0|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~3_combout\,
	datab => \ALU0|Mux0~5_combout\,
	datac => operador(6),
	datad => operador(3),
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X23_Y10_N0
\Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (operador(2)) # ((!operador(3) & ((dato1(0)) # (!operador(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datab => operador(2),
	datac => dato1(0),
	datad => operador(3),
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X23_Y9_N18
\Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~2_combout\ = (\Selector48~0_combout\) # ((\Selector48~1_combout\) # ((!operador(6) & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector48~1_combout\,
	datac => operador(6),
	datad => \LessThan2~1_combout\,
	combout => \Selector48~2_combout\);

-- Location: LCCOMB_X23_Y9_N8
\Selector48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~3_combout\ = (operador(1) & (!operador(4) & (\Selector48~2_combout\ & \estado.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datab => operador(4),
	datac => \Selector48~2_combout\,
	datad => \estado.S4~q\,
	combout => \Selector48~3_combout\);

-- Location: LCCOMB_X23_Y10_N20
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (operador(6) & (!operador(2) & (!operador(1) & operador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datab => operador(2),
	datac => operador(1),
	datad => operador(3),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X24_Y11_N2
\Decoder~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~6_combout\ = (\ALU0|solucion[7]$latch~combout\ & ((\ALU0|solucion[5]$latch~combout\))) # (!\ALU0|solucion[7]$latch~combout\ & (\ALU0|solucion[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datac => \ALU0|solucion[7]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Decoder~6_combout\);

-- Location: LCCOMB_X25_Y11_N20
\Decoder~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~7_combout\ = (\ALU0|solucion[3]$latch~combout\ & (\ALU0|solucion[5]$latch~combout\ & (\ALU0|solucion[4]$latch~combout\ & !\Decoder~6_combout\))) # (!\ALU0|solucion[3]$latch~combout\ & (!\ALU0|solucion[5]$latch~combout\ & 
-- (!\ALU0|solucion[4]$latch~combout\ & \Decoder~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[3]$latch~combout\,
	datab => \ALU0|solucion[5]$latch~combout\,
	datac => \ALU0|solucion[4]$latch~combout\,
	datad => \Decoder~6_combout\,
	combout => \Decoder~7_combout\);

-- Location: LCCOMB_X25_Y11_N18
\Decoder~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~8_combout\ = ((\ALU0|solucion[3]$latch~combout\ & (!\ALU0|solucion[2]$latch~combout\)) # (!\ALU0|solucion[3]$latch~combout\ & (\ALU0|solucion[2]$latch~combout\ & \ALU0|Mux1~3_combout\))) # (!\Decoder~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[3]$latch~combout\,
	datab => \ALU0|solucion[2]$latch~combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \Decoder~7_combout\,
	combout => \Decoder~8_combout\);

-- Location: LCCOMB_X24_Y9_N20
\Decoder~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~2_combout\ = (!\ALU0|solucion[5]$latch~combout\ & \ALU0|solucion[4]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU0|solucion[5]$latch~combout\,
	datad => \ALU0|solucion[4]$latch~combout\,
	combout => \Decoder~2_combout\);

-- Location: LCCOMB_X24_Y9_N18
\Decoder~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~3_combout\ = ((\ALU0|solucion[2]$latch~combout\ & (\ALU0|Mux1~3_combout\ & \ALU0|solucion[3]$latch~combout\)) # (!\ALU0|solucion[2]$latch~combout\ & ((!\ALU0|solucion[3]$latch~combout\)))) # (!\Decoder~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \Decoder~2_combout\,
	combout => \Decoder~3_combout\);

-- Location: LCCOMB_X24_Y9_N24
\Decoder~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~19_combout\ = (\ALU0|solucion[6]$latch~combout\) # ((\Decoder~3_combout\) # (\ALU0|solucion[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datab => \Decoder~3_combout\,
	datac => \ALU0|solucion[7]$latch~combout\,
	combout => \Decoder~19_combout\);

-- Location: LCCOMB_X25_Y9_N6
\Decoder~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~4_combout\ = ((\ALU0|solucion[4]$latch~combout\ & ((\ALU0|solucion[2]$latch~combout\) # (\ALU0|solucion[3]$latch~combout\))) # (!\ALU0|solucion[4]$latch~combout\ & ((!\ALU0|solucion[3]$latch~combout\)))) # (!\ALU0|solucion[5]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \ALU0|solucion[2]$latch~combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Decoder~4_combout\);

-- Location: LCCOMB_X25_Y9_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\ALU0|solucion[7]$latch~combout\ & !\ALU0|solucion[6]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU0|solucion[7]$latch~combout\,
	datad => \ALU0|solucion[6]$latch~combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\Decoder~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~5_combout\ = (\Decoder~4_combout\) # (((\ALU0|Mux1~3_combout\ & \ALU0|solucion[4]$latch~combout\)) # (!\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~3_combout\,
	datab => \Decoder~4_combout\,
	datac => \ALU0|solucion[4]$latch~combout\,
	datad => \Mux1~0_combout\,
	combout => \Decoder~5_combout\);

-- Location: LCCOMB_X25_Y9_N18
\Selector48~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~7_combout\ = (\Decoder~8_combout\ & (\Decoder~19_combout\ & (\Decoder~5_combout\ & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder~8_combout\,
	datab => \Decoder~19_combout\,
	datac => \Decoder~5_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Selector48~7_combout\);

-- Location: LCCOMB_X25_Y9_N8
\Decoder~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~15_combout\ = (\ALU0|solucion[3]$latch~combout\ & (((!\ALU0|Mux1~3_combout\)) # (!\ALU0|solucion[2]$latch~combout\))) # (!\ALU0|solucion[3]$latch~combout\ & (((!\ALU0|solucion[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Decoder~15_combout\);

-- Location: LCCOMB_X25_Y9_N26
\Decoder~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~16_combout\ = (\Decoder~15_combout\) # ((\ALU0|solucion[4]$latch~combout\ & ((\ALU0|solucion[5]$latch~combout\))) # (!\ALU0|solucion[4]$latch~combout\ & (\ALU0|solucion[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \Decoder~15_combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Decoder~16_combout\);

-- Location: LCCOMB_X24_Y11_N24
\Decoder~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~13_combout\ = (!\ALU0|solucion[6]$latch~combout\ & (!\ALU0|solucion[7]$latch~combout\ & !\ALU0|solucion[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datac => \ALU0|solucion[7]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Decoder~13_combout\);

-- Location: LCCOMB_X25_Y9_N24
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\ALU0|solucion[3]$latch~combout\ & !\ALU0|solucion[2]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X25_Y9_N30
\Decoder~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~14_combout\ = ((\ALU0|solucion[4]$latch~combout\ & ((!\LessThan4~0_combout\))) # (!\ALU0|solucion[4]$latch~combout\ & (!\LessThan2~0_combout\))) # (!\Decoder~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \Decoder~13_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan4~0_combout\,
	combout => \Decoder~14_combout\);

-- Location: LCCOMB_X25_Y9_N28
\Decoder~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~11_combout\ = (((\ALU0|solucion[7]$latch~combout\) # (\ALU0|solucion[6]$latch~combout\)) # (!\ALU0|solucion[5]$latch~combout\)) # (!\ALU0|solucion[4]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \ALU0|solucion[5]$latch~combout\,
	datac => \ALU0|solucion[7]$latch~combout\,
	datad => \ALU0|solucion[6]$latch~combout\,
	combout => \Decoder~11_combout\);

-- Location: LCCOMB_X25_Y9_N22
\Decoder~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~12_combout\ = (\Decoder~11_combout\) # ((\ALU0|solucion[2]$latch~combout\ & (\ALU0|solucion[3]$latch~combout\)) # (!\ALU0|solucion[2]$latch~combout\ & (!\ALU0|solucion[3]$latch~combout\ & !\ALU0|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \Decoder~11_combout\,
	combout => \Decoder~12_combout\);

-- Location: LCCOMB_X25_Y9_N12
\Selector48~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~8_combout\ = (\Decoder~14_combout\ & (\Decoder~12_combout\ & ((\Decoder~16_combout\) # (!\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder~16_combout\,
	datab => \Mux1~0_combout\,
	datac => \Decoder~14_combout\,
	datad => \Decoder~12_combout\,
	combout => \Selector48~8_combout\);

-- Location: LCCOMB_X24_Y9_N16
\Decoder~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~9_combout\ = (\ALU0|solucion[5]$latch~combout\) # ((\ALU0|solucion[7]$latch~combout\) # ((\ALU0|solucion[4]$latch~combout\) # (!\ALU0|solucion[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[5]$latch~combout\,
	datab => \ALU0|solucion[7]$latch~combout\,
	datac => \ALU0|solucion[6]$latch~combout\,
	datad => \ALU0|solucion[4]$latch~combout\,
	combout => \Decoder~9_combout\);

-- Location: LCCOMB_X24_Y9_N14
\Decoder~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~10_combout\ = (\Decoder~9_combout\) # ((!\ALU0|solucion[3]$latch~combout\ & ((!\ALU0|Mux1~3_combout\) # (!\ALU0|solucion[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \Decoder~9_combout\,
	combout => \Decoder~10_combout\);

-- Location: LCCOMB_X23_Y9_N14
\Selector48~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~9_combout\ = (((\Selector48~7_combout\ & !\Decoder~10_combout\)) # (!\Selector48~8_combout\)) # (!\Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Selector48~7_combout\,
	datac => \Selector48~8_combout\,
	datad => \Decoder~10_combout\,
	combout => \Selector48~9_combout\);

-- Location: LCCOMB_X23_Y9_N24
\Selector48~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~10_combout\ = (\Selector48~5_combout\) # ((\Selector48~3_combout\) # ((\Selector48~6_combout\ & \Selector48~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~5_combout\,
	datab => \Selector48~6_combout\,
	datac => \Selector48~3_combout\,
	datad => \Selector48~9_combout\,
	combout => \Selector48~10_combout\);

-- Location: LCCOMB_X23_Y9_N4
\line2[64]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(64) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector48~10_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~10_combout\,
	datac => line2(64),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(64));

-- Location: LCCOMB_X23_Y9_N16
\line2_buffer[64]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(64) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(64)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(64),
	datac => line2(64),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(64));

-- Location: LCCOMB_X24_Y13_N30
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (!\estado.S4~q\ & \KB0|OUT1|Mux6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.S4~q\,
	datad => \KB0|OUT1|Mux6~6_combout\,
	combout => \Selector70~0_combout\);

-- Location: LCCOMB_X25_Y13_N8
\line2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(0) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector70~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(0),
	datac => \Selector70~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(0));

-- Location: LCCOMB_X25_Y13_N28
\line2_buffer[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(0) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(0)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(0),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(0),
	combout => line2_buffer(0));

-- Location: LCCOMB_X23_Y9_N12
\DUT|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~3_combout\ = (!\DUT|ptr\(1) & ((\DUT|ptr\(3) & (line2_buffer(64))) # (!\DUT|ptr\(3) & ((line2_buffer(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(3),
	datab => line2_buffer(64),
	datac => \DUT|ptr\(1),
	datad => line2_buffer(0),
	combout => \DUT|Mux26~3_combout\);

-- Location: LCCOMB_X23_Y9_N26
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (dato2(0) & \estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato2(0),
	datad => \estado.S4~q\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X23_Y9_N30
\line2[88]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(88) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector40~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(88),
	datac => \Selector40~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(88));

-- Location: LCCOMB_X23_Y9_N22
\line2_buffer[88]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(88) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(88)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(88),
	datac => line2(88),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(88));

-- Location: LCCOMB_X22_Y9_N20
\DUT|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~1_combout\ = (\DUT|ptr\(3) & ((\DUT|ptr\(1) & (line2_buffer(88))) # (!\DUT|ptr\(1) & ((line2_buffer(72))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(3),
	datab => line2_buffer(88),
	datac => line2_buffer(72),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux26~1_combout\);

-- Location: LCCOMB_X21_Y12_N10
\line2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(8) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((!\estado.S4~q\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(8),
	datac => \estado.S4~q\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(8));

-- Location: LCCOMB_X21_Y12_N18
\line2_buffer[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(8) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(8)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(8),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(8),
	combout => line2_buffer(8));

-- Location: LCCOMB_X22_Y9_N26
\DUT|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~2_combout\ = (\DUT|Mux26~1_combout\) # ((!\DUT|ptr\(3) & (line2_buffer(8) & !\DUT|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(3),
	datab => \DUT|Mux26~1_combout\,
	datac => line2_buffer(8),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux26~2_combout\);

-- Location: LCCOMB_X21_Y9_N28
\DUT|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~4_combout\ = (\DUT|ptr\(2) & (\DUT|ptr\(0))) # (!\DUT|ptr\(2) & ((\DUT|ptr\(0) & ((\DUT|Mux26~2_combout\))) # (!\DUT|ptr\(0) & (\DUT|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|ptr\(0),
	datac => \DUT|Mux26~3_combout\,
	datad => \DUT|Mux26~2_combout\,
	combout => \DUT|Mux26~4_combout\);

-- Location: LCCOMB_X21_Y13_N2
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (dato2(0) & !operador(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dato2(0),
	datad => operador(3),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X21_Y13_N0
\case4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- case4(0) = (GLOBAL(\Mux30~1clkctrl_outclk\) & (\Mux29~0_combout\)) # (!GLOBAL(\Mux30~1clkctrl_outclk\) & ((case4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~0_combout\,
	datac => case4(0),
	datad => \Mux30~1clkctrl_outclk\,
	combout => case4(0));

-- Location: LCCOMB_X21_Y13_N16
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (case4(0) & \estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => case4(0),
	datad => \estado.S4~q\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X21_Y13_N10
\line2[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(48) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector60~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(48),
	datac => \Selector60~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(48));

-- Location: LCCOMB_X21_Y13_N12
\line2_buffer[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(48) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(48)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(48),
	datac => line2(48),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(48));

-- Location: LCCOMB_X21_Y7_N8
\DUT|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~0_combout\ = (line2_buffer(48) & (!\DUT|ptr\(3) & \DUT|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(48),
	datab => \DUT|ptr\(3),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux26~0_combout\);

-- Location: LCCOMB_X24_Y11_N22
\Decoder~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~18_combout\ = (!\ALU0|solucion[7]$latch~combout\ & \ALU0|solucion[6]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU0|solucion[7]$latch~combout\,
	datad => \ALU0|solucion[6]$latch~combout\,
	combout => \Decoder~18_combout\);

-- Location: LCCOMB_X24_Y9_N10
\Selector42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~5_combout\ = (\Decoder~10_combout\ & ((\LessThan2~0_combout\) # ((!\Decoder~2_combout\) # (!\Decoder~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \Decoder~18_combout\,
	datac => \Decoder~10_combout\,
	datad => \Decoder~2_combout\,
	combout => \Selector42~5_combout\);

-- Location: LCCOMB_X24_Y10_N0
\Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\ALU0|Mux0~5_combout\) # (!\Mux28~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux0~5_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X24_Y10_N12
\Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\Mux28~8_combout\) # ((\Selector48~7_combout\ & (\Selector42~5_combout\ & \Selector48~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~7_combout\,
	datab => \Selector42~5_combout\,
	datac => \Mux28~8_combout\,
	datad => \Selector48~8_combout\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X26_Y10_N12
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ((operador(2)) # ((operador(4)) # (!operador(6)))) # (!operador(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datab => operador(2),
	datac => operador(4),
	datad => operador(6),
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X24_Y10_N30
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux28~2_combout\) # ((\ALU0|Mux0~5_combout\ $ (!\ALU0|Mux1~3_combout\)) # (!operador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux0~5_combout\,
	datab => \Mux28~2_combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => operador(0),
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X26_Y11_N0
\Decoder~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder~17_combout\ = (\ALU0|solucion[4]$latch~combout\ & \ALU0|solucion[3]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU0|solucion[4]$latch~combout\,
	datad => \ALU0|solucion[3]$latch~combout\,
	combout => \Decoder~17_combout\);

-- Location: LCCOMB_X24_Y10_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\ALU0|solucion[4]$latch~combout\ & (\ALU0|Mux0~5_combout\ & (\ALU0|Mux1~3_combout\ & \ALU0|solucion[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \ALU0|Mux0~5_combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|solucion[2]$latch~combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y10_N2
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\ALU0|solucion[7]$latch~combout\) # (((!\Decoder~17_combout\ & \LessThan0~1_combout\)) # (!\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \Decoder~17_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X24_Y9_N28
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ALU0|solucion[4]$latch~combout\ & (!\ALU0|solucion[2]$latch~combout\ & (!\ALU0|solucion[3]$latch~combout\))) # (!\ALU0|solucion[4]$latch~combout\ & (\ALU0|solucion[3]$latch~combout\ & ((\ALU0|solucion[2]$latch~combout\) # 
-- (\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|solucion[4]$latch~combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \ALU0|Mux1~3_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\ALU0|solucion[5]$latch~combout\) # ((\ALU0|solucion[6]$latch~combout\) # (!\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[5]$latch~combout\,
	datac => \ALU0|solucion[6]$latch~combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X24_Y10_N22
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (operador(1) & (((\LessThan2~1_combout\ & \Mux28~11_combout\)))) # (!operador(1) & (\Mux28~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datab => \Mux28~5_combout\,
	datac => \LessThan2~1_combout\,
	datad => \Mux28~11_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X24_Y10_N16
\Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (!operador(4) & ((\ALU0|Mux0~5_combout\) # ((\Mux28~6_combout\) # (!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux0~5_combout\,
	datab => operador(4),
	datac => \Mux28~6_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X24_Y10_N28
\Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = ((operador(3) & ((\Mux28~12_combout\))) # (!operador(3) & (\Mux28~3_combout\))) # (!operador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => operador(3),
	datac => \Mux28~12_combout\,
	datad => operador(5),
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X24_Y10_N20
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\estado.S4~q\ & ((\Mux28~13_combout\) # ((\Mux28~9_combout\ & operador(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => operador(4),
	datac => \Mux28~13_combout\,
	datad => \estado.S4~q\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X24_Y10_N26
\line2[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(56) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector52~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector52~0_combout\,
	datac => line2(56),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(56));

-- Location: LCCOMB_X23_Y10_N10
\line2_buffer[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(56) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(56)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(56),
	datac => line2(56),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(56));

-- Location: LCCOMB_X19_Y10_N16
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (operador(0) & ((\estado.S4~q\) # (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => \estado.S3~q\,
	datac => operador(0),
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\line2[104]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(104) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector32~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector32~0_combout\,
	datac => line2(104),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(104));

-- Location: LCCOMB_X19_Y10_N28
\line2_buffer[104]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(104) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(104))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(104),
	datab => line2_buffer(104),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(104));

-- Location: LCCOMB_X19_Y10_N30
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\estado.S1~q\ & dato1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S1~q\,
	datab => dato1(0),
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X19_Y10_N6
\line2[120]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(120) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector24~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(120),
	combout => line2(120));

-- Location: LCCOMB_X19_Y10_N10
\line2_buffer[120]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(120) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(120))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(120),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2_buffer(120),
	combout => line2_buffer(120));

-- Location: LCCOMB_X19_Y10_N0
\DUT|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~5_combout\ = (\DUT|ptr\(3) & ((\DUT|ptr\(1) & ((line2_buffer(120)))) # (!\DUT|ptr\(1) & (line2_buffer(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line2_buffer(104),
	datac => \DUT|ptr\(3),
	datad => line2_buffer(120),
	combout => \DUT|Mux26~5_combout\);

-- Location: LCCOMB_X19_Y10_N14
\DUT|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~6_combout\ = (\DUT|Mux26~5_combout\) # ((line2_buffer(56) & (!\DUT|ptr\(3) & \DUT|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(56),
	datab => \DUT|ptr\(3),
	datac => \DUT|ptr\(1),
	datad => \DUT|Mux26~5_combout\,
	combout => \DUT|Mux26~6_combout\);

-- Location: LCCOMB_X19_Y7_N12
\DUT|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux26~7_combout\ = (\DUT|Mux26~4_combout\ & (((\DUT|Mux26~6_combout\) # (!\DUT|ptr\(2))))) # (!\DUT|Mux26~4_combout\ & (\DUT|Mux26~0_combout\ & ((\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux26~4_combout\,
	datab => \DUT|Mux26~0_combout\,
	datac => \DUT|Mux26~6_combout\,
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux26~7_combout\);

-- Location: LCCOMB_X22_Y7_N0
\DUT|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector20~1_combout\ = (\DUT|Mux18~7_combout\ & ((\DUT|state.WRITE_LINE1~q\) # ((\DUT|Mux26~7_combout\ & \DUT|state.WRITE_LINE2~q\)))) # (!\DUT|Mux18~7_combout\ & (((\DUT|Mux26~7_combout\ & \DUT|state.WRITE_LINE2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux18~7_combout\,
	datab => \DUT|state.WRITE_LINE1~q\,
	datac => \DUT|Mux26~7_combout\,
	datad => \DUT|state.WRITE_LINE2~q\,
	combout => \DUT|Selector20~1_combout\);

-- Location: LCCOMB_X25_Y6_N0
\DUT|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|WideOr9~0_combout\ = (\DUT|op_state.ENABLE_L~q\) # ((\DUT|op_state.WAIT_HOLD_L~q\) # (\DUT|op_state.WAIT_SETUP_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|op_state.ENABLE_L~q\,
	datac => \DUT|op_state.WAIT_HOLD_L~q\,
	datad => \DUT|op_state.WAIT_SETUP_L~q\,
	combout => \DUT|WideOr9~0_combout\);

-- Location: LCCOMB_X22_Y7_N14
\DUT|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector20~2_combout\ = (\DUT|WideOr9~0_combout\ & ((\DUT|Selector20~1_combout\) # (\DUT|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|Selector20~1_combout\,
	datac => \DUT|Selector20~0_combout\,
	datad => \DUT|WideOr9~0_combout\,
	combout => \DUT|Selector20~2_combout\);

-- Location: LCCOMB_X25_Y6_N4
\DUT|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|WideOr8~0_combout\ = (\DUT|op_state.ENABLE_H~q\) # ((\DUT|op_state.WAIT_SETUP_H~q\) # (\DUT|op_state.WAIT_HOLD_H~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|op_state.ENABLE_H~q\,
	datac => \DUT|op_state.WAIT_SETUP_H~q\,
	datad => \DUT|op_state.WAIT_HOLD_H~q\,
	combout => \DUT|WideOr8~0_combout\);

-- Location: LCCOMB_X22_Y7_N2
\DUT|Selector20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector20~4_combout\ = (\DUT|Selector20~2_combout\) # ((\DUT|WideOr8~0_combout\ & ((\DUT|Selector20~3_combout\) # (\DUT|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector20~3_combout\,
	datab => \DUT|Selector35~0_combout\,
	datac => \DUT|Selector20~2_combout\,
	datad => \DUT|WideOr8~0_combout\,
	combout => \DUT|Selector20~4_combout\);

-- Location: LCCOMB_X22_Y7_N6
\DUT|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector19~3_combout\ = (\DUT|WideOr9~0_combout\ & ((\DUT|ptr\(2)) # ((!\DUT|ptr\(0) & \DUT|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|ptr\(0),
	datac => \DUT|ptr\(1),
	datad => \DUT|WideOr9~0_combout\,
	combout => \DUT|Selector19~3_combout\);

-- Location: LCCOMB_X21_Y13_N26
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!operador(3) & dato2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => operador(3),
	datad => dato2(1),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X21_Y13_N18
\case4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- case4(1) = (GLOBAL(\Mux30~1clkctrl_outclk\) & (\Mux31~0_combout\)) # (!GLOBAL(\Mux30~1clkctrl_outclk\) & ((case4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => case4(1),
	datad => \Mux30~1clkctrl_outclk\,
	combout => case4(1));

-- Location: LCCOMB_X21_Y13_N22
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (case4(1) & \estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => case4(1),
	datad => \estado.S4~q\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X21_Y13_N8
\line2[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(49) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector59~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(49),
	datac => \Selector59~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(49));

-- Location: LCCOMB_X21_Y13_N30
\line2_buffer[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(49) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(49)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(49),
	datac => line2(49),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(49));

-- Location: LCCOMB_X21_Y9_N14
\DUT|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux25~0_combout\ = (!\DUT|ptr\(3) & (line2_buffer(49) & \DUT|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(3),
	datac => line2_buffer(49),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux25~0_combout\);

-- Location: LCCOMB_X23_Y10_N28
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (dato1(1) & \estado.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(1),
	datac => \estado.S1~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X22_Y9_N4
\line2[121]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(121) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector23~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(121)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(121),
	datac => \Selector23~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(121));

-- Location: LCCOMB_X22_Y9_N12
\line2_buffer[121]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(121) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(121)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(121)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(121),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(121),
	combout => line2_buffer(121));

-- Location: LCCOMB_X22_Y9_N30
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (operador(1) & ((\estado.S4~q\) # (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datac => \estado.S4~q\,
	datad => \estado.S3~q\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X22_Y9_N6
\line2[105]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(105) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector31~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(105),
	datac => \Selector31~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(105));

-- Location: LCCOMB_X22_Y9_N22
\line2_buffer[105]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(105) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(105)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(105),
	datac => line2(105),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(105));

-- Location: LCCOMB_X22_Y9_N8
\DUT|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux25~4_combout\ = (\DUT|ptr\(3) & ((\DUT|ptr\(1) & (line2_buffer(121))) # (!\DUT|ptr\(1) & ((line2_buffer(105))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(121),
	datab => \DUT|ptr\(3),
	datac => line2_buffer(105),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux25~4_combout\);

-- Location: LCCOMB_X24_Y10_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\ALU0|solucion[7]$latch~combout\ & (((\LessThan0~1_combout\) # (\Decoder~17_combout\)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Decoder~17_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y10_N24
\Selector51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~4_combout\ = (\ALU0|solucion[7]$latch~combout\ & operador(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => operador(3),
	combout => \Selector51~4_combout\);

-- Location: LCCOMB_X26_Y10_N6
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (!operador(1) & !operador(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datac => operador(4),
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X24_Y10_N14
\Selector51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~5_combout\ = (!\LessThan0~2_combout\ & (\Mux25~3_combout\ & ((\Selector51~4_combout\) # (\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Selector51~4_combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \Mux25~3_combout\,
	combout => \Selector51~5_combout\);

-- Location: LCCOMB_X25_Y10_N26
\Selector51~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~11_combout\ = (!operador(3) & (((operador(4)) # (\ALU0|Mux1~3_combout\)) # (!\Mux28~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(3),
	datab => \Mux28~10_combout\,
	datac => operador(4),
	datad => \ALU0|Mux1~3_combout\,
	combout => \Selector51~11_combout\);

-- Location: LCCOMB_X25_Y10_N20
\Selector51~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~12_combout\ = (\Selector51~11_combout\) # ((\ALU0|Mux1~3_combout\ & (\ALU0|Mux3~1_combout\ & !\LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~11_combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|Mux3~1_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Selector51~12_combout\);

-- Location: LCCOMB_X21_Y11_N16
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (!\ALU0|solucion[7]$latch~combout\ & operador(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU0|solucion[7]$latch~combout\,
	datad => operador(4),
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X21_Y11_N28
\unidades~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~1_combout\ = (\ALU0|solucion[3]$latch~combout\ & (\ALU0|Mux1~3_combout\ $ (((\ALU0|solucion[2]$latch~combout\) # (!\ALU0|solucion[4]$latch~combout\))))) # (!\ALU0|solucion[3]$latch~combout\ & ((\ALU0|Mux1~3_combout\) # 
-- ((\ALU0|solucion[4]$latch~combout\ & !\ALU0|solucion[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[3]$latch~combout\,
	datab => \ALU0|solucion[4]$latch~combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|solucion[2]$latch~combout\,
	combout => \unidades~1_combout\);

-- Location: LCCOMB_X21_Y11_N2
\Selector51~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~16_combout\ = (\Mux25~2_combout\ & (\ALU0|solucion[5]$latch~combout\ & ((\ALU0|solucion[6]$latch~combout\) # (!\unidades~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datab => \Mux25~2_combout\,
	datac => \ALU0|solucion[5]$latch~combout\,
	datad => \unidades~1_combout\,
	combout => \Selector51~16_combout\);

-- Location: LCCOMB_X22_Y10_N18
\Selector51~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~20_combout\ = (!operador(4) & (operador(3) & ((operador(6)) # (!operador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(3),
	datac => operador(0),
	datad => operador(6),
	combout => \Selector51~20_combout\);

-- Location: LCCOMB_X23_Y10_N2
\unidades~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~2_combout\ = (\ALU0|solucion[2]$latch~combout\ & ((\ALU0|Mux1~3_combout\ & (\ALU0|solucion[4]$latch~combout\)) # (!\ALU0|Mux1~3_combout\ & ((\ALU0|solucion[3]$latch~combout\))))) # (!\ALU0|solucion[2]$latch~combout\ & (\ALU0|Mux1~3_combout\ $ 
-- (((!\ALU0|solucion[4]$latch~combout\ & \ALU0|solucion[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|solucion[4]$latch~combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|solucion[3]$latch~combout\,
	combout => \unidades~2_combout\);

-- Location: LCCOMB_X22_Y10_N12
\Selector51~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~17_combout\ = (!operador(4) & (operador(3) & (operador(2) $ (!operador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(3),
	datac => operador(2),
	datad => operador(1),
	combout => \Selector51~17_combout\);

-- Location: LCCOMB_X22_Y10_N2
\Selector51~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~18_combout\ = (\Selector51~17_combout\) # ((\unidades~2_combout\ & (operador(4) & \Decoder~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~2_combout\,
	datab => operador(4),
	datac => \Selector51~17_combout\,
	datad => \Decoder~18_combout\,
	combout => \Selector51~18_combout\);

-- Location: LCCOMB_X22_Y10_N28
\Selector51~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~19_combout\ = ((operador(4) & (\ALU0|solucion[7]$latch~combout\ & \ALU0|Mux1~3_combout\))) # (!operador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => \ALU0|solucion[7]$latch~combout\,
	datac => operador(5),
	datad => \ALU0|Mux1~3_combout\,
	combout => \Selector51~19_combout\);

-- Location: LCCOMB_X22_Y10_N0
\Selector51~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~21_combout\ = (\Selector51~16_combout\) # ((\Selector51~20_combout\) # ((\Selector51~18_combout\) # (\Selector51~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~16_combout\,
	datab => \Selector51~20_combout\,
	datac => \Selector51~18_combout\,
	datad => \Selector51~19_combout\,
	combout => \Selector51~21_combout\);

-- Location: LCCOMB_X26_Y11_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ALU0|solucion[3]$latch~combout\ & (\ALU0|solucion[4]$latch~combout\)) # (!\ALU0|solucion[3]$latch~combout\ & ((\ALU0|Mux0~5_combout\) # (!\ALU0|solucion[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|solucion[4]$latch~combout\,
	datad => \ALU0|Mux0~5_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X22_Y10_N8
\Selector51~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~9_combout\ = ((!\ALU0|solucion[2]$latch~combout\ & ((\Mux2~0_combout\) # (!\Decoder~13_combout\)))) # (!\ALU0|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder~13_combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \Mux2~0_combout\,
	datad => \ALU0|solucion[2]$latch~combout\,
	combout => \Selector51~9_combout\);

-- Location: LCCOMB_X22_Y10_N26
\Selector51~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~10_combout\ = (operador(3) & (\ALU0|Mux3~1_combout\ & (\Selector51~9_combout\ & \LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(3),
	datab => \ALU0|Mux3~1_combout\,
	datac => \Selector51~9_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Selector51~10_combout\);

-- Location: LCCOMB_X21_Y11_N30
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\ALU0|solucion[7]$latch~combout\ & (!\ALU0|solucion[6]$latch~combout\ & (\ALU0|solucion[3]$latch~combout\ & !\ALU0|solucion[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \ALU0|solucion[6]$latch~combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \ALU0|solucion[4]$latch~combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X21_Y11_N24
\Selector51~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~13_combout\ = (\ALU0|solucion[5]$latch~combout\) # ((operador(1) & !\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => operador(1),
	datac => \Mux1~1_combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Selector51~13_combout\);

-- Location: LCCOMB_X21_Y11_N18
\Selector51~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~14_combout\ = (\ALU0|solucion[2]$latch~combout\ & (\ALU0|Mux1~3_combout\ & (!operador(4) & \Selector51~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => operador(4),
	datad => \Selector51~13_combout\,
	combout => \Selector51~14_combout\);

-- Location: LCCOMB_X21_Y11_N12
\unidades~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~0_combout\ = (\ALU0|solucion[3]$latch~combout\ & ((\ALU0|solucion[4]$latch~combout\ & (\ALU0|Mux1~3_combout\ & !\ALU0|solucion[2]$latch~combout\)) # (!\ALU0|solucion[4]$latch~combout\ & (!\ALU0|Mux1~3_combout\ & 
-- \ALU0|solucion[2]$latch~combout\)))) # (!\ALU0|solucion[3]$latch~combout\ & (\ALU0|Mux1~3_combout\ $ (((\ALU0|solucion[4]$latch~combout\ & !\ALU0|solucion[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[3]$latch~combout\,
	datab => \ALU0|solucion[4]$latch~combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|solucion[2]$latch~combout\,
	combout => \unidades~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\Selector51~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~24_combout\ = (\unidades~0_combout\ & (!\ALU0|solucion[5]$latch~combout\ & (!\ALU0|solucion[6]$latch~combout\ & \Mux25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~0_combout\,
	datab => \ALU0|solucion[5]$latch~combout\,
	datac => \ALU0|solucion[6]$latch~combout\,
	datad => \Mux25~2_combout\,
	combout => \Selector51~24_combout\);

-- Location: LCCOMB_X21_Y11_N10
\Selector51~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~15_combout\ = (\Selector51~14_combout\) # ((\Selector51~24_combout\) # ((operador(4) & !\Mux28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~14_combout\,
	datab => operador(4),
	datac => \Selector51~24_combout\,
	datad => \Mux28~7_combout\,
	combout => \Selector51~15_combout\);

-- Location: LCCOMB_X22_Y10_N10
\Selector51~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~22_combout\ = (\Selector51~12_combout\) # ((\Selector51~21_combout\) # ((\Selector51~10_combout\) # (\Selector51~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~12_combout\,
	datab => \Selector51~21_combout\,
	datac => \Selector51~10_combout\,
	datad => \Selector51~15_combout\,
	combout => \Selector51~22_combout\);

-- Location: LCCOMB_X25_Y10_N6
\Selector51~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~7_combout\ = (\Decoder~17_combout\ & ((\ALU0|Mux0~5_combout\ & (!\ALU0|Mux1~3_combout\ & operador(3))) # (!\ALU0|Mux0~5_combout\ & (\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder~17_combout\,
	datab => \ALU0|Mux0~5_combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => operador(3),
	combout => \Selector51~7_combout\);

-- Location: LCCOMB_X25_Y10_N4
\Selector51~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~6_combout\ = (operador(4)) # ((operador(1)) # (\ALU0|solucion[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => operador(4),
	datac => operador(1),
	datad => \ALU0|solucion[7]$latch~combout\,
	combout => \Selector51~6_combout\);

-- Location: LCCOMB_X25_Y10_N0
\Selector51~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~8_combout\ = (!\Selector51~6_combout\ & ((\Selector51~7_combout\) # ((!\LessThan0~0_combout\ & operador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~7_combout\,
	datab => \Selector51~6_combout\,
	datac => \LessThan0~0_combout\,
	datad => operador(3),
	combout => \Selector51~8_combout\);

-- Location: LCCOMB_X22_Y10_N20
\Selector51~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~23_combout\ = (\estado.S4~q\ & ((\Selector51~5_combout\) # ((\Selector51~22_combout\) # (\Selector51~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => \Selector51~5_combout\,
	datac => \Selector51~22_combout\,
	datad => \Selector51~8_combout\,
	combout => \Selector51~23_combout\);

-- Location: LCCOMB_X22_Y10_N30
\line2[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(57) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector51~23_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~23_combout\,
	datac => line2(57),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(57));

-- Location: LCCOMB_X22_Y10_N4
\line2_buffer[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(57) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(57)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(57),
	datac => line2(57),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(57));

-- Location: LCCOMB_X22_Y9_N14
\DUT|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux25~5_combout\ = (\DUT|Mux25~4_combout\) # ((\DUT|ptr\(1) & (line2_buffer(57) & !\DUT|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|Mux25~4_combout\,
	datac => line2_buffer(57),
	datad => \DUT|ptr\(3),
	combout => \DUT|Mux25~5_combout\);

-- Location: LCCOMB_X21_Y12_N16
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\estado.S4~q\ & dato2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S4~q\,
	datac => dato2(1),
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X21_Y12_N8
\line2[89]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(89) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector39~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector39~0_combout\,
	datac => line2(89),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(89));

-- Location: LCCOMB_X21_Y12_N12
\line2_buffer[89]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(89) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(89)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(89),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(89),
	combout => line2_buffer(89));

-- Location: LCCOMB_X21_Y12_N20
\DUT|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux25~1_combout\ = (\DUT|ptr\(1) & (line2_buffer(89) & ((\DUT|ptr\(3))))) # (!\DUT|ptr\(1) & (((line2_buffer(8) & !\DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line2_buffer(89),
	datac => line2_buffer(8),
	datad => \DUT|ptr\(3),
	combout => \DUT|Mux25~1_combout\);

-- Location: LCCOMB_X26_Y11_N26
\Selector47~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~16_combout\ = (\ALU0|solucion[4]$latch~combout\ & ((\ALU0|solucion[3]$latch~combout\) # (\ALU0|solucion[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|solucion[4]$latch~combout\,
	datad => \ALU0|solucion[2]$latch~combout\,
	combout => \Selector47~16_combout\);

-- Location: LCCOMB_X25_Y14_N2
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (operador(5) & operador(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(5),
	datac => operador(3),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X26_Y11_N10
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\ALU0|solucion[6]$latch~combout\) # ((\ALU0|solucion[2]$latch~combout\ & (\Decoder~17_combout\ & \ALU0|solucion[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \Decoder~17_combout\,
	datac => \ALU0|solucion[5]$latch~combout\,
	datad => \ALU0|solucion[6]$latch~combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X26_Y11_N8
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (!\ALU0|solucion[7]$latch~combout\ & (\Mux23~0_combout\ & (operador(6) & \Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \Mux23~0_combout\,
	datac => operador(6),
	datad => \Mux23~2_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X26_Y11_N22
\Selector47~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~7_combout\ = (\Mux25~2_combout\ & (!\Mux23~3_combout\ & ((\Selector47~16_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~16_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Mux25~2_combout\,
	datad => \Mux23~3_combout\,
	combout => \Selector47~7_combout\);

-- Location: LCCOMB_X26_Y12_N28
\Selector47~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~8_combout\ = (!\ALU0|solucion[6]$latch~combout\ & (\Selector47~7_combout\ & ((!\Decoder~3_combout\) # (!\Decoder~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder~16_combout\,
	datab => \Decoder~3_combout\,
	datac => \ALU0|solucion[6]$latch~combout\,
	datad => \Selector47~7_combout\,
	combout => \Selector47~8_combout\);

-- Location: LCCOMB_X26_Y10_N0
\Selector47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~4_combout\ = (operador(1) & (operador(0) & (operador(5) & !operador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datab => operador(0),
	datac => operador(5),
	datad => operador(3),
	combout => \Selector47~4_combout\);

-- Location: LCCOMB_X26_Y10_N2
\Selector47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~5_combout\ = ((dato1(1)) # ((\ALU0|Mux1~3_combout\ & \ALU0|Mux0~5_combout\))) # (!\Selector47~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~4_combout\,
	datab => dato1(1),
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|Mux0~5_combout\,
	combout => \Selector47~5_combout\);

-- Location: LCCOMB_X26_Y10_N30
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!operador(1) & (operador(2) & (operador(0) & \Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datab => operador(2),
	datac => operador(0),
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X26_Y10_N26
\Selector47~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~15_combout\ = (\Mux23~1_combout\ & (!operador(4) & (!operador(6) & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => operador(4),
	datac => operador(6),
	datad => \LessThan0~2_combout\,
	combout => \Selector47~15_combout\);

-- Location: LCCOMB_X26_Y10_N16
\Selector47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~6_combout\ = (\Selector47~15_combout\) # ((operador(6) & (\Selector47~5_combout\ & !operador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datab => \Selector47~5_combout\,
	datac => \Selector47~15_combout\,
	datad => operador(4),
	combout => \Selector47~6_combout\);

-- Location: LCCOMB_X26_Y11_N12
\Selector47~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~12_combout\ = (operador(4) & (((\Mux23~3_combout\) # (!operador(6))) # (!operador(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(5),
	datac => operador(6),
	datad => \Mux23~3_combout\,
	combout => \Selector47~12_combout\);

-- Location: LCCOMB_X25_Y14_N14
\Selector47~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~11_combout\ = ((operador(1) $ (!operador(2))) # (!operador(0))) # (!\Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datab => \Mux23~0_combout\,
	datac => operador(2),
	datad => operador(0),
	combout => \Selector47~11_combout\);

-- Location: LCCOMB_X25_Y14_N20
\Selector47~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~9_combout\ = (operador(4) & (!operador(1) & ((!operador(2))))) # (!operador(4) & (((!operador(2)) # (!operador(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(1),
	datab => operador(4),
	datac => operador(6),
	datad => operador(2),
	combout => \Selector47~9_combout\);

-- Location: LCCOMB_X25_Y14_N10
\Selector47~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~10_combout\ = (\Selector47~9_combout\ & (((!operador(0) & operador(3))) # (!operador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(0),
	datab => operador(4),
	datac => operador(3),
	datad => \Selector47~9_combout\,
	combout => \Selector47~10_combout\);

-- Location: LCCOMB_X25_Y14_N24
\Selector47~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~17_combout\ = (\Selector47~10_combout\ & ((operador(4)) # ((operador(6)) # (!\Selector47~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(6),
	datac => \Selector47~11_combout\,
	datad => \Selector47~10_combout\,
	combout => \Selector47~17_combout\);

-- Location: LCCOMB_X26_Y11_N4
\Selector47~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~18_combout\ = (\Selector47~17_combout\ & (((\Decoder~10_combout\) # (!operador(4))) # (!\Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => operador(4),
	datac => \Selector47~17_combout\,
	datad => \Decoder~10_combout\,
	combout => \Selector47~18_combout\);

-- Location: LCCOMB_X26_Y11_N2
\Selector47~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~13_combout\ = (\Selector47~18_combout\ & (((\Mux23~3_combout\ & \Decoder~8_combout\)) # (!\Selector47~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \Selector47~12_combout\,
	datac => \Decoder~8_combout\,
	datad => \Selector47~18_combout\,
	combout => \Selector47~13_combout\);

-- Location: LCCOMB_X26_Y12_N6
\Selector47~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~14_combout\ = (\estado.S4~q\ & ((\Selector47~8_combout\) # ((\Selector47~6_combout\) # (!\Selector47~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~8_combout\,
	datab => \Selector47~6_combout\,
	datac => \estado.S4~q\,
	datad => \Selector47~13_combout\,
	combout => \Selector47~14_combout\);

-- Location: LCCOMB_X26_Y12_N8
\line2[65]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(65) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector47~14_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector47~14_combout\,
	datac => line2(65),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(65));

-- Location: LCCOMB_X26_Y12_N16
\line2_buffer[65]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(65) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(65)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(65),
	datac => line2(65),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(65));

-- Location: LCCOMB_X21_Y13_N28
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\KB0|OUT1|Mux5~6_combout\ & !\estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KB0|OUT1|Mux5~6_combout\,
	datab => \estado.S4~q\,
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X21_Y13_N14
\line2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(1) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector69~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector69~0_combout\,
	datac => line2(1),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(1));

-- Location: LCCOMB_X21_Y13_N4
\line2_buffer[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(1) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(1)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(1),
	datac => line2(1),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(1));

-- Location: LCCOMB_X22_Y9_N0
\DUT|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux25~2_combout\ = (!\DUT|ptr\(1) & ((\DUT|ptr\(3) & (line2_buffer(65))) # (!\DUT|ptr\(3) & ((line2_buffer(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(65),
	datab => \DUT|ptr\(3),
	datac => line2_buffer(1),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux25~2_combout\);

-- Location: LCCOMB_X22_Y9_N2
\DUT|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux25~3_combout\ = (\DUT|ptr\(0) & ((\DUT|Mux25~1_combout\) # ((\DUT|ptr\(2))))) # (!\DUT|ptr\(0) & (((\DUT|Mux25~2_combout\ & !\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux25~1_combout\,
	datab => \DUT|Mux25~2_combout\,
	datac => \DUT|ptr\(0),
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux25~3_combout\);

-- Location: LCCOMB_X22_Y9_N28
\DUT|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux25~6_combout\ = (\DUT|ptr\(2) & ((\DUT|Mux25~3_combout\ & ((\DUT|Mux25~5_combout\))) # (!\DUT|Mux25~3_combout\ & (\DUT|Mux25~0_combout\)))) # (!\DUT|ptr\(2) & (((\DUT|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux25~0_combout\,
	datab => \DUT|ptr\(2),
	datac => \DUT|Mux25~5_combout\,
	datad => \DUT|Mux25~3_combout\,
	combout => \DUT|Mux25~6_combout\);

-- Location: LCCOMB_X22_Y15_N26
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (dato2(5)) # (!\estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S4~q\,
	datac => dato2(5),
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X22_Y15_N24
\line2[93]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(93) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector35~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datab => line2(93),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(93));

-- Location: LCCOMB_X22_Y15_N8
\line2_buffer[93]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(93) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(93))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(93),
	datac => line2_buffer(93),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(93));

-- Location: LCCOMB_X22_Y10_N14
\Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (operador(5) & (operador(4) $ (operador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datac => operador(0),
	datad => operador(5),
	combout => \Selector43~2_combout\);

-- Location: LCCOMB_X23_Y10_N6
\Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~3_combout\ = (((!\Mux24~0_combout\ & operador(4))) # (!\estado.S4~q\)) # (!\Selector43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Selector43~2_combout\,
	datac => \estado.S4~q\,
	datad => operador(4),
	combout => \Selector43~3_combout\);

-- Location: LCCOMB_X25_Y9_N14
\Selector42~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~6_combout\ = (\Selector48~8_combout\ & (\Selector48~7_combout\ & \Selector42~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~8_combout\,
	datac => \Selector48~7_combout\,
	datad => \Selector42~5_combout\,
	combout => \Selector42~6_combout\);

-- Location: LCCOMB_X23_Y9_N10
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = ((dato1(5) & ((!\ALU0|Mux0~5_combout\) # (!\ALU0|Mux1~3_combout\)))) # (!\ALU0|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~3_combout\,
	datab => \ALU0|Mux0~5_combout\,
	datac => dato1(5),
	datad => \ALU0|Mux3~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X23_Y9_N20
\Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (!operador(4) & ((operador(1) & ((\Selector43~0_combout\))) # (!operador(1) & (!\Selector42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~4_combout\,
	datab => operador(4),
	datac => \Selector43~0_combout\,
	datad => operador(1),
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X25_Y9_N16
\Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~4_combout\ = (\Selector43~3_combout\) # ((\Selector43~1_combout\) # ((operador(4) & !\Selector42~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => \Selector43~3_combout\,
	datac => \Selector42~6_combout\,
	datad => \Selector43~1_combout\,
	combout => \Selector43~4_combout\);

-- Location: LCCOMB_X25_Y9_N2
\line2[69]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(69) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector43~4_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(69),
	datac => \Selector43~4_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(69));

-- Location: LCCOMB_X25_Y9_N0
\line2_buffer[69]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(69) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(69))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(69),
	datab => line2_buffer(69),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(69));

-- Location: LCCOMB_X22_Y15_N4
\DUT|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux21~0_combout\ = (\DUT|ptr\(0) & ((line2_buffer(93)) # ((!\DUT|ptr\(1))))) # (!\DUT|ptr\(0) & (((line2_buffer(69)) # (\DUT|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => line2_buffer(93),
	datac => line2_buffer(69),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux21~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (operador(3)) # (dato2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => operador(3),
	datad => dato2(5),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X22_Y15_N16
\case4[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- case4(5) = (GLOBAL(\Mux30~1clkctrl_outclk\) & ((\Mux35~0_combout\))) # (!GLOBAL(\Mux30~1clkctrl_outclk\) & (case4(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => case4(5),
	datac => \Mux35~0_combout\,
	datad => \Mux30~1clkctrl_outclk\,
	combout => case4(5));

-- Location: LCCOMB_X22_Y15_N12
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (case4(5)) # (!\estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => case4(5),
	datad => \estado.S4~q\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X22_Y15_N6
\line2[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(53) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector55~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(53),
	datac => \Selector55~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(53));

-- Location: LCCOMB_X22_Y15_N30
\line2_buffer[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(53) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(53)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(53),
	datac => line2(53),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(53));

-- Location: LCCOMB_X22_Y15_N10
\DUT|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux21~1_combout\ = (line2_buffer(53)) # ((\DUT|ptr\(0)) # (!\DUT|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(53),
	datab => \DUT|ptr\(1),
	datac => \DUT|ptr\(0),
	combout => \DUT|Mux21~1_combout\);

-- Location: LCCOMB_X25_Y13_N16
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\KB0|OUT1|Mux1~9_combout\) # (\estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KB0|OUT1|Mux1~9_combout\,
	datad => \estado.S4~q\,
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X25_Y13_N24
\line2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(5) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector65~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(5),
	datac => \Selector0~4clkctrl_outclk\,
	datad => \Selector65~0_combout\,
	combout => line2(5));

-- Location: LCCOMB_X25_Y13_N4
\line2_buffer[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(5) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(5)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(5),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(5),
	combout => line2_buffer(5));

-- Location: LCCOMB_X22_Y15_N0
\DUT|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux21~2_combout\ = (\DUT|ptr\(1)) # ((\DUT|ptr\(0) & ((line2_buffer(72)))) # (!\DUT|ptr\(0) & (line2_buffer(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => line2_buffer(5),
	datac => line2_buffer(72),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux21~2_combout\);

-- Location: LCCOMB_X22_Y15_N22
\DUT|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux21~3_combout\ = (\DUT|ptr\(3) & (((\DUT|ptr\(2))))) # (!\DUT|ptr\(3) & ((\DUT|ptr\(2) & (\DUT|Mux21~1_combout\)) # (!\DUT|ptr\(2) & ((\DUT|Mux21~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux21~1_combout\,
	datab => \DUT|ptr\(3),
	datac => \DUT|ptr\(2),
	datad => \DUT|Mux21~2_combout\,
	combout => \DUT|Mux21~3_combout\);

-- Location: LCCOMB_X25_Y13_N26
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!operador(5) & ((\estado.S4~q\) # (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => operador(5),
	datad => \estado.S3~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X25_Y13_N14
\line2[109]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(109) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((!\Selector27~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(109),
	datac => \Selector27~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(109));

-- Location: LCCOMB_X25_Y13_N30
\line2_buffer[109]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(109) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(109)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(109),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(109),
	combout => line2_buffer(109));

-- Location: LCCOMB_X24_Y14_N0
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (dato1(5)) # (!\estado.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(5),
	datac => \estado.S1~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X24_Y14_N8
\line2[125]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(125) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector19~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(125),
	datac => \Selector19~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(125));

-- Location: LCCOMB_X24_Y14_N24
\line2_buffer[125]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(125) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(125)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(125),
	datac => line2(125),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(125));

-- Location: LCCOMB_X22_Y15_N20
\DUT|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux21~4_combout\ = ((\DUT|ptr\(1) & ((line2_buffer(125)))) # (!\DUT|ptr\(1) & (line2_buffer(109)))) # (!\DUT|ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(109),
	datab => \DUT|ptr\(1),
	datac => \DUT|ptr\(0),
	datad => line2_buffer(125),
	combout => \DUT|Mux21~4_combout\);

-- Location: LCCOMB_X22_Y15_N14
\DUT|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux21~5_combout\ = (\DUT|ptr\(3) & ((\DUT|Mux21~3_combout\ & ((\DUT|Mux21~4_combout\))) # (!\DUT|Mux21~3_combout\ & (\DUT|Mux21~0_combout\)))) # (!\DUT|ptr\(3) & (((\DUT|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux21~0_combout\,
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux21~3_combout\,
	datad => \DUT|Mux21~4_combout\,
	combout => \DUT|Mux21~5_combout\);

-- Location: LCCOMB_X22_Y7_N24
\DUT|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector19~0_combout\ = (\DUT|Mux25~6_combout\ & ((\DUT|WideOr9~0_combout\) # ((\DUT|WideOr8~0_combout\ & \DUT|Mux21~5_combout\)))) # (!\DUT|Mux25~6_combout\ & (\DUT|WideOr8~0_combout\ & (\DUT|Mux21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux25~6_combout\,
	datab => \DUT|WideOr8~0_combout\,
	datac => \DUT|Mux21~5_combout\,
	datad => \DUT|WideOr9~0_combout\,
	combout => \DUT|Selector19~0_combout\);

-- Location: LCCOMB_X21_Y9_N16
\line1[81]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(81) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (!\estado.S1~q\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S1~q\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line1(81),
	combout => line1(81));

-- Location: LCCOMB_X21_Y9_N6
\line1_buffer[81]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(81) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(81)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(81),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line1(81),
	combout => line1_buffer(81));

-- Location: LCCOMB_X19_Y7_N14
\DUT|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~0_combout\ = (\DUT|ptr\(1) & ((\DUT|ptr\(0)) # ((line1_buffer(81))))) # (!\DUT|ptr\(1) & (!\DUT|ptr\(0) & (line1_buffer(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(0),
	datac => line1_buffer(68),
	datad => line1_buffer(81),
	combout => \DUT|Mux17~0_combout\);

-- Location: LCCOMB_X19_Y7_N26
\DUT|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~6_combout\ = (\DUT|Mux17~0_combout\ & ((line1_buffer(72)) # ((!\DUT|ptr\(0))))) # (!\DUT|Mux17~0_combout\ & (((line1_buffer(112) & \DUT|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(72),
	datab => line1_buffer(112),
	datac => \DUT|Mux17~0_combout\,
	datad => \DUT|ptr\(0),
	combout => \DUT|Mux17~6_combout\);

-- Location: LCCOMB_X19_Y7_N6
\DUT|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~4_combout\ = (\DUT|ptr\(1) & (\DUT|ptr\(0) & line1_buffer(48))) # (!\DUT|ptr\(1) & ((\DUT|ptr\(0)) # (line1_buffer(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(0),
	datad => line1_buffer(48),
	combout => \DUT|Mux17~4_combout\);

-- Location: LCCOMB_X21_Y8_N14
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado.S2~q\) # (\estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.S2~q\,
	datad => \estado.S4~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X21_Y8_N12
\line1[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(49) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector10~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line1(49),
	combout => line1(49));

-- Location: LCCOMB_X21_Y8_N8
\line1_buffer[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(49) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(49)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line1_buffer(49),
	datac => line1(49),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(49));

-- Location: LCCOMB_X19_Y7_N2
\DUT|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~2_combout\ = (\DUT|ptr\(1) & ((\DUT|ptr\(0)) # ((line1_buffer(49))))) # (!\DUT|ptr\(1) & (!\DUT|ptr\(0) & ((line1_buffer(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(0),
	datac => line1_buffer(49),
	datad => line1_buffer(32),
	combout => \DUT|Mux17~2_combout\);

-- Location: LCCOMB_X19_Y7_N16
\DUT|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~3_combout\ = (\DUT|ptr\(0) & ((\DUT|Mux17~2_combout\ & (line1_buffer(49))) # (!\DUT|Mux17~2_combout\ & ((line1_buffer(81)))))) # (!\DUT|ptr\(0) & (((\DUT|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(49),
	datab => \DUT|ptr\(0),
	datac => \DUT|Mux17~2_combout\,
	datad => line1_buffer(81),
	combout => \DUT|Mux17~3_combout\);

-- Location: LCCOMB_X19_Y7_N20
\DUT|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~5_combout\ = (\DUT|ptr\(3) & (((\DUT|ptr\(2))))) # (!\DUT|ptr\(3) & ((\DUT|ptr\(2) & ((\DUT|Mux17~3_combout\))) # (!\DUT|ptr\(2) & (\DUT|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux17~4_combout\,
	datab => \DUT|Mux17~3_combout\,
	datac => \DUT|ptr\(3),
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux17~5_combout\);

-- Location: LCCOMB_X19_Y7_N28
\DUT|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~1_combout\ = (\DUT|Mux17~0_combout\ & (((line1_buffer(44)) # (!\DUT|ptr\(0))))) # (!\DUT|Mux17~0_combout\ & (line1_buffer(48) & ((\DUT|ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(48),
	datab => \DUT|Mux17~0_combout\,
	datac => line1_buffer(44),
	datad => \DUT|ptr\(0),
	combout => \DUT|Mux17~1_combout\);

-- Location: LCCOMB_X19_Y7_N8
\DUT|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux17~7_combout\ = (\DUT|Mux17~5_combout\ & ((\DUT|Mux17~6_combout\) # ((!\DUT|ptr\(3))))) # (!\DUT|Mux17~5_combout\ & (((\DUT|ptr\(3) & \DUT|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux17~6_combout\,
	datab => \DUT|Mux17~5_combout\,
	datac => \DUT|ptr\(3),
	datad => \DUT|Mux17~1_combout\,
	combout => \DUT|Mux17~7_combout\);

-- Location: LCCOMB_X21_Y8_N30
\DUT|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux13~0_combout\ = (\DUT|ptr\(0) & ((\DUT|ptr\(1) & (\DUT|ptr\(3) & \DUT|ptr\(2))) # (!\DUT|ptr\(1) & (!\DUT|ptr\(3) & !\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(3),
	datac => \DUT|ptr\(2),
	datad => \DUT|ptr\(0),
	combout => \DUT|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y7_N22
\DUT|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector19~1_combout\ = (\DUT|Mux17~7_combout\ & ((\DUT|WideOr9~0_combout\) # ((!\DUT|Mux13~0_combout\ & \DUT|WideOr8~0_combout\)))) # (!\DUT|Mux17~7_combout\ & (((!\DUT|Mux13~0_combout\ & \DUT|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux17~7_combout\,
	datab => \DUT|WideOr9~0_combout\,
	datac => \DUT|Mux13~0_combout\,
	datad => \DUT|WideOr8~0_combout\,
	combout => \DUT|Selector19~1_combout\);

-- Location: LCCOMB_X22_Y7_N28
\DUT|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector19~2_combout\ = (\DUT|state.WRITE_LINE2~q\ & ((\DUT|Selector19~0_combout\) # ((\DUT|Selector19~1_combout\ & \DUT|state.WRITE_LINE1~q\)))) # (!\DUT|state.WRITE_LINE2~q\ & (((\DUT|Selector19~1_combout\ & \DUT|state.WRITE_LINE1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.WRITE_LINE2~q\,
	datab => \DUT|Selector19~0_combout\,
	datac => \DUT|Selector19~1_combout\,
	datad => \DUT|state.WRITE_LINE1~q\,
	combout => \DUT|Selector19~2_combout\);

-- Location: LCCOMB_X22_Y7_N16
\DUT|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector19~4_combout\ = (\DUT|WideOr8~0_combout\ & ((\DUT|ptr\(2)) # ((\DUT|ptr\(0) & \DUT|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|ptr\(0),
	datac => \DUT|ptr\(1),
	datad => \DUT|WideOr8~0_combout\,
	combout => \DUT|Selector19~4_combout\);

-- Location: LCCOMB_X22_Y7_N26
\DUT|Selector19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector19~5_combout\ = (\DUT|Selector19~2_combout\) # ((\DUT|state.CONFIG~q\ & ((\DUT|Selector19~3_combout\) # (\DUT|Selector19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector19~3_combout\,
	datab => \DUT|Selector19~2_combout\,
	datac => \DUT|Selector19~4_combout\,
	datad => \DUT|state.CONFIG~q\,
	combout => \DUT|Selector19~5_combout\);

-- Location: LCCOMB_X22_Y7_N10
\DUT|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector18~1_combout\ = (!\DUT|ptr\(2) & (\DUT|state.CONFIG~q\ & (\DUT|ptr\(0) $ (\DUT|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|ptr\(0),
	datac => \DUT|ptr\(1),
	datad => \DUT|state.CONFIG~q\,
	combout => \DUT|Selector18~1_combout\);

-- Location: LCCOMB_X18_Y8_N24
\DUT|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux12~0_combout\ = (\DUT|ptr\(0) & (\DUT|ptr\(1))) # (!\DUT|ptr\(0) & ((\DUT|ptr\(1) & (line1_buffer(32))) # (!\DUT|ptr\(1) & ((line1_buffer(48))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|ptr\(1),
	datac => line1_buffer(32),
	datad => line1_buffer(48),
	combout => \DUT|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y8_N30
\DUT|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux12~1_combout\ = (\DUT|ptr\(0) & ((\DUT|Mux12~0_combout\ & ((line1_buffer(96)))) # (!\DUT|Mux12~0_combout\ & (line1_buffer(32))))) # (!\DUT|ptr\(0) & (\DUT|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => \DUT|Mux12~0_combout\,
	datac => line1_buffer(32),
	datad => line1_buffer(96),
	combout => \DUT|Mux12~1_combout\);

-- Location: LCCOMB_X21_Y8_N6
\line1[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1(70) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((!\estado.S3~q\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1(70),
	datac => \estado.S3~q\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1(70));

-- Location: LCCOMB_X21_Y8_N10
\line1_buffer[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- line1_buffer(70) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line1(70)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line1_buffer(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(70),
	datab => line1(70),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line1_buffer(70));

-- Location: LCCOMB_X21_Y7_N24
\DUT|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector1~0_combout\ = ((\DUT|ptr\(0) & ((line1_buffer(72)))) # (!\DUT|ptr\(0) & (line1_buffer(70)))) # (!\DUT|Mux22~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => line1_buffer(70),
	datac => \DUT|Mux22~7_combout\,
	datad => line1_buffer(72),
	combout => \DUT|Selector1~0_combout\);

-- Location: LCCOMB_X21_Y7_N22
\DUT|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector1~1_combout\ = (\DUT|Mux12~1_combout\ & ((\DUT|ptr\(2)) # ((\DUT|Selector1~0_combout\ & \DUT|ptr\(3))))) # (!\DUT|Mux12~1_combout\ & (\DUT|Selector1~0_combout\ & ((\DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux12~1_combout\,
	datab => \DUT|Selector1~0_combout\,
	datac => \DUT|ptr\(2),
	datad => \DUT|ptr\(3),
	combout => \DUT|Selector1~1_combout\);

-- Location: LCCOMB_X21_Y7_N16
\DUT|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector1~2_combout\ = (!\DUT|ptr\(2) & (\DUT|ptr\(0) & ((line1_buffer(68)) # (!\DUT|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(68),
	datab => \DUT|ptr\(2),
	datac => \DUT|ptr\(0),
	datad => \DUT|ptr\(1),
	combout => \DUT|Selector1~2_combout\);

-- Location: LCCOMB_X21_Y7_N14
\DUT|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector1~3_combout\ = (\DUT|state.WRITE_LINE1~q\ & ((\DUT|Selector1~1_combout\) # ((\DUT|Selector1~2_combout\ & !\DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector1~1_combout\,
	datab => \DUT|Selector1~2_combout\,
	datac => \DUT|state.WRITE_LINE1~q\,
	datad => \DUT|ptr\(3),
	combout => \DUT|Selector1~3_combout\);

-- Location: LCCOMB_X26_Y13_N14
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (operador(6) & ((\estado.S4~q\) # (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => operador(6),
	datad => \estado.S3~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X26_Y13_N28
\line2[110]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(110) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector26~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(110)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(110),
	datac => \Selector26~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(110));

-- Location: LCCOMB_X26_Y13_N8
\line2_buffer[110]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(110) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(110)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(110)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(110),
	datac => line2(110),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(110));

-- Location: LCCOMB_X23_Y10_N24
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (dato1(6) & \estado.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato1(6),
	datac => \estado.S1~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X26_Y13_N6
\line2[126]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(126) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector18~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(126),
	datab => \Selector18~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(126));

-- Location: LCCOMB_X26_Y13_N30
\line2_buffer[126]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(126) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(126)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(126),
	datac => line2(126),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(126));

-- Location: LCCOMB_X26_Y13_N10
\DUT|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux20~4_combout\ = (\DUT|ptr\(0) & ((\DUT|ptr\(1) & ((line2_buffer(126)))) # (!\DUT|ptr\(1) & (line2_buffer(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => line2_buffer(110),
	datac => line2_buffer(126),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux20~4_combout\);

-- Location: LCCOMB_X21_Y12_N26
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (!\estado.S4~q\ & \KB0|OUT1|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S4~q\,
	datac => \KB0|OUT1|Mux0~1_combout\,
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\line2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(6) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector64~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(6),
	combout => line2(6));

-- Location: LCCOMB_X21_Y12_N14
\line2_buffer[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(6) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(6)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(6),
	datac => line2(6),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(6));

-- Location: LCCOMB_X21_Y12_N30
\DUT|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux20~2_combout\ = (!\DUT|ptr\(1) & ((\DUT|ptr\(0) & (line2_buffer(8))) # (!\DUT|ptr\(0) & ((line2_buffer(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(8),
	datab => \DUT|ptr\(0),
	datac => line2_buffer(6),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux20~2_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (dato2(6) & !operador(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(6),
	datac => operador(3),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X24_Y13_N18
\case4[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- case4(6) = (GLOBAL(\Mux30~1clkctrl_outclk\) & ((\Mux36~0_combout\))) # (!GLOBAL(\Mux30~1clkctrl_outclk\) & (case4(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => case4(6),
	datac => \Mux36~0_combout\,
	datad => \Mux30~1clkctrl_outclk\,
	combout => case4(6));

-- Location: LCCOMB_X24_Y13_N24
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\estado.S4~q\ & case4(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => case4(6),
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X24_Y13_N8
\line2[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(54) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector54~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector54~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(54),
	combout => line2(54));

-- Location: LCCOMB_X24_Y13_N10
\line2_buffer[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(54) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(54)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(54),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(54),
	combout => line2_buffer(54));

-- Location: LCCOMB_X21_Y8_N4
\DUT|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux20~1_combout\ = (\DUT|ptr\(1) & (line2_buffer(54) & !\DUT|ptr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line2_buffer(54),
	datad => \DUT|ptr\(0),
	combout => \DUT|Mux20~1_combout\);

-- Location: LCCOMB_X22_Y15_N28
\DUT|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux20~3_combout\ = (\DUT|ptr\(3) & (((\DUT|ptr\(2))))) # (!\DUT|ptr\(3) & ((\DUT|ptr\(2) & ((\DUT|Mux20~1_combout\))) # (!\DUT|ptr\(2) & (\DUT|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux20~2_combout\,
	datab => \DUT|ptr\(3),
	datac => \DUT|ptr\(2),
	datad => \DUT|Mux20~1_combout\,
	combout => \DUT|Mux20~3_combout\);

-- Location: LCCOMB_X26_Y13_N2
\Selector42~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~11_combout\ = (\Mux23~0_combout\ & (operador(4) & (\Mux28~7_combout\ & \estado.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => operador(4),
	datac => \Mux28~7_combout\,
	datad => \estado.S4~q\,
	combout => \Selector42~11_combout\);

-- Location: LCCOMB_X23_Y10_N8
\Selector42~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~7_combout\ = (\ALU0|Mux3~0_combout\ & ((dato1(6)) # ((\ALU0|Mux1~3_combout\ & \ALU0|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~3_combout\,
	datab => dato1(6),
	datac => \ALU0|Mux3~0_combout\,
	datad => \ALU0|Mux0~5_combout\,
	combout => \Selector42~7_combout\);

-- Location: LCCOMB_X23_Y10_N26
\Selector42~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~8_combout\ = (operador(0) & ((operador(1) & ((\Selector42~7_combout\))) # (!operador(1) & (\Selector42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~4_combout\,
	datab => operador(0),
	datac => \Selector42~7_combout\,
	datad => operador(1),
	combout => \Selector42~8_combout\);

-- Location: LCCOMB_X26_Y13_N18
\Selector42~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~9_combout\ = (operador(5) & (!operador(4) & \estado.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(5),
	datab => operador(4),
	datac => \estado.S4~q\,
	combout => \Selector42~9_combout\);

-- Location: LCCOMB_X26_Y13_N0
\Selector42~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~10_combout\ = (\Selector42~6_combout\ & ((\Selector42~11_combout\) # ((\Selector42~8_combout\ & \Selector42~9_combout\)))) # (!\Selector42~6_combout\ & (((\Selector42~8_combout\ & \Selector42~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~6_combout\,
	datab => \Selector42~11_combout\,
	datac => \Selector42~8_combout\,
	datad => \Selector42~9_combout\,
	combout => \Selector42~10_combout\);

-- Location: LCCOMB_X26_Y13_N24
\line2[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(70) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector42~10_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(70),
	datac => \Selector42~10_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(70));

-- Location: LCCOMB_X26_Y13_N4
\line2_buffer[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(70) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(70)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(70),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(70),
	combout => line2_buffer(70));

-- Location: LCCOMB_X24_Y13_N16
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\estado.S4~q\ & dato2(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => dato2(6),
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\line2[94]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(94) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector34~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(94)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(94),
	datac => \Selector0~4clkctrl_outclk\,
	datad => \Selector34~0_combout\,
	combout => line2(94));

-- Location: LCCOMB_X24_Y13_N6
\line2_buffer[94]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(94) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(94)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(94)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(94),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(94),
	combout => line2_buffer(94));

-- Location: LCCOMB_X26_Y13_N20
\DUT|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux20~0_combout\ = (\DUT|ptr\(0) & (((line2_buffer(94) & \DUT|ptr\(1))))) # (!\DUT|ptr\(0) & (line2_buffer(70) & ((!\DUT|ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => line2_buffer(70),
	datac => line2_buffer(94),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux20~0_combout\);

-- Location: LCCOMB_X26_Y13_N16
\DUT|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux20~5_combout\ = (\DUT|ptr\(3) & ((\DUT|Mux20~3_combout\ & (\DUT|Mux20~4_combout\)) # (!\DUT|Mux20~3_combout\ & ((\DUT|Mux20~0_combout\))))) # (!\DUT|ptr\(3) & (((\DUT|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux20~4_combout\,
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux20~3_combout\,
	datad => \DUT|Mux20~0_combout\,
	combout => \DUT|Mux20~5_combout\);

-- Location: LCCOMB_X23_Y7_N12
\DUT|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector1~4_combout\ = (\DUT|state.SELECT_LINE2~q\) # ((\DUT|Mux20~5_combout\ & \DUT|state.WRITE_LINE2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.SELECT_LINE2~q\,
	datac => \DUT|Mux20~5_combout\,
	datad => \DUT|state.WRITE_LINE2~q\,
	combout => \DUT|Selector1~4_combout\);

-- Location: LCCOMB_X22_Y7_N20
\DUT|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector18~0_combout\ = (\DUT|WideOr8~0_combout\ & ((\DUT|Selector1~3_combout\) # (\DUT|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector1~3_combout\,
	datac => \DUT|Selector1~4_combout\,
	datad => \DUT|WideOr8~0_combout\,
	combout => \DUT|Selector18~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\DUT|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~0_combout\ = (\DUT|ptr\(0) & (((\DUT|ptr\(1))))) # (!\DUT|ptr\(0) & ((\DUT|ptr\(1) & (line1_buffer(72))) # (!\DUT|ptr\(1) & ((line1_buffer(56))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(72),
	datab => line1_buffer(56),
	datac => \DUT|ptr\(0),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux16~0_combout\);

-- Location: LCCOMB_X18_Y8_N22
\DUT|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~1_combout\ = (\DUT|Mux16~0_combout\ & (((line1_buffer(96)) # (!\DUT|ptr\(0))))) # (!\DUT|Mux16~0_combout\ & (line1_buffer(48) & (\DUT|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(48),
	datab => \DUT|Mux16~0_combout\,
	datac => \DUT|ptr\(0),
	datad => line1_buffer(96),
	combout => \DUT|Mux16~1_combout\);

-- Location: LCCOMB_X19_Y7_N22
\DUT|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~2_combout\ = (\DUT|ptr\(0) & (((\DUT|ptr\(1))))) # (!\DUT|ptr\(0) & ((\DUT|ptr\(1) & ((line1_buffer(81)))) # (!\DUT|ptr\(1) & (line1_buffer(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(32),
	datab => \DUT|ptr\(0),
	datac => \DUT|ptr\(1),
	datad => line1_buffer(81),
	combout => \DUT|Mux16~2_combout\);

-- Location: LCCOMB_X19_Y7_N0
\DUT|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~3_combout\ = (\DUT|ptr\(0) & ((\DUT|Mux16~2_combout\ & ((line1_buffer(112)))) # (!\DUT|Mux16~2_combout\ & (line2_buffer(8))))) # (!\DUT|ptr\(0) & (((\DUT|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(0),
	datab => line2_buffer(8),
	datac => \DUT|Mux16~2_combout\,
	datad => line1_buffer(112),
	combout => \DUT|Mux16~3_combout\);

-- Location: LCCOMB_X19_Y8_N2
\DUT|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~4_combout\ = (\DUT|ptr\(1) & (\DUT|ptr\(0) & ((line1_buffer(44))))) # (!\DUT|ptr\(1) & (!\DUT|ptr\(0) & (line2_buffer(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(0),
	datac => line2_buffer(72),
	datad => line1_buffer(44),
	combout => \DUT|Mux16~4_combout\);

-- Location: LCCOMB_X19_Y8_N8
\DUT|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~5_combout\ = (\DUT|ptr\(2) & ((\DUT|ptr\(3)) # ((\DUT|Mux16~3_combout\)))) # (!\DUT|ptr\(2) & (!\DUT|ptr\(3) & ((\DUT|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux16~3_combout\,
	datad => \DUT|Mux16~4_combout\,
	combout => \DUT|Mux16~5_combout\);

-- Location: LCCOMB_X18_Y8_N0
\DUT|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~6_combout\ = (\DUT|ptr\(1) & (((\DUT|ptr\(0)) # (line1_buffer(112))))) # (!\DUT|ptr\(1) & (line1_buffer(96) & (!\DUT|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(96),
	datab => \DUT|ptr\(1),
	datac => \DUT|ptr\(0),
	datad => line1_buffer(112),
	combout => \DUT|Mux16~6_combout\);

-- Location: LCCOMB_X18_Y8_N18
\DUT|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~7_combout\ = (\DUT|Mux16~6_combout\ & (((line1_buffer(68)) # (!\DUT|ptr\(0))))) # (!\DUT|Mux16~6_combout\ & (line1_buffer(48) & (\DUT|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(48),
	datab => \DUT|Mux16~6_combout\,
	datac => \DUT|ptr\(0),
	datad => line1_buffer(68),
	combout => \DUT|Mux16~7_combout\);

-- Location: LCCOMB_X18_Y8_N20
\DUT|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux16~8_combout\ = (\DUT|ptr\(3) & ((\DUT|Mux16~5_combout\ & ((\DUT|Mux16~7_combout\))) # (!\DUT|Mux16~5_combout\ & (\DUT|Mux16~1_combout\)))) # (!\DUT|ptr\(3) & (((\DUT|Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux16~1_combout\,
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux16~5_combout\,
	datad => \DUT|Mux16~7_combout\,
	combout => \DUT|Mux16~8_combout\);

-- Location: LCCOMB_X19_Y13_N20
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!operador(3) & dato2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(3),
	datab => dato2(2),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X19_Y13_N2
\case4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- case4(2) = (GLOBAL(\Mux30~1clkctrl_outclk\) & ((\Mux32~0_combout\))) # (!GLOBAL(\Mux30~1clkctrl_outclk\) & (case4(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => case4(2),
	datac => \Mux32~0_combout\,
	datad => \Mux30~1clkctrl_outclk\,
	combout => case4(2));

-- Location: LCCOMB_X19_Y13_N30
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (case4(2) & \estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => case4(2),
	datad => \estado.S4~q\,
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X19_Y13_N8
\line2[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(50) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector58~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector58~0_combout\,
	datac => line2(50),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(50));

-- Location: LCCOMB_X19_Y13_N4
\line2_buffer[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(50) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(50))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(50),
	datac => line2_buffer(50),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(50));

-- Location: LCCOMB_X26_Y9_N12
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (!\estado.S4~q\ & \KB0|OUT1|Mux4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S4~q\,
	datac => \KB0|OUT1|Mux4~8_combout\,
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X26_Y9_N26
\line2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(2) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector68~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector68~0_combout\,
	datac => line2(2),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(2));

-- Location: LCCOMB_X26_Y9_N22
\line2_buffer[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(2) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(2))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(2),
	datac => line2_buffer(2),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(2));

-- Location: LCCOMB_X26_Y9_N24
\DUT|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux24~2_combout\ = (\DUT|ptr\(1) & (line2_buffer(50) & ((\DUT|ptr\(2))))) # (!\DUT|ptr\(1) & (((line2_buffer(2) & !\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line2_buffer(50),
	datac => line2_buffer(2),
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux24~2_combout\);

-- Location: LCCOMB_X26_Y10_N20
\Selector50~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~10_combout\ = (operador(1) & \ALU0|solucion[2]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => operador(1),
	datad => \ALU0|solucion[2]$latch~combout\,
	combout => \Selector50~10_combout\);

-- Location: LCCOMB_X25_Y10_N22
\Selector50~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~11_combout\ = (\Selector50~10_combout\ & (((\ALU0|Mux1~3_combout\) # (!\Mux1~1_combout\)) # (!\LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \Selector50~10_combout\,
	datad => \Mux1~1_combout\,
	combout => \Selector50~11_combout\);

-- Location: LCCOMB_X25_Y11_N24
\Selector50~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~12_combout\ = ((\ALU0|solucion[5]$latch~combout\ & \ALU0|solucion[2]$latch~combout\)) # (!\Mux28~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|solucion[5]$latch~combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \Mux28~4_combout\,
	combout => \Selector50~12_combout\);

-- Location: LCCOMB_X25_Y10_N14
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\ALU0|solucion[2]$latch~combout\ & (((\Mux2~0_combout\) # (!\ALU0|Mux1~3_combout\)) # (!\Decoder~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder~13_combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X25_Y10_N8
\Selector50~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~9_combout\ = (operador(1) & (\Mux2~1_combout\ & \LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => operador(1),
	datac => \Mux2~1_combout\,
	datad => \LessThan2~1_combout\,
	combout => \Selector50~9_combout\);

-- Location: LCCOMB_X25_Y12_N20
\Selector50~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~7_combout\ = (\ALU0|Mux0~5_combout\ & (((!\ALU0|solucion[2]$latch~combout\ & \Decoder~17_combout\)))) # (!\ALU0|Mux0~5_combout\ & (\ALU0|solucion[2]$latch~combout\ $ (((\ALU0|Mux1~3_combout\ & \Decoder~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~3_combout\,
	datab => \ALU0|Mux0~5_combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \Decoder~17_combout\,
	combout => \Selector50~7_combout\);

-- Location: LCCOMB_X25_Y12_N0
\Selector50~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~15_combout\ = (\ALU0|solucion[6]$latch~combout\) # ((\Selector50~7_combout\) # ((\ALU0|solucion[7]$latch~combout\) # (\ALU0|solucion[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datab => \Selector50~7_combout\,
	datac => \ALU0|solucion[7]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Selector50~15_combout\);

-- Location: LCCOMB_X25_Y10_N28
\Selector50~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~8_combout\ = (!operador(1) & ((\Selector50~15_combout\) # ((!\LessThan0~2_combout\ & \ALU0|solucion[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \ALU0|solucion[2]$latch~combout\,
	datac => operador(1),
	datad => \Selector50~15_combout\,
	combout => \Selector50~8_combout\);

-- Location: LCCOMB_X25_Y10_N12
\Selector50~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~13_combout\ = (\Selector50~11_combout\) # ((\Selector50~12_combout\) # ((\Selector50~9_combout\) # (\Selector50~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~11_combout\,
	datab => \Selector50~12_combout\,
	datac => \Selector50~9_combout\,
	datad => \Selector50~8_combout\,
	combout => \Selector50~13_combout\);

-- Location: LCCOMB_X25_Y10_N18
\Selector50~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~16_combout\ = (((\Selector50~13_combout\ & !operador(4))) # (!operador(3))) # (!operador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~13_combout\,
	datab => operador(5),
	datac => operador(4),
	datad => operador(3),
	combout => \Selector50~16_combout\);

-- Location: LCCOMB_X21_Y11_N26
\unidades~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~5_combout\ = (\ALU0|solucion[2]$latch~combout\ & (\ALU0|solucion[4]$latch~combout\ $ (((\ALU0|solucion[3]$latch~combout\) # (!\ALU0|Mux1~3_combout\))))) # (!\ALU0|solucion[2]$latch~combout\ & ((\ALU0|Mux1~3_combout\ & 
-- (!\ALU0|solucion[3]$latch~combout\ & !\ALU0|solucion[4]$latch~combout\)) # (!\ALU0|Mux1~3_combout\ & (\ALU0|solucion[3]$latch~combout\ & \ALU0|solucion[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \ALU0|solucion[4]$latch~combout\,
	combout => \unidades~5_combout\);

-- Location: LCCOMB_X21_Y11_N4
\unidades~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~4_combout\ = (\ALU0|solucion[2]$latch~combout\ & (!\ALU0|solucion[4]$latch~combout\ & ((\ALU0|Mux1~3_combout\) # (!\ALU0|solucion[3]$latch~combout\)))) # (!\ALU0|solucion[2]$latch~combout\ & ((\ALU0|solucion[3]$latch~combout\ & 
-- ((!\ALU0|Mux1~3_combout\))) # (!\ALU0|solucion[3]$latch~combout\ & (\ALU0|solucion[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|solucion[4]$latch~combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|solucion[3]$latch~combout\,
	combout => \unidades~4_combout\);

-- Location: LCCOMB_X21_Y11_N8
\Selector50~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~14_combout\ = (\ALU0|solucion[7]$latch~combout\ & (\ALU0|solucion[2]$latch~combout\)) # (!\ALU0|solucion[7]$latch~combout\ & (((\ALU0|solucion[6]$latch~combout\ & !\unidades~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|solucion[6]$latch~combout\,
	datac => \unidades~4_combout\,
	datad => \ALU0|solucion[7]$latch~combout\,
	combout => \Selector50~14_combout\);

-- Location: LCCOMB_X21_Y11_N20
\Selector50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~5_combout\ = (\Selector50~14_combout\) # ((\unidades~5_combout\ & (!\ALU0|solucion[7]$latch~combout\ & \ALU0|solucion[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~5_combout\,
	datab => \ALU0|solucion[7]$latch~combout\,
	datac => \Selector50~14_combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Selector50~5_combout\);

-- Location: LCCOMB_X24_Y9_N12
\unidades~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~3_combout\ = (\ALU0|solucion[2]$latch~combout\ & (!\ALU0|solucion[4]$latch~combout\ & ((\ALU0|Mux1~3_combout\) # (!\ALU0|solucion[3]$latch~combout\)))) # (!\ALU0|solucion[2]$latch~combout\ & (\ALU0|solucion[4]$latch~combout\ & 
-- ((\ALU0|solucion[3]$latch~combout\) # (!\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|solucion[3]$latch~combout\,
	datad => \ALU0|solucion[4]$latch~combout\,
	combout => \unidades~3_combout\);

-- Location: LCCOMB_X24_Y9_N26
\Selector50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~4_combout\ = (\ALU0|solucion[5]$latch~combout\ & ((\Decoder~18_combout\) # ((\unidades~3_combout\ & \Decoder~13_combout\)))) # (!\ALU0|solucion[5]$latch~combout\ & (\unidades~3_combout\ & ((\Decoder~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[5]$latch~combout\,
	datab => \unidades~3_combout\,
	datac => \Decoder~18_combout\,
	datad => \Decoder~13_combout\,
	combout => \Selector50~4_combout\);

-- Location: LCCOMB_X25_Y10_N2
\Selector50~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~6_combout\ = (\Selector48~6_combout\ & ((\Selector50~5_combout\) # ((\Selector50~4_combout\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~6_combout\,
	datab => \Selector50~5_combout\,
	datac => \Selector50~4_combout\,
	datad => \Mux28~7_combout\,
	combout => \Selector50~6_combout\);

-- Location: LCCOMB_X25_Y10_N16
\Selector50~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~17_combout\ = (\Selector50~6_combout\) # ((\Selector50~16_combout\ & \estado.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector50~16_combout\,
	datac => \Selector50~6_combout\,
	datad => \estado.S4~q\,
	combout => \Selector50~17_combout\);

-- Location: LCCOMB_X25_Y10_N30
\line2[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(58) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector50~17_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(58),
	datac => \Selector50~17_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(58));

-- Location: LCCOMB_X26_Y9_N8
\line2_buffer[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(58) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(58))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(58),
	datac => line2_buffer(58),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(58));

-- Location: LCCOMB_X26_Y9_N14
\DUT|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux24~1_combout\ = (\DUT|ptr\(2) & (line2_buffer(58) & \DUT|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => line2_buffer(58),
	datac => \DUT|ptr\(1),
	combout => \DUT|Mux24~1_combout\);

-- Location: LCCOMB_X26_Y9_N6
\DUT|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux24~3_combout\ = (\DUT|ptr\(3) & (((\DUT|ptr\(0))))) # (!\DUT|ptr\(3) & ((\DUT|ptr\(0) & ((\DUT|Mux24~1_combout\))) # (!\DUT|ptr\(0) & (\DUT|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(3),
	datab => \DUT|Mux24~2_combout\,
	datac => \DUT|Mux24~1_combout\,
	datad => \DUT|ptr\(0),
	combout => \DUT|Mux24~3_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (dato2(2) & \estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dato2(2),
	datac => \estado.S4~q\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X18_Y12_N24
\line2[90]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(90) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector38~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(90)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(90),
	datac => \Selector38~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(90));

-- Location: LCCOMB_X18_Y12_N18
\line2_buffer[90]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(90) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(90)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(90)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(90),
	datac => line2(90),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(90));

-- Location: LCCOMB_X21_Y9_N12
\DUT|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux24~4_combout\ = (\DUT|ptr\(1) & ((line2_buffer(90)) # ((\DUT|ptr\(2))))) # (!\DUT|ptr\(1) & (((line2_buffer(72) & !\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line2_buffer(90),
	datac => line2_buffer(72),
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux24~4_combout\);

-- Location: LCCOMB_X26_Y13_N12
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (operador(2) & ((\estado.S4~q\) # (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => operador(2),
	datad => \estado.S3~q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X26_Y13_N22
\line2[106]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(106) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector30~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(106),
	datac => \Selector0~4clkctrl_outclk\,
	datad => \Selector30~0_combout\,
	combout => line2(106));

-- Location: LCCOMB_X26_Y13_N26
\line2_buffer[106]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(106) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(106)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(106),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(106),
	combout => line2_buffer(106));

-- Location: LCCOMB_X21_Y9_N30
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\estado.S1~q\ & dato1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S1~q\,
	datac => dato1(2),
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X21_Y9_N10
\line2[122]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(122) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector22~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(122))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector22~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(122),
	combout => line2(122));

-- Location: LCCOMB_X21_Y9_N4
\line2_buffer[122]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(122) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(122)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(122)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(122),
	datac => line2(122),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(122));

-- Location: LCCOMB_X22_Y9_N10
\DUT|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux24~5_combout\ = (\DUT|Mux24~4_combout\ & (((line2_buffer(122)) # (!\DUT|ptr\(2))))) # (!\DUT|Mux24~4_combout\ & (line2_buffer(106) & ((\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux24~4_combout\,
	datab => line2_buffer(106),
	datac => line2_buffer(122),
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux24~5_combout\);

-- Location: LCCOMB_X25_Y9_N10
\Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~4_combout\ = (\Selector47~7_combout\ & (\Decoder~19_combout\ & ((\Decoder~16_combout\) # (!\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Decoder~16_combout\,
	datac => \Selector47~7_combout\,
	datad => \Decoder~19_combout\,
	combout => \Selector46~4_combout\);

-- Location: LCCOMB_X26_Y10_N24
\Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = ((dato1(2) & ((!\ALU0|Mux0~5_combout\) # (!\ALU0|Mux1~3_combout\)))) # (!\Selector47~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~4_combout\,
	datab => dato1(2),
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|Mux0~5_combout\,
	combout => \Selector46~2_combout\);

-- Location: LCCOMB_X26_Y10_N28
\Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~6_combout\ = (\Mux23~1_combout\ & (!operador(6) & (\LessThan0~2_combout\ & !operador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => operador(6),
	datac => \LessThan0~2_combout\,
	datad => operador(4),
	combout => \Selector46~6_combout\);

-- Location: LCCOMB_X26_Y10_N14
\Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (\Selector46~6_combout\) # ((\Selector46~2_combout\ & (operador(6) & !operador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~2_combout\,
	datab => operador(6),
	datac => \Selector46~6_combout\,
	datad => operador(4),
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X26_Y9_N10
\Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~5_combout\ = (\estado.S4~q\ & (((\Selector46~4_combout\) # (\Selector46~3_combout\)) # (!\Selector47~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~13_combout\,
	datab => \Selector46~4_combout\,
	datac => \Selector46~3_combout\,
	datad => \estado.S4~q\,
	combout => \Selector46~5_combout\);

-- Location: LCCOMB_X26_Y9_N4
\line2[66]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(66) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector46~5_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector46~5_combout\,
	datac => line2(66),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(66));

-- Location: LCCOMB_X26_Y9_N30
\line2_buffer[66]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(66) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(66)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(66),
	datac => line2(66),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(66));

-- Location: LCCOMB_X26_Y9_N20
\DUT|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux24~0_combout\ = (!\DUT|ptr\(2) & (line2_buffer(66) & !\DUT|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datac => line2_buffer(66),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux24~0_combout\);

-- Location: LCCOMB_X26_Y9_N28
\DUT|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux24~6_combout\ = (\DUT|Mux24~3_combout\ & ((\DUT|Mux24~5_combout\) # ((!\DUT|ptr\(3))))) # (!\DUT|Mux24~3_combout\ & (((\DUT|ptr\(3) & \DUT|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux24~3_combout\,
	datab => \DUT|Mux24~5_combout\,
	datac => \DUT|ptr\(3),
	datad => \DUT|Mux24~0_combout\,
	combout => \DUT|Mux24~6_combout\);

-- Location: LCCOMB_X22_Y7_N4
\DUT|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector18~2_combout\ = (\DUT|state.WRITE_LINE2~q\ & ((\DUT|Mux24~6_combout\) # ((\DUT|state.WRITE_LINE1~q\ & \DUT|Mux16~8_combout\)))) # (!\DUT|state.WRITE_LINE2~q\ & (\DUT|state.WRITE_LINE1~q\ & (\DUT|Mux16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.WRITE_LINE2~q\,
	datab => \DUT|state.WRITE_LINE1~q\,
	datac => \DUT|Mux16~8_combout\,
	datad => \DUT|Mux24~6_combout\,
	combout => \DUT|Selector18~2_combout\);

-- Location: LCCOMB_X22_Y7_N18
\DUT|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector18~3_combout\ = (\DUT|Selector18~0_combout\) # ((\DUT|WideOr9~0_combout\ & ((\DUT|Selector18~1_combout\) # (\DUT|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector18~1_combout\,
	datab => \DUT|Selector18~0_combout\,
	datac => \DUT|Selector18~2_combout\,
	datad => \DUT|WideOr9~0_combout\,
	combout => \DUT|Selector18~3_combout\);

-- Location: LCCOMB_X19_Y7_N30
\DUT|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~5_combout\ = (\DUT|ptr\(1) & (!\DUT|ptr\(3) & line1_buffer(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datac => \DUT|ptr\(3),
	datad => line1_buffer(49),
	combout => \DUT|Selector4~5_combout\);

-- Location: LCCOMB_X21_Y7_N18
\DUT|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~3_combout\ = (\DUT|state.WRITE_LINE1~q\ & \DUT|ptr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.WRITE_LINE1~q\,
	datac => \DUT|ptr\(2),
	combout => \DUT|Selector4~3_combout\);

-- Location: LCCOMB_X19_Y7_N4
\DUT|Selector4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~6_combout\ = (!\DUT|ptr\(1) & ((\DUT|ptr\(3) & (line1_buffer(81))) # (!\DUT|ptr\(3) & ((line2_buffer(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(3),
	datac => line1_buffer(81),
	datad => line2_buffer(8),
	combout => \DUT|Selector4~6_combout\);

-- Location: LCCOMB_X19_Y7_N10
\DUT|Selector4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~7_combout\ = (\DUT|Selector4~3_combout\ & (!\DUT|ptr\(0) & ((\DUT|Selector4~5_combout\) # (\DUT|Selector4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector4~5_combout\,
	datab => \DUT|Selector4~3_combout\,
	datac => \DUT|Selector4~6_combout\,
	datad => \DUT|ptr\(0),
	combout => \DUT|Selector4~7_combout\);

-- Location: LCCOMB_X26_Y11_N30
\Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (operador(4) & (\ALU0|solucion[7]$latch~combout\ & ((\ALU0|solucion[3]$latch~combout\)))) # (!operador(4) & (((operador(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => operador(6),
	datac => operador(4),
	datad => \ALU0|solucion[3]$latch~combout\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X26_Y11_N20
\Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = ((\Mux25~7_combout\) # ((operador(4) & !\Mux28~7_combout\))) # (!\Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => \Mux23~0_combout\,
	datac => \Mux25~7_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux25~8_combout\);

-- Location: LCCOMB_X26_Y10_N4
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~3_combout\ & ((\ALU0|solucion[7]$latch~combout\) # ((\ALU0|solucion[3]$latch~combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \LessThan0~2_combout\,
	datad => \Mux25~3_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X26_Y10_N10
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Decoder~13_combout\ & ((\ALU0|Mux0~5_combout\) # ((\ALU0|solucion[2]$latch~combout\) # (\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux0~5_combout\,
	datab => \ALU0|solucion[2]$latch~combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \Decoder~13_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X26_Y10_N18
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux25~5_combout\ & (((!\Mux25~4_combout\) # (!\LessThan0~2_combout\)) # (!\Decoder~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder~17_combout\,
	datab => \LessThan0~2_combout\,
	datac => \Mux25~5_combout\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X26_Y12_N24
\unidades~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~8_combout\ = (\ALU0|solucion[4]$latch~combout\ & (!\ALU0|solucion[2]$latch~combout\ & (\ALU0|solucion[3]$latch~combout\ $ (!\ALU0|Mux1~3_combout\)))) # (!\ALU0|solucion[4]$latch~combout\ & (!\ALU0|solucion[3]$latch~combout\ & 
-- (\ALU0|solucion[2]$latch~combout\ & \ALU0|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \ALU0|Mux1~3_combout\,
	combout => \unidades~8_combout\);

-- Location: LCCOMB_X26_Y12_N18
\unidades~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~6_combout\ = (\ALU0|solucion[4]$latch~combout\ & (\ALU0|solucion[3]$latch~combout\)) # (!\ALU0|solucion[4]$latch~combout\ & (\ALU0|solucion[2]$latch~combout\ & (\ALU0|solucion[3]$latch~combout\ $ (!\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \ALU0|Mux1~3_combout\,
	combout => \unidades~6_combout\);

-- Location: LCCOMB_X26_Y12_N0
\unidades~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \unidades~7_combout\ = (\ALU0|Mux1~3_combout\ & (\ALU0|solucion[4]$latch~combout\ & (!\ALU0|solucion[2]$latch~combout\ & !\ALU0|solucion[3]$latch~combout\))) # (!\ALU0|Mux1~3_combout\ & (\ALU0|solucion[3]$latch~combout\ & (\ALU0|solucion[4]$latch~combout\ 
-- $ (!\ALU0|solucion[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[4]$latch~combout\,
	datab => \ALU0|Mux1~3_combout\,
	datac => \ALU0|solucion[2]$latch~combout\,
	datad => \ALU0|solucion[3]$latch~combout\,
	combout => \unidades~7_combout\);

-- Location: LCCOMB_X26_Y12_N30
\Mux25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~11_combout\ = (\ALU0|solucion[5]$latch~combout\ & (((\ALU0|solucion[6]$latch~combout\)))) # (!\ALU0|solucion[5]$latch~combout\ & ((\ALU0|solucion[6]$latch~combout\ & (\unidades~6_combout\)) # (!\ALU0|solucion[6]$latch~combout\ & 
-- ((\unidades~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~6_combout\,
	datab => \ALU0|solucion[5]$latch~combout\,
	datac => \unidades~7_combout\,
	datad => \ALU0|solucion[6]$latch~combout\,
	combout => \Mux25~11_combout\);

-- Location: LCCOMB_X26_Y12_N22
\Mux25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~12_combout\ = (\Mux25~2_combout\ & ((\Mux25~11_combout\) # ((\unidades~8_combout\ & \ALU0|solucion[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidades~8_combout\,
	datab => \Mux25~11_combout\,
	datac => \ALU0|solucion[5]$latch~combout\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~12_combout\);

-- Location: LCCOMB_X25_Y12_N6
\Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (\ALU0|solucion[4]$latch~combout\ & ((\ALU0|Mux1~3_combout\) # ((\ALU0|solucion[3]$latch~combout\) # (\ALU0|solucion[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux1~3_combout\,
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \ALU0|solucion[4]$latch~combout\,
	datad => \ALU0|solucion[2]$latch~combout\,
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X25_Y12_N10
\Mux25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~15_combout\ = (!\ALU0|solucion[7]$latch~combout\ & ((\Mux25~9_combout\) # ((\ALU0|solucion[6]$latch~combout\) # (\ALU0|solucion[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \Mux25~9_combout\,
	datac => \ALU0|solucion[6]$latch~combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Mux25~15_combout\);

-- Location: LCCOMB_X26_Y12_N4
\Mux25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = (\ALU0|Mux3~1_combout\ & ((\Mux25~15_combout\) # ((\ALU0|solucion[3]$latch~combout\ & !\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Mux3~1_combout\,
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \LessThan2~1_combout\,
	datad => \Mux25~15_combout\,
	combout => \Mux25~10_combout\);

-- Location: LCCOMB_X25_Y12_N8
\Mux25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~13_combout\ = (!operador(4) & ((operador(2) $ (!operador(1))) # (!operador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(4),
	datab => operador(2),
	datac => operador(0),
	datad => operador(1),
	combout => \Mux25~13_combout\);

-- Location: LCCOMB_X26_Y12_N12
\Mux25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~14_combout\ = (\Mux25~12_combout\) # ((\Mux25~10_combout\) # (\Mux25~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~12_combout\,
	datac => \Mux25~10_combout\,
	datad => \Mux25~13_combout\,
	combout => \Mux25~14_combout\);

-- Location: LCCOMB_X26_Y12_N2
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\estado.S4~q\ & ((\Mux25~8_combout\) # ((\Mux25~6_combout\) # (\Mux25~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~8_combout\,
	datab => \estado.S4~q\,
	datac => \Mux25~6_combout\,
	datad => \Mux25~14_combout\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\line2[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(59) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector49~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector49~0_combout\,
	datac => line2(59),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(59));

-- Location: LCCOMB_X26_Y12_N26
\line2_buffer[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(59) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(59)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(59),
	datac => line2(59),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(59));

-- Location: LCCOMB_X19_Y10_N26
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\estado.S1~q\ & dato1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S1~q\,
	datac => dato1(3),
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X19_Y10_N22
\line2[123]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(123) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector21~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(123)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(123),
	datac => \Selector0~4clkctrl_outclk\,
	datad => \Selector21~0_combout\,
	combout => line2(123));

-- Location: LCCOMB_X19_Y10_N18
\line2_buffer[123]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(123) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(123))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(123),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2_buffer(123),
	combout => line2_buffer(123));

-- Location: LCCOMB_X19_Y10_N4
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (operador(3) & ((\estado.S4~q\) # (\estado.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datab => \estado.S3~q\,
	datac => operador(3),
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X19_Y10_N20
\line2[107]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(107) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((\Selector29~0_combout\))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2(107),
	datac => \Selector29~0_combout\,
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(107));

-- Location: LCCOMB_X19_Y10_N24
\line2_buffer[107]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(107) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (line2(107))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2_buffer(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2(107),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2_buffer(107),
	combout => line2_buffer(107));

-- Location: LCCOMB_X19_Y10_N12
\DUT|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~5_combout\ = (\DUT|ptr\(3) & ((\DUT|ptr\(1) & (line2_buffer(123))) # (!\DUT|ptr\(1) & ((line2_buffer(107))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line2_buffer(123),
	datac => \DUT|ptr\(3),
	datad => line2_buffer(107),
	combout => \DUT|Mux23~5_combout\);

-- Location: LCCOMB_X22_Y11_N16
\DUT|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~6_combout\ = (\DUT|Mux23~5_combout\) # ((line2_buffer(59) & (!\DUT|ptr\(3) & \DUT|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(59),
	datab => \DUT|ptr\(3),
	datac => \DUT|Mux23~5_combout\,
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux23~6_combout\);

-- Location: LCCOMB_X23_Y10_N18
\Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (operador(6) & (dato1(3) & ((!\ALU0|Mux0~5_combout\) # (!\ALU0|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(6),
	datab => dato1(3),
	datac => \ALU0|Mux1~3_combout\,
	datad => \ALU0|Mux0~5_combout\,
	combout => \Selector45~3_combout\);

-- Location: LCCOMB_X23_Y10_N12
\Selector45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~4_combout\ = (\Selector45~3_combout\) # ((operador(2)) # (operador(3) $ (!operador(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => operador(3),
	datab => \Selector45~3_combout\,
	datac => operador(6),
	datad => operador(2),
	combout => \Selector45~4_combout\);

-- Location: LCCOMB_X23_Y10_N14
\Selector45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~5_combout\ = ((\Decoder~18_combout\ & ((\ALU0|solucion[4]$latch~combout\) # (\ALU0|solucion[5]$latch~combout\)))) # (!\Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \ALU0|solucion[4]$latch~combout\,
	datac => \Decoder~18_combout\,
	datad => \ALU0|solucion[5]$latch~combout\,
	combout => \Selector45~5_combout\);

-- Location: LCCOMB_X23_Y10_N16
\Selector45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~7_combout\ = (operador(4) & (((\Selector45~5_combout\)))) # (!operador(4) & (\Selector45~4_combout\ & ((operador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~4_combout\,
	datab => \Selector45~5_combout\,
	datac => operador(1),
	datad => operador(4),
	combout => \Selector45~7_combout\);

-- Location: LCCOMB_X22_Y10_N22
\Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = ((!\Selector42~4_combout\ & (!operador(1) & !operador(4)))) # (!\Selector43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~4_combout\,
	datab => operador(1),
	datac => operador(4),
	datad => \Selector43~2_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X22_Y11_N14
\Selector45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~6_combout\ = (\estado.S4~q\ & ((\Selector45~7_combout\) # (\Selector45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S4~q\,
	datac => \Selector45~7_combout\,
	datad => \Selector45~2_combout\,
	combout => \Selector45~6_combout\);

-- Location: LCCOMB_X22_Y11_N30
\line2[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(67) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector45~6_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector45~6_combout\,
	datac => line2(67),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(67));

-- Location: LCCOMB_X22_Y11_N12
\line2_buffer[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(67) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(67)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(67),
	datab => line2(67),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(67));

-- Location: LCCOMB_X22_Y11_N4
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (!\estado.S4~q\ & \KB0|OUT1|Mux3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => \KB0|OUT1|Mux3~5_combout\,
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X22_Y11_N20
\line2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(3) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector67~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector67~0_combout\,
	datab => line2(3),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(3));

-- Location: LCCOMB_X22_Y11_N10
\line2_buffer[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(3) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(3)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(3),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(3),
	combout => line2_buffer(3));

-- Location: LCCOMB_X22_Y11_N26
\DUT|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~3_combout\ = (!\DUT|ptr\(1) & ((\DUT|ptr\(3) & (line2_buffer(67))) # (!\DUT|ptr\(3) & ((line2_buffer(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(3),
	datac => line2_buffer(67),
	datad => line2_buffer(3),
	combout => \DUT|Mux23~3_combout\);

-- Location: LCCOMB_X21_Y12_N28
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (dato2(3) & \estado.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dato2(3),
	datab => \estado.S4~q\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X21_Y12_N0
\line2[91]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(91) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector37~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(91))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector37~0_combout\,
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(91),
	combout => line2(91));

-- Location: LCCOMB_X21_Y12_N24
\line2_buffer[91]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(91) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(91)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(91),
	datac => \Selector0~4clkctrl_outclk\,
	datad => line2(91),
	combout => line2_buffer(91));

-- Location: LCCOMB_X22_Y9_N16
\DUT|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~1_combout\ = (\DUT|ptr\(3) & ((\DUT|ptr\(1) & (line2_buffer(91))) # (!\DUT|ptr\(1) & ((line2_buffer(72))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line2_buffer(91),
	datab => \DUT|ptr\(3),
	datac => line2_buffer(72),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux23~1_combout\);

-- Location: LCCOMB_X22_Y9_N18
\DUT|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~2_combout\ = (\DUT|Mux23~1_combout\) # ((!\DUT|ptr\(3) & (line2_buffer(8) & !\DUT|ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(3),
	datab => \DUT|Mux23~1_combout\,
	datac => line2_buffer(8),
	datad => \DUT|ptr\(1),
	combout => \DUT|Mux23~2_combout\);

-- Location: LCCOMB_X22_Y9_N24
\DUT|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~4_combout\ = (\DUT|ptr\(0) & (((\DUT|Mux23~2_combout\) # (\DUT|ptr\(2))))) # (!\DUT|ptr\(0) & (\DUT|Mux23~3_combout\ & ((!\DUT|ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux23~3_combout\,
	datab => \DUT|Mux23~2_combout\,
	datac => \DUT|ptr\(0),
	datad => \DUT|ptr\(2),
	combout => \DUT|Mux23~4_combout\);

-- Location: LCCOMB_X22_Y11_N24
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!operador(3) & dato2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => operador(3),
	datad => dato2(3),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X22_Y11_N2
\case4[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- case4(3) = (GLOBAL(\Mux30~1clkctrl_outclk\) & ((\Mux33~0_combout\))) # (!GLOBAL(\Mux30~1clkctrl_outclk\) & (case4(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => case4(3),
	datac => \Mux33~0_combout\,
	datad => \Mux30~1clkctrl_outclk\,
	combout => case4(3));

-- Location: LCCOMB_X22_Y11_N0
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\estado.S4~q\ & case4(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S4~q\,
	datac => case4(3),
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X22_Y11_N8
\line2[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2(51) = (GLOBAL(\Selector0~4clkctrl_outclk\) & (\Selector57~0_combout\)) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector57~0_combout\,
	datac => line2(51),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2(51));

-- Location: LCCOMB_X22_Y11_N18
\line2_buffer[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- line2_buffer(51) = (GLOBAL(\Selector0~4clkctrl_outclk\) & ((line2(51)))) # (!GLOBAL(\Selector0~4clkctrl_outclk\) & (line2_buffer(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => line2_buffer(51),
	datac => line2(51),
	datad => \Selector0~4clkctrl_outclk\,
	combout => line2_buffer(51));

-- Location: LCCOMB_X22_Y11_N28
\DUT|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~0_combout\ = (\DUT|ptr\(1) & (!\DUT|ptr\(3) & line2_buffer(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => \DUT|ptr\(3),
	datad => line2_buffer(51),
	combout => \DUT|Mux23~0_combout\);

-- Location: LCCOMB_X22_Y11_N22
\DUT|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux23~7_combout\ = (\DUT|ptr\(2) & ((\DUT|Mux23~4_combout\ & (\DUT|Mux23~6_combout\)) # (!\DUT|Mux23~4_combout\ & ((\DUT|Mux23~0_combout\))))) # (!\DUT|ptr\(2) & (((\DUT|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(2),
	datab => \DUT|Mux23~6_combout\,
	datac => \DUT|Mux23~4_combout\,
	datad => \DUT|Mux23~0_combout\,
	combout => \DUT|Mux23~7_combout\);

-- Location: LCCOMB_X21_Y7_N26
\DUT|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux15~0_combout\ = (\DUT|ptr\(1) & (((line1_buffer(49)) # (\DUT|ptr\(3))))) # (!\DUT|ptr\(1) & (line1_buffer(88) & ((!\DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(88),
	datab => \DUT|ptr\(1),
	datac => line1_buffer(49),
	datad => \DUT|ptr\(3),
	combout => \DUT|Mux15~0_combout\);

-- Location: LCCOMB_X21_Y7_N12
\DUT|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Mux15~1_combout\ = (\DUT|Mux15~0_combout\ & ((line1_buffer(68)) # ((!\DUT|ptr\(3))))) # (!\DUT|Mux15~0_combout\ & (((line1_buffer(81) & \DUT|ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(68),
	datab => line1_buffer(81),
	datac => \DUT|Mux15~0_combout\,
	datad => \DUT|ptr\(3),
	combout => \DUT|Mux15~1_combout\);

-- Location: LCCOMB_X19_Y7_N18
\DUT|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~0_combout\ = (\DUT|ptr\(1) & ((\DUT|ptr\(3) & ((line1_buffer(112)))) # (!\DUT|ptr\(3) & (line1_buffer(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => line1_buffer(44),
	datab => \DUT|ptr\(3),
	datac => \DUT|ptr\(1),
	datad => line1_buffer(112),
	combout => \DUT|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y7_N24
\DUT|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~1_combout\ = (\DUT|Selector4~0_combout\) # ((!\DUT|ptr\(1) & (line1_buffer(48) & \DUT|ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ptr\(1),
	datab => line1_buffer(48),
	datac => \DUT|ptr\(3),
	datad => \DUT|Selector4~0_combout\,
	combout => \DUT|Selector4~1_combout\);

-- Location: LCCOMB_X21_Y7_N28
\DUT|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~2_combout\ = (!\DUT|ptr\(2) & ((\DUT|state.CONFIG~q\) # ((\DUT|state.WRITE_LINE1~q\ & \DUT|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.WRITE_LINE1~q\,
	datab => \DUT|state.CONFIG~q\,
	datac => \DUT|ptr\(2),
	datad => \DUT|Selector4~1_combout\,
	combout => \DUT|Selector4~2_combout\);

-- Location: LCCOMB_X21_Y7_N4
\DUT|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~4_combout\ = (\DUT|ptr\(0) & ((\DUT|Selector4~2_combout\) # ((\DUT|Mux15~1_combout\ & \DUT|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Mux15~1_combout\,
	datab => \DUT|Selector4~2_combout\,
	datac => \DUT|ptr\(0),
	datad => \DUT|Selector4~3_combout\,
	combout => \DUT|Selector4~4_combout\);

-- Location: LCCOMB_X22_Y7_N8
\DUT|Selector4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector4~8_combout\ = (\DUT|Selector4~7_combout\) # ((\DUT|Selector4~4_combout\) # ((\DUT|Mux23~7_combout\ & \DUT|state.WRITE_LINE2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector4~7_combout\,
	datab => \DUT|Mux23~7_combout\,
	datac => \DUT|Selector4~4_combout\,
	datad => \DUT|state.WRITE_LINE2~q\,
	combout => \DUT|Selector4~8_combout\);

-- Location: LCCOMB_X22_Y7_N30
\DUT|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DUT|Selector17~0_combout\ = (\DUT|Selector13~2_combout\ & (((\DUT|Selector4~8_combout\ & \DUT|WideOr9~0_combout\)))) # (!\DUT|Selector13~2_combout\ & ((\DUT|WideOr8~0_combout\) # ((\DUT|Selector4~8_combout\ & \DUT|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Selector13~2_combout\,
	datab => \DUT|WideOr8~0_combout\,
	datac => \DUT|Selector4~8_combout\,
	datad => \DUT|WideOr9~0_combout\,
	combout => \DUT|Selector17~0_combout\);

-- Location: LCCOMB_X18_Y16_N0
\CLKDIS|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~1_cout\ = CARRY((\CLK10|contador\(1) & \CLK10|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK10|contador\(1),
	datab => \CLK10|contador\(0),
	datad => VCC,
	cout => \CLKDIS|Add0~1_cout\);

-- Location: LCCOMB_X18_Y16_N2
\CLKDIS|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~2_combout\ = (\CLKDIS|contador\(2) & (!\CLKDIS|Add0~1_cout\)) # (!\CLKDIS|contador\(2) & ((\CLKDIS|Add0~1_cout\) # (GND)))
-- \CLKDIS|Add0~3\ = CARRY((!\CLKDIS|Add0~1_cout\) # (!\CLKDIS|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|contador\(2),
	datad => VCC,
	cin => \CLKDIS|Add0~1_cout\,
	combout => \CLKDIS|Add0~2_combout\,
	cout => \CLKDIS|Add0~3\);

-- Location: FF_X18_Y16_N3
\CLKDIS|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|Add0~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(2));

-- Location: LCCOMB_X18_Y16_N4
\CLKDIS|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~4_combout\ = (\CLKDIS|contador\(3) & (\CLKDIS|Add0~3\ $ (GND))) # (!\CLKDIS|contador\(3) & (!\CLKDIS|Add0~3\ & VCC))
-- \CLKDIS|Add0~5\ = CARRY((\CLKDIS|contador\(3) & !\CLKDIS|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|contador\(3),
	datad => VCC,
	cin => \CLKDIS|Add0~3\,
	combout => \CLKDIS|Add0~4_combout\,
	cout => \CLKDIS|Add0~5\);

-- Location: LCCOMB_X17_Y16_N30
\CLKDIS|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|contador~5_combout\ = (!\CLKDIS|Equal0~4_combout\ & \CLKDIS|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|Equal0~4_combout\,
	datad => \CLKDIS|Add0~4_combout\,
	combout => \CLKDIS|contador~5_combout\);

-- Location: FF_X17_Y16_N31
\CLKDIS|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|contador~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(3));

-- Location: LCCOMB_X18_Y16_N6
\CLKDIS|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~6_combout\ = (\CLKDIS|contador\(4) & (!\CLKDIS|Add0~5\)) # (!\CLKDIS|contador\(4) & ((\CLKDIS|Add0~5\) # (GND)))
-- \CLKDIS|Add0~7\ = CARRY((!\CLKDIS|Add0~5\) # (!\CLKDIS|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(4),
	datad => VCC,
	cin => \CLKDIS|Add0~5\,
	combout => \CLKDIS|Add0~6_combout\,
	cout => \CLKDIS|Add0~7\);

-- Location: FF_X18_Y16_N7
\CLKDIS|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|Add0~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(4));

-- Location: LCCOMB_X18_Y16_N8
\CLKDIS|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~8_combout\ = (\CLKDIS|contador\(5) & (\CLKDIS|Add0~7\ $ (GND))) # (!\CLKDIS|contador\(5) & (!\CLKDIS|Add0~7\ & VCC))
-- \CLKDIS|Add0~9\ = CARRY((\CLKDIS|contador\(5) & !\CLKDIS|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(5),
	datad => VCC,
	cin => \CLKDIS|Add0~7\,
	combout => \CLKDIS|Add0~8_combout\,
	cout => \CLKDIS|Add0~9\);

-- Location: LCCOMB_X18_Y16_N30
\CLKDIS|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|contador~4_combout\ = (\CLKDIS|Add0~8_combout\ & !\CLKDIS|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLKDIS|Add0~8_combout\,
	datad => \CLKDIS|Equal0~4_combout\,
	combout => \CLKDIS|contador~4_combout\);

-- Location: FF_X18_Y16_N31
\CLKDIS|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|contador~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(5));

-- Location: LCCOMB_X18_Y16_N10
\CLKDIS|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~10_combout\ = (\CLKDIS|contador\(6) & (!\CLKDIS|Add0~9\)) # (!\CLKDIS|contador\(6) & ((\CLKDIS|Add0~9\) # (GND)))
-- \CLKDIS|Add0~11\ = CARRY((!\CLKDIS|Add0~9\) # (!\CLKDIS|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(6),
	datad => VCC,
	cin => \CLKDIS|Add0~9\,
	combout => \CLKDIS|Add0~10_combout\,
	cout => \CLKDIS|Add0~11\);

-- Location: FF_X18_Y16_N11
\CLKDIS|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|Add0~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(6));

-- Location: LCCOMB_X18_Y16_N12
\CLKDIS|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~12_combout\ = (\CLKDIS|contador\(7) & (\CLKDIS|Add0~11\ $ (GND))) # (!\CLKDIS|contador\(7) & (!\CLKDIS|Add0~11\ & VCC))
-- \CLKDIS|Add0~13\ = CARRY((\CLKDIS|contador\(7) & !\CLKDIS|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|contador\(7),
	datad => VCC,
	cin => \CLKDIS|Add0~11\,
	combout => \CLKDIS|Add0~12_combout\,
	cout => \CLKDIS|Add0~13\);

-- Location: LCCOMB_X17_Y16_N20
\CLKDIS|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|contador~3_combout\ = (\CLKDIS|Add0~12_combout\ & !\CLKDIS|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLKDIS|Add0~12_combout\,
	datad => \CLKDIS|Equal0~4_combout\,
	combout => \CLKDIS|contador~3_combout\);

-- Location: FF_X17_Y16_N21
\CLKDIS|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|contador~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(7));

-- Location: LCCOMB_X18_Y16_N14
\CLKDIS|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~14_combout\ = (\CLKDIS|contador\(8) & (!\CLKDIS|Add0~13\)) # (!\CLKDIS|contador\(8) & ((\CLKDIS|Add0~13\) # (GND)))
-- \CLKDIS|Add0~15\ = CARRY((!\CLKDIS|Add0~13\) # (!\CLKDIS|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|contador\(8),
	datad => VCC,
	cin => \CLKDIS|Add0~13\,
	combout => \CLKDIS|Add0~14_combout\,
	cout => \CLKDIS|Add0~15\);

-- Location: LCCOMB_X17_Y16_N28
\CLKDIS|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|contador~2_combout\ = (\CLKDIS|Add0~14_combout\ & !\CLKDIS|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLKDIS|Add0~14_combout\,
	datad => \CLKDIS|Equal0~4_combout\,
	combout => \CLKDIS|contador~2_combout\);

-- Location: FF_X17_Y16_N29
\CLKDIS|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|contador~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(8));

-- Location: LCCOMB_X18_Y16_N16
\CLKDIS|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~16_combout\ = (\CLKDIS|contador\(9) & (\CLKDIS|Add0~15\ $ (GND))) # (!\CLKDIS|contador\(9) & (!\CLKDIS|Add0~15\ & VCC))
-- \CLKDIS|Add0~17\ = CARRY((\CLKDIS|contador\(9) & !\CLKDIS|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|contador\(9),
	datad => VCC,
	cin => \CLKDIS|Add0~15\,
	combout => \CLKDIS|Add0~16_combout\,
	cout => \CLKDIS|Add0~17\);

-- Location: FF_X18_Y16_N17
\CLKDIS|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|Add0~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(9));

-- Location: LCCOMB_X18_Y16_N18
\CLKDIS|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~18_combout\ = (\CLKDIS|contador\(10) & (!\CLKDIS|Add0~17\)) # (!\CLKDIS|contador\(10) & ((\CLKDIS|Add0~17\) # (GND)))
-- \CLKDIS|Add0~19\ = CARRY((!\CLKDIS|Add0~17\) # (!\CLKDIS|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|contador\(10),
	datad => VCC,
	cin => \CLKDIS|Add0~17\,
	combout => \CLKDIS|Add0~18_combout\,
	cout => \CLKDIS|Add0~19\);

-- Location: FF_X18_Y16_N19
\CLKDIS|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|Add0~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(10));

-- Location: LCCOMB_X18_Y16_N20
\CLKDIS|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~20_combout\ = (\CLKDIS|contador\(11) & (\CLKDIS|Add0~19\ $ (GND))) # (!\CLKDIS|contador\(11) & (!\CLKDIS|Add0~19\ & VCC))
-- \CLKDIS|Add0~21\ = CARRY((\CLKDIS|contador\(11) & !\CLKDIS|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|contador\(11),
	datad => VCC,
	cin => \CLKDIS|Add0~19\,
	combout => \CLKDIS|Add0~20_combout\,
	cout => \CLKDIS|Add0~21\);

-- Location: FF_X18_Y16_N21
\CLKDIS|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|Add0~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(11));

-- Location: LCCOMB_X18_Y16_N22
\CLKDIS|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~22_combout\ = (\CLKDIS|contador\(12) & (!\CLKDIS|Add0~21\)) # (!\CLKDIS|contador\(12) & ((\CLKDIS|Add0~21\) # (GND)))
-- \CLKDIS|Add0~23\ = CARRY((!\CLKDIS|Add0~21\) # (!\CLKDIS|contador\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(12),
	datad => VCC,
	cin => \CLKDIS|Add0~21\,
	combout => \CLKDIS|Add0~22_combout\,
	cout => \CLKDIS|Add0~23\);

-- Location: FF_X18_Y16_N23
\CLKDIS|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|Add0~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(12));

-- Location: LCCOMB_X18_Y16_N24
\CLKDIS|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~24_combout\ = (\CLKDIS|contador\(13) & (\CLKDIS|Add0~23\ $ (GND))) # (!\CLKDIS|contador\(13) & (!\CLKDIS|Add0~23\ & VCC))
-- \CLKDIS|Add0~25\ = CARRY((\CLKDIS|contador\(13) & !\CLKDIS|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(13),
	datad => VCC,
	cin => \CLKDIS|Add0~23\,
	combout => \CLKDIS|Add0~24_combout\,
	cout => \CLKDIS|Add0~25\);

-- Location: LCCOMB_X17_Y16_N26
\CLKDIS|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|contador~1_combout\ = (!\CLKDIS|Equal0~4_combout\ & \CLKDIS|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|Equal0~4_combout\,
	datad => \CLKDIS|Add0~24_combout\,
	combout => \CLKDIS|contador~1_combout\);

-- Location: FF_X17_Y16_N27
\CLKDIS|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|contador~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(13));

-- Location: LCCOMB_X18_Y16_N26
\CLKDIS|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Add0~26_combout\ = \CLKDIS|Add0~25\ $ (\CLKDIS|contador\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLKDIS|contador\(14),
	cin => \CLKDIS|Add0~25\,
	combout => \CLKDIS|Add0~26_combout\);

-- Location: LCCOMB_X18_Y16_N28
\CLKDIS|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|contador~0_combout\ = (\CLKDIS|Add0~26_combout\ & !\CLKDIS|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLKDIS|Add0~26_combout\,
	datad => \CLKDIS|Equal0~4_combout\,
	combout => \CLKDIS|contador~0_combout\);

-- Location: FF_X18_Y16_N29
\CLKDIS|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|contador~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|contador\(14));

-- Location: LCCOMB_X17_Y16_N10
\CLKDIS|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Equal0~0_combout\ = (\CLKDIS|contador\(13) & (\CLK10|contador\(1) & (\CLK10|contador\(0) & \CLKDIS|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(13),
	datab => \CLK10|contador\(1),
	datac => \CLK10|contador\(0),
	datad => \CLKDIS|contador\(14),
	combout => \CLKDIS|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y16_N24
\CLKDIS|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Equal0~1_combout\ = (!\CLKDIS|contador\(11) & (!\CLKDIS|contador\(10) & (!\CLKDIS|contador\(12) & !\CLKDIS|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(11),
	datab => \CLKDIS|contador\(10),
	datac => \CLKDIS|contador\(12),
	datad => \CLKDIS|contador\(9),
	combout => \CLKDIS|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y16_N22
\CLKDIS|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Equal0~2_combout\ = (\CLKDIS|contador\(5) & (\CLKDIS|contador\(8) & (!\CLKDIS|contador\(6) & \CLKDIS|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(5),
	datab => \CLKDIS|contador\(8),
	datac => \CLKDIS|contador\(6),
	datad => \CLKDIS|contador\(7),
	combout => \CLKDIS|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y16_N16
\CLKDIS|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Equal0~3_combout\ = (\CLKDIS|contador\(2) & (!\CLKDIS|contador\(3) & !\CLKDIS|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|contador\(2),
	datac => \CLKDIS|contador\(3),
	datad => \CLKDIS|contador\(4),
	combout => \CLKDIS|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y16_N12
\CLKDIS|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|Equal0~4_combout\ = (\CLKDIS|Equal0~0_combout\ & (\CLKDIS|Equal0~1_combout\ & (\CLKDIS|Equal0~2_combout\ & \CLKDIS|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|Equal0~0_combout\,
	datab => \CLKDIS|Equal0~1_combout\,
	datac => \CLKDIS|Equal0~2_combout\,
	datad => \CLKDIS|Equal0~3_combout\,
	combout => \CLKDIS|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y16_N18
\CLKDIS|clk_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|clk_sig~0_combout\ = \CLKDIS|clk_sig~q\ $ (\CLKDIS|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDIS|clk_sig~q\,
	datad => \CLKDIS|Equal0~4_combout\,
	combout => \CLKDIS|clk_sig~0_combout\);

-- Location: LCCOMB_X17_Y16_N6
\CLKDIS|clk_sig~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLKDIS|clk_sig~feeder_combout\ = \CLKDIS|clk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDIS|clk_sig~0_combout\,
	combout => \CLKDIS|clk_sig~feeder_combout\);

-- Location: FF_X17_Y16_N7
\CLKDIS|clk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \CLKDIS|clk_sig~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDIS|clk_sig~q\);

-- Location: CLKCTRL_G7
\CLKDIS|clk_sig~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKDIS|clk_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKDIS|clk_sig~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N1
\step~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_step,
	o => \step~input_o\);

-- Location: FF_X25_Y12_N29
\disp.D4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDIS|clk_sig~clkctrl_outclk\,
	asdata => \disp.D3~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \step~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp.D4~q\);

-- Location: LCCOMB_X25_Y12_N18
\disp.D1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp.D1~0_combout\ = !\disp.D4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp.D4~q\,
	combout => \disp.D1~0_combout\);

-- Location: FF_X25_Y12_N19
\disp.D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDIS|clk_sig~clkctrl_outclk\,
	d => \disp.D1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \step~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp.D1~q\);

-- Location: LCCOMB_X25_Y12_N14
\disp.D2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp.D2~0_combout\ = !\disp.D1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \disp.D1~q\,
	combout => \disp.D2~0_combout\);

-- Location: FF_X25_Y12_N15
\disp.D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDIS|clk_sig~clkctrl_outclk\,
	d => \disp.D2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \step~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp.D2~q\);

-- Location: FF_X25_Y12_N31
\disp.D3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDIS|clk_sig~clkctrl_outclk\,
	asdata => \disp.D2~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \step~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp.D3~q\);

-- Location: LCCOMB_X25_Y12_N22
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\disp.D3~q\) # (\disp.D4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \disp.D3~q\,
	datad => \disp.D4~q\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X25_Y12_N24
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\disp.D4~q\) # ((\disp.D2~q\ & !\disp.D3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp.D2~q\,
	datac => \disp.D3~q\,
	datad => \disp.D4~q\,
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X25_Y12_N2
\Selector80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~2_combout\ = (\Selector80~0_combout\ & (((\Selector80~1_combout\)))) # (!\Selector80~0_combout\ & ((\Selector80~1_combout\ & ((!\ALU0|solucion[4]$latch~combout\))) # (!\Selector80~1_combout\ & (!\ALU0|solucion[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[6]$latch~combout\,
	datab => \ALU0|solucion[4]$latch~combout\,
	datac => \Selector80~0_combout\,
	datad => \Selector80~1_combout\,
	combout => \Selector80~2_combout\);

-- Location: LCCOMB_X24_Y12_N12
\Selector80~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~3_combout\ = (\Selector80~0_combout\ & ((\Selector80~2_combout\ & ((!\ALU0|Mux0~5_combout\))) # (!\Selector80~2_combout\ & (!\ALU0|solucion[2]$latch~combout\)))) # (!\Selector80~0_combout\ & (((\Selector80~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[2]$latch~combout\,
	datab => \Selector80~0_combout\,
	datac => \ALU0|Mux0~5_combout\,
	datad => \Selector80~2_combout\,
	combout => \Selector80~3_combout\);

-- Location: CLKCTRL_G9
\step~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \step~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \step~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y12_N8
\outled[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outled[0]$latch~combout\ = (GLOBAL(\step~inputclkctrl_outclk\) & (\Selector80~3_combout\)) # (!GLOBAL(\step~inputclkctrl_outclk\) & ((\outled[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~3_combout\,
	datab => \outled[0]$latch~combout\,
	datac => \step~inputclkctrl_outclk\,
	combout => \outled[0]$latch~combout\);

-- Location: LCCOMB_X25_Y12_N4
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\Selector80~0_combout\ & (((\Selector80~1_combout\) # (!\ALU0|solucion[3]$latch~combout\)))) # (!\Selector80~0_combout\ & (!\ALU0|solucion[7]$latch~combout\ & ((!\Selector80~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[7]$latch~combout\,
	datab => \ALU0|solucion[3]$latch~combout\,
	datac => \Selector80~0_combout\,
	datad => \Selector80~1_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X24_Y12_N30
\Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Selector80~1_combout\ & ((\Selector79~0_combout\ & ((!\ALU0|Mux1~3_combout\))) # (!\Selector79~0_combout\ & (!\ALU0|solucion[5]$latch~combout\)))) # (!\Selector80~1_combout\ & (((\Selector79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|solucion[5]$latch~combout\,
	datab => \Selector80~1_combout\,
	datac => \ALU0|Mux1~3_combout\,
	datad => \Selector79~0_combout\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X24_Y12_N2
\outled[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outled[1]$latch~combout\ = (GLOBAL(\step~inputclkctrl_outclk\) & (\Selector79~1_combout\)) # (!GLOBAL(\step~inputclkctrl_outclk\) & ((\outled[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector79~1_combout\,
	datac => \step~inputclkctrl_outclk\,
	datad => \outled[1]$latch~combout\,
	combout => \outled[1]$latch~combout\);

-- Location: LCCOMB_X25_Y12_N28
\outdig[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outdig[0]$latch~combout\ = (GLOBAL(\step~inputclkctrl_outclk\) & ((!\disp.D4~q\))) # (!GLOBAL(\step~inputclkctrl_outclk\) & (\outdig[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outdig[0]$latch~combout\,
	datac => \disp.D4~q\,
	datad => \step~inputclkctrl_outclk\,
	combout => \outdig[0]$latch~combout\);

-- Location: LCCOMB_X25_Y12_N30
\outdig[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outdig[1]$latch~combout\ = (GLOBAL(\step~inputclkctrl_outclk\) & ((!\disp.D3~q\))) # (!GLOBAL(\step~inputclkctrl_outclk\) & (\outdig[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outdig[1]$latch~combout\,
	datac => \disp.D3~q\,
	datad => \step~inputclkctrl_outclk\,
	combout => \outdig[1]$latch~combout\);

-- Location: LCCOMB_X25_Y12_N26
\outdig[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outdig[2]$latch~combout\ = (GLOBAL(\step~inputclkctrl_outclk\) & (!\disp.D2~q\)) # (!GLOBAL(\step~inputclkctrl_outclk\) & ((\outdig[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \disp.D2~q\,
	datac => \outdig[2]$latch~combout\,
	datad => \step~inputclkctrl_outclk\,
	combout => \outdig[2]$latch~combout\);

-- Location: LCCOMB_X25_Y12_N12
\outdig[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outdig[3]$latch~combout\ = (GLOBAL(\step~inputclkctrl_outclk\) & ((\disp.D1~q\))) # (!GLOBAL(\step~inputclkctrl_outclk\) & (\outdig[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outdig[3]$latch~combout\,
	datac => \step~inputclkctrl_outclk\,
	datad => \disp.D1~q\,
	combout => \outdig[3]$latch~combout\);

ww_lcd_e <= \lcd_e~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_db(4) <= \lcd_db[4]~output_o\;

ww_lcd_db(5) <= \lcd_db[5]~output_o\;

ww_lcd_db(6) <= \lcd_db[6]~output_o\;

ww_lcd_db(7) <= \lcd_db[7]~output_o\;

ww_rx_done_tick <= \rx_done_tick~output_o\;

ww_outled(0) <= \outled[0]~output_o\;

ww_outled(1) <= \outled[1]~output_o\;

ww_othersled(0) <= \othersled[0]~output_o\;

ww_othersled(1) <= \othersled[1]~output_o\;

ww_othersled(2) <= \othersled[2]~output_o\;

ww_othersled(3) <= \othersled[3]~output_o\;

ww_othersled(4) <= \othersled[4]~output_o\;

ww_othersled(5) <= \othersled[5]~output_o\;

ww_outdig(0) <= \outdig[0]~output_o\;

ww_outdig(1) <= \outdig[1]~output_o\;

ww_outdig(2) <= \outdig[2]~output_o\;

ww_outdig(3) <= \outdig[3]~output_o\;

ww_beep <= \beep~output_o\;
END structure;


