-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/05/2023 13:43:03"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	toplevel IS
    PORT (
	botao_seletor : IN std_logic;
	reset_top : IN std_logic;
	clock_top : IN std_logic;
	saida_display : BUFFER std_logic_vector(3 DOWNTO 0);
	saida_mux_7bit : BUFFER std_logic_vector(6 DOWNTO 0);
	saida_contador : BUFFER std_logic_vector(27 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- saida_display[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_display[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux_7bit[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux_7bit[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux_7bit[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux_7bit[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux_7bit[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux_7bit[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mux_7bit[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[11]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[12]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[13]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[15]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[16]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[17]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[18]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[19]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[20]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[21]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[23]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[24]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[25]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[26]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_contador[27]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_top	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_top	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_seletor	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_botao_seletor : std_logic;
SIGNAL ww_reset_top : std_logic;
SIGNAL ww_clock_top : std_logic;
SIGNAL ww_saida_display : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida_mux_7bit : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida_contador : std_logic_vector(27 DOWNTO 0);
SIGNAL \Display_Control_inst|b~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|clock_saida~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_top~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida_display[0]~output_o\ : std_logic;
SIGNAL \saida_display[1]~output_o\ : std_logic;
SIGNAL \saida_display[2]~output_o\ : std_logic;
SIGNAL \saida_display[3]~output_o\ : std_logic;
SIGNAL \saida_mux_7bit[0]~output_o\ : std_logic;
SIGNAL \saida_mux_7bit[1]~output_o\ : std_logic;
SIGNAL \saida_mux_7bit[2]~output_o\ : std_logic;
SIGNAL \saida_mux_7bit[3]~output_o\ : std_logic;
SIGNAL \saida_mux_7bit[4]~output_o\ : std_logic;
SIGNAL \saida_mux_7bit[5]~output_o\ : std_logic;
SIGNAL \saida_mux_7bit[6]~output_o\ : std_logic;
SIGNAL \saida_contador[0]~output_o\ : std_logic;
SIGNAL \saida_contador[1]~output_o\ : std_logic;
SIGNAL \saida_contador[2]~output_o\ : std_logic;
SIGNAL \saida_contador[3]~output_o\ : std_logic;
SIGNAL \saida_contador[4]~output_o\ : std_logic;
SIGNAL \saida_contador[5]~output_o\ : std_logic;
SIGNAL \saida_contador[6]~output_o\ : std_logic;
SIGNAL \saida_contador[7]~output_o\ : std_logic;
SIGNAL \saida_contador[8]~output_o\ : std_logic;
SIGNAL \saida_contador[9]~output_o\ : std_logic;
SIGNAL \saida_contador[10]~output_o\ : std_logic;
SIGNAL \saida_contador[11]~output_o\ : std_logic;
SIGNAL \saida_contador[12]~output_o\ : std_logic;
SIGNAL \saida_contador[13]~output_o\ : std_logic;
SIGNAL \saida_contador[14]~output_o\ : std_logic;
SIGNAL \saida_contador[15]~output_o\ : std_logic;
SIGNAL \saida_contador[16]~output_o\ : std_logic;
SIGNAL \saida_contador[17]~output_o\ : std_logic;
SIGNAL \saida_contador[18]~output_o\ : std_logic;
SIGNAL \saida_contador[19]~output_o\ : std_logic;
SIGNAL \saida_contador[20]~output_o\ : std_logic;
SIGNAL \saida_contador[21]~output_o\ : std_logic;
SIGNAL \saida_contador[22]~output_o\ : std_logic;
SIGNAL \saida_contador[23]~output_o\ : std_logic;
SIGNAL \saida_contador[24]~output_o\ : std_logic;
SIGNAL \saida_contador[25]~output_o\ : std_logic;
SIGNAL \saida_contador[26]~output_o\ : std_logic;
SIGNAL \saida_contador[27]~output_o\ : std_logic;
SIGNAL \clock_top~input_o\ : std_logic;
SIGNAL \clock_top~inputclkctrl_outclk\ : std_logic;
SIGNAL \Display_Control_inst|Add0~0_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~1\ : std_logic;
SIGNAL \Display_Control_inst|Add0~2_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~3\ : std_logic;
SIGNAL \Display_Control_inst|Add0~4_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~5\ : std_logic;
SIGNAL \Display_Control_inst|Add0~6_combout\ : std_logic;
SIGNAL \Display_Control_inst|contador~1_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~7\ : std_logic;
SIGNAL \Display_Control_inst|Add0~8_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~9\ : std_logic;
SIGNAL \Display_Control_inst|Add0~10_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~11\ : std_logic;
SIGNAL \Display_Control_inst|Add0~12_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~13\ : std_logic;
SIGNAL \Display_Control_inst|Add0~14_combout\ : std_logic;
SIGNAL \Display_Control_inst|contador~0_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~15\ : std_logic;
SIGNAL \Display_Control_inst|Add0~16_combout\ : std_logic;
SIGNAL \Display_Control_inst|contador~2_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~17\ : std_logic;
SIGNAL \Display_Control_inst|Add0~18_combout\ : std_logic;
SIGNAL \Display_Control_inst|contador~3_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~19\ : std_logic;
SIGNAL \Display_Control_inst|Add0~20_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~21\ : std_logic;
SIGNAL \Display_Control_inst|Add0~22_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~23\ : std_logic;
SIGNAL \Display_Control_inst|Add0~24_combout\ : std_logic;
SIGNAL \Display_Control_inst|contador~4_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~25\ : std_logic;
SIGNAL \Display_Control_inst|Add0~26_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~27\ : std_logic;
SIGNAL \Display_Control_inst|Add0~28_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~29\ : std_logic;
SIGNAL \Display_Control_inst|Add0~30_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~4_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~3_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~31\ : std_logic;
SIGNAL \Display_Control_inst|Add0~32_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~33\ : std_logic;
SIGNAL \Display_Control_inst|Add0~34_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~35\ : std_logic;
SIGNAL \Display_Control_inst|Add0~36_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~37\ : std_logic;
SIGNAL \Display_Control_inst|Add0~38_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~39\ : std_logic;
SIGNAL \Display_Control_inst|Add0~40_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~41\ : std_logic;
SIGNAL \Display_Control_inst|Add0~42_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~43\ : std_logic;
SIGNAL \Display_Control_inst|Add0~44_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~45\ : std_logic;
SIGNAL \Display_Control_inst|Add0~46_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~47\ : std_logic;
SIGNAL \Display_Control_inst|Add0~48_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~49\ : std_logic;
SIGNAL \Display_Control_inst|Add0~50_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~51\ : std_logic;
SIGNAL \Display_Control_inst|Add0~52_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~53\ : std_logic;
SIGNAL \Display_Control_inst|Add0~54_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~55\ : std_logic;
SIGNAL \Display_Control_inst|Add0~56_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~57\ : std_logic;
SIGNAL \Display_Control_inst|Add0~58_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~59\ : std_logic;
SIGNAL \Display_Control_inst|Add0~60_combout\ : std_logic;
SIGNAL \Display_Control_inst|Add0~61\ : std_logic;
SIGNAL \Display_Control_inst|Add0~62_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~8_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~5_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~6_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~7_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~9_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~0_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~1_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~2_combout\ : std_logic;
SIGNAL \Display_Control_inst|Equal0~10_combout\ : std_logic;
SIGNAL \Display_Control_inst|b~0_combout\ : std_logic;
SIGNAL \Display_Control_inst|b~feeder_combout\ : std_logic;
SIGNAL \Display_Control_inst|b~q\ : std_logic;
SIGNAL \Display_Control_inst|b~clkctrl_outclk\ : std_logic;
SIGNAL \Display_Control_inst|s[0]~1_combout\ : std_logic;
SIGNAL \Display_Control_inst|s[1]~0_combout\ : std_logic;
SIGNAL \MUX4_1_inst|Equal2~0_combout\ : std_logic;
SIGNAL \MUX4_1_inst|Equal2~1_combout\ : std_logic;
SIGNAL \MUX4_1_inst|Equal2~2_combout\ : std_logic;
SIGNAL \Display_Control_inst|saida[3]~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~12_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~14_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~16_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~18_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~28_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~32_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~44_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~45\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\ : std_logic;
SIGNAL \botao_seletor~input_o\ : std_logic;
SIGNAL \control_inst|estado_atual.RESET_estado~feeder_combout\ : std_logic;
SIGNAL \reset_top~input_o\ : std_logic;
SIGNAL \control_inst|estado_atual.RESET_estado~q\ : std_logic;
SIGNAL \control_inst|proximo_estado.A~combout\ : std_logic;
SIGNAL \control_inst|estado_atual.A~q\ : std_logic;
SIGNAL \control_inst|estado_atual.B~feeder_combout\ : std_logic;
SIGNAL \control_inst|estado_atual.B~q\ : std_logic;
SIGNAL \control_inst|estado_atual.C~feeder_combout\ : std_logic;
SIGNAL \control_inst|estado_atual.C~q\ : std_logic;
SIGNAL \control_inst|estado_atual.D~q\ : std_logic;
SIGNAL \control_inst|saida[1]~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~1_combout\ : std_logic;
SIGNAL \control_inst|saida[0]~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~9_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~14_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~15\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~17\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~19\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~20_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~21\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~24_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~25\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~26_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~30_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~31\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~32_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~33\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~34_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~39\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~40_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~41\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~42_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~43\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\ : std_logic;
SIGNAL \contador_inst|Add0~0_combout\ : std_logic;
SIGNAL \contador_inst|Add0~1\ : std_logic;
SIGNAL \contador_inst|Add0~2_combout\ : std_logic;
SIGNAL \contador_inst|cont4~0_combout\ : std_logic;
SIGNAL \contador_inst|Add0~3\ : std_logic;
SIGNAL \contador_inst|Add0~4_combout\ : std_logic;
SIGNAL \contador_inst|Add0~5\ : std_logic;
SIGNAL \contador_inst|Add0~7\ : std_logic;
SIGNAL \contador_inst|Add0~8_combout\ : std_logic;
SIGNAL \contador_inst|Add0~9\ : std_logic;
SIGNAL \contador_inst|Add0~10_combout\ : std_logic;
SIGNAL \contador_inst|Add0~11\ : std_logic;
SIGNAL \contador_inst|Add0~12_combout\ : std_logic;
SIGNAL \contador_inst|Add0~13\ : std_logic;
SIGNAL \contador_inst|Add0~14_combout\ : std_logic;
SIGNAL \contador_inst|Add0~15\ : std_logic;
SIGNAL \contador_inst|Add0~16_combout\ : std_logic;
SIGNAL \contador_inst|Add0~17\ : std_logic;
SIGNAL \contador_inst|Add0~18_combout\ : std_logic;
SIGNAL \contador_inst|cont4[9]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add0~19\ : std_logic;
SIGNAL \contador_inst|Add0~20_combout\ : std_logic;
SIGNAL \contador_inst|cont4[10]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add0~21\ : std_logic;
SIGNAL \contador_inst|Add0~22_combout\ : std_logic;
SIGNAL \contador_inst|cont4[11]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add0~23\ : std_logic;
SIGNAL \contador_inst|Add0~24_combout\ : std_logic;
SIGNAL \contador_inst|Add0~25\ : std_logic;
SIGNAL \contador_inst|Add0~26_combout\ : std_logic;
SIGNAL \contador_inst|Add0~27\ : std_logic;
SIGNAL \contador_inst|Add0~28_combout\ : std_logic;
SIGNAL \contador_inst|cont4[14]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add0~29\ : std_logic;
SIGNAL \contador_inst|Add0~30_combout\ : std_logic;
SIGNAL \contador_inst|cont4[15]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add0~31\ : std_logic;
SIGNAL \contador_inst|Add0~32_combout\ : std_logic;
SIGNAL \contador_inst|Add0~33\ : std_logic;
SIGNAL \contador_inst|Add0~34_combout\ : std_logic;
SIGNAL \contador_inst|Add0~35\ : std_logic;
SIGNAL \contador_inst|Add0~36_combout\ : std_logic;
SIGNAL \contador_inst|Add0~37\ : std_logic;
SIGNAL \contador_inst|Add0~38_combout\ : std_logic;
SIGNAL \contador_inst|Add0~39\ : std_logic;
SIGNAL \contador_inst|Add0~40_combout\ : std_logic;
SIGNAL \contador_inst|Add0~41\ : std_logic;
SIGNAL \contador_inst|Add0~42_combout\ : std_logic;
SIGNAL \contador_inst|Add0~43\ : std_logic;
SIGNAL \contador_inst|Add0~44_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~4_combout\ : std_logic;
SIGNAL \contador_inst|Add0~45\ : std_logic;
SIGNAL \contador_inst|Add0~46_combout\ : std_logic;
SIGNAL \contador_inst|Add0~47\ : std_logic;
SIGNAL \contador_inst|Add0~48_combout\ : std_logic;
SIGNAL \contador_inst|Add0~49\ : std_logic;
SIGNAL \contador_inst|Add0~50_combout\ : std_logic;
SIGNAL \contador_inst|Add0~51\ : std_logic;
SIGNAL \contador_inst|Add0~52_combout\ : std_logic;
SIGNAL \contador_inst|Add0~53\ : std_logic;
SIGNAL \contador_inst|Add0~54_combout\ : std_logic;
SIGNAL \contador_inst|Add0~55\ : std_logic;
SIGNAL \contador_inst|Add0~56_combout\ : std_logic;
SIGNAL \contador_inst|Add0~57\ : std_logic;
SIGNAL \contador_inst|Add0~58_combout\ : std_logic;
SIGNAL \contador_inst|Add0~59\ : std_logic;
SIGNAL \contador_inst|Add0~60_combout\ : std_logic;
SIGNAL \contador_inst|Add0~61\ : std_logic;
SIGNAL \contador_inst|Add0~62_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~0_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~1_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~2_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~3_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~5_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~8_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~7_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~6_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~9_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~10_combout\ : std_logic;
SIGNAL \contador_inst|Add0~6_combout\ : std_logic;
SIGNAL \contador_inst|cont4~1_combout\ : std_logic;
SIGNAL \BCD_inst_D|inter_saida[0]~0_combout\ : std_logic;
SIGNAL \contador_inst|Add1~0_combout\ : std_logic;
SIGNAL \contador_inst|Add1~1\ : std_logic;
SIGNAL \contador_inst|Add1~2_combout\ : std_logic;
SIGNAL \contador_inst|Add1~7\ : std_logic;
SIGNAL \contador_inst|Add1~8_combout\ : std_logic;
SIGNAL \contador_inst|Add1~9\ : std_logic;
SIGNAL \contador_inst|Add1~10_combout\ : std_logic;
SIGNAL \contador_inst|Add1~11\ : std_logic;
SIGNAL \contador_inst|Add1~12_combout\ : std_logic;
SIGNAL \contador_inst|Add1~13\ : std_logic;
SIGNAL \contador_inst|Add1~14_combout\ : std_logic;
SIGNAL \contador_inst|Add1~15\ : std_logic;
SIGNAL \contador_inst|Add1~16_combout\ : std_logic;
SIGNAL \contador_inst|Add1~17\ : std_logic;
SIGNAL \contador_inst|Add1~18_combout\ : std_logic;
SIGNAL \contador_inst|Add1~19\ : std_logic;
SIGNAL \contador_inst|Add1~20_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~8_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~9_combout\ : std_logic;
SIGNAL \contador_inst|Add1~21\ : std_logic;
SIGNAL \contador_inst|Add1~22_combout\ : std_logic;
SIGNAL \contador_inst|Add1~23\ : std_logic;
SIGNAL \contador_inst|Add1~24_combout\ : std_logic;
SIGNAL \contador_inst|Add1~25\ : std_logic;
SIGNAL \contador_inst|Add1~26_combout\ : std_logic;
SIGNAL \contador_inst|Add1~27\ : std_logic;
SIGNAL \contador_inst|Add1~28_combout\ : std_logic;
SIGNAL \contador_inst|Add1~29\ : std_logic;
SIGNAL \contador_inst|Add1~30_combout\ : std_logic;
SIGNAL \contador_inst|Add1~31\ : std_logic;
SIGNAL \contador_inst|Add1~32_combout\ : std_logic;
SIGNAL \contador_inst|Add1~33\ : std_logic;
SIGNAL \contador_inst|Add1~34_combout\ : std_logic;
SIGNAL \contador_inst|Add1~35\ : std_logic;
SIGNAL \contador_inst|Add1~36_combout\ : std_logic;
SIGNAL \contador_inst|Add1~37\ : std_logic;
SIGNAL \contador_inst|Add1~38_combout\ : std_logic;
SIGNAL \contador_inst|Add1~39\ : std_logic;
SIGNAL \contador_inst|Add1~40_combout\ : std_logic;
SIGNAL \contador_inst|cont3[20]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add1~41\ : std_logic;
SIGNAL \contador_inst|Add1~42_combout\ : std_logic;
SIGNAL \contador_inst|Add1~43\ : std_logic;
SIGNAL \contador_inst|Add1~44_combout\ : std_logic;
SIGNAL \contador_inst|Add1~45\ : std_logic;
SIGNAL \contador_inst|Add1~46_combout\ : std_logic;
SIGNAL \contador_inst|Add1~47\ : std_logic;
SIGNAL \contador_inst|Add1~48_combout\ : std_logic;
SIGNAL \contador_inst|Add1~49\ : std_logic;
SIGNAL \contador_inst|Add1~50_combout\ : std_logic;
SIGNAL \contador_inst|Add1~51\ : std_logic;
SIGNAL \contador_inst|Add1~52_combout\ : std_logic;
SIGNAL \contador_inst|Add1~53\ : std_logic;
SIGNAL \contador_inst|Add1~54_combout\ : std_logic;
SIGNAL \contador_inst|Add1~55\ : std_logic;
SIGNAL \contador_inst|Add1~56_combout\ : std_logic;
SIGNAL \contador_inst|Add1~57\ : std_logic;
SIGNAL \contador_inst|Add1~58_combout\ : std_logic;
SIGNAL \contador_inst|Add1~59\ : std_logic;
SIGNAL \contador_inst|Add1~60_combout\ : std_logic;
SIGNAL \contador_inst|Add1~61\ : std_logic;
SIGNAL \contador_inst|Add1~62_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~0_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~1_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~3_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~2_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~4_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~6_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~5_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~7_combout\ : std_logic;
SIGNAL \contador_inst|Equal1~10_combout\ : std_logic;
SIGNAL \contador_inst|cont3~0_combout\ : std_logic;
SIGNAL \contador_inst|Add1~3\ : std_logic;
SIGNAL \contador_inst|Add1~4_combout\ : std_logic;
SIGNAL \contador_inst|Add1~5\ : std_logic;
SIGNAL \contador_inst|Add1~6_combout\ : std_logic;
SIGNAL \contador_inst|cont3~1_combout\ : std_logic;
SIGNAL \BCD_inst_C|inter_saida[0]~0_combout\ : std_logic;
SIGNAL \contador_inst|Add2~0_combout\ : std_logic;
SIGNAL \contador_inst|cont1[27]~0_combout\ : std_logic;
SIGNAL \contador_inst|Add2~1\ : std_logic;
SIGNAL \contador_inst|Add2~2_combout\ : std_logic;
SIGNAL \contador_inst|Add2~3\ : std_logic;
SIGNAL \contador_inst|Add2~4_combout\ : std_logic;
SIGNAL \contador_inst|Add2~5\ : std_logic;
SIGNAL \contador_inst|Add2~6_combout\ : std_logic;
SIGNAL \contador_inst|cont2~1_combout\ : std_logic;
SIGNAL \contador_inst|Add2~7\ : std_logic;
SIGNAL \contador_inst|Add2~8_combout\ : std_logic;
SIGNAL \contador_inst|Add2~9\ : std_logic;
SIGNAL \contador_inst|Add2~10_combout\ : std_logic;
SIGNAL \contador_inst|Add2~11\ : std_logic;
SIGNAL \contador_inst|Add2~12_combout\ : std_logic;
SIGNAL \contador_inst|Add2~13\ : std_logic;
SIGNAL \contador_inst|Add2~14_combout\ : std_logic;
SIGNAL \contador_inst|Add2~15\ : std_logic;
SIGNAL \contador_inst|Add2~16_combout\ : std_logic;
SIGNAL \contador_inst|Add2~17\ : std_logic;
SIGNAL \contador_inst|Add2~18_combout\ : std_logic;
SIGNAL \contador_inst|Add2~19\ : std_logic;
SIGNAL \contador_inst|Add2~20_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~8_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~9_combout\ : std_logic;
SIGNAL \contador_inst|Add2~21\ : std_logic;
SIGNAL \contador_inst|Add2~22_combout\ : std_logic;
SIGNAL \contador_inst|Add2~23\ : std_logic;
SIGNAL \contador_inst|Add2~24_combout\ : std_logic;
SIGNAL \contador_inst|cont2[12]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add2~25\ : std_logic;
SIGNAL \contador_inst|Add2~26_combout\ : std_logic;
SIGNAL \contador_inst|cont2[13]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add2~27\ : std_logic;
SIGNAL \contador_inst|Add2~28_combout\ : std_logic;
SIGNAL \contador_inst|Add2~29\ : std_logic;
SIGNAL \contador_inst|Add2~30_combout\ : std_logic;
SIGNAL \contador_inst|cont2[15]~feeder_combout\ : std_logic;
SIGNAL \contador_inst|Add2~31\ : std_logic;
SIGNAL \contador_inst|Add2~32_combout\ : std_logic;
SIGNAL \contador_inst|Add2~33\ : std_logic;
SIGNAL \contador_inst|Add2~34_combout\ : std_logic;
SIGNAL \contador_inst|Add2~35\ : std_logic;
SIGNAL \contador_inst|Add2~36_combout\ : std_logic;
SIGNAL \contador_inst|Add2~37\ : std_logic;
SIGNAL \contador_inst|Add2~38_combout\ : std_logic;
SIGNAL \contador_inst|Add2~39\ : std_logic;
SIGNAL \contador_inst|Add2~40_combout\ : std_logic;
SIGNAL \contador_inst|Add2~41\ : std_logic;
SIGNAL \contador_inst|Add2~42_combout\ : std_logic;
SIGNAL \contador_inst|Add2~43\ : std_logic;
SIGNAL \contador_inst|Add2~44_combout\ : std_logic;
SIGNAL \contador_inst|Add2~45\ : std_logic;
SIGNAL \contador_inst|Add2~46_combout\ : std_logic;
SIGNAL \contador_inst|Add2~47\ : std_logic;
SIGNAL \contador_inst|Add2~48_combout\ : std_logic;
SIGNAL \contador_inst|Add2~49\ : std_logic;
SIGNAL \contador_inst|Add2~50_combout\ : std_logic;
SIGNAL \contador_inst|Add2~51\ : std_logic;
SIGNAL \contador_inst|Add2~52_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~2_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~3_combout\ : std_logic;
SIGNAL \contador_inst|Add2~53\ : std_logic;
SIGNAL \contador_inst|Add2~54_combout\ : std_logic;
SIGNAL \contador_inst|Add2~55\ : std_logic;
SIGNAL \contador_inst|Add2~56_combout\ : std_logic;
SIGNAL \contador_inst|Add2~57\ : std_logic;
SIGNAL \contador_inst|Add2~58_combout\ : std_logic;
SIGNAL \contador_inst|Add2~59\ : std_logic;
SIGNAL \contador_inst|Add2~60_combout\ : std_logic;
SIGNAL \contador_inst|Add2~61\ : std_logic;
SIGNAL \contador_inst|Add2~62_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~0_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~1_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~4_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~5_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~6_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~7_combout\ : std_logic;
SIGNAL \contador_inst|Equal2~10_combout\ : std_logic;
SIGNAL \contador_inst|cont2~0_combout\ : std_logic;
SIGNAL \BCD_inst_B|inter_saida[0]~0_combout\ : std_logic;
SIGNAL \contador_inst|Add3~0_combout\ : std_logic;
SIGNAL \contador_inst|cont1[3]~1_combout\ : std_logic;
SIGNAL \contador_inst|Add3~1\ : std_logic;
SIGNAL \contador_inst|Add3~2_combout\ : std_logic;
SIGNAL \contador_inst|cont1~2_combout\ : std_logic;
SIGNAL \contador_inst|Add3~3\ : std_logic;
SIGNAL \contador_inst|Add3~4_combout\ : std_logic;
SIGNAL \contador_inst|Add3~5\ : std_logic;
SIGNAL \contador_inst|Add3~7\ : std_logic;
SIGNAL \contador_inst|Add3~8_combout\ : std_logic;
SIGNAL \contador_inst|Add3~9\ : std_logic;
SIGNAL \contador_inst|Add3~10_combout\ : std_logic;
SIGNAL \contador_inst|Add3~11\ : std_logic;
SIGNAL \contador_inst|Add3~12_combout\ : std_logic;
SIGNAL \contador_inst|Add3~13\ : std_logic;
SIGNAL \contador_inst|Add3~14_combout\ : std_logic;
SIGNAL \contador_inst|Add3~15\ : std_logic;
SIGNAL \contador_inst|Add3~16_combout\ : std_logic;
SIGNAL \contador_inst|Add3~17\ : std_logic;
SIGNAL \contador_inst|Add3~18_combout\ : std_logic;
SIGNAL \contador_inst|Add3~19\ : std_logic;
SIGNAL \contador_inst|Add3~20_combout\ : std_logic;
SIGNAL \contador_inst|Add3~21\ : std_logic;
SIGNAL \contador_inst|Add3~22_combout\ : std_logic;
SIGNAL \contador_inst|Add3~23\ : std_logic;
SIGNAL \contador_inst|Add3~24_combout\ : std_logic;
SIGNAL \contador_inst|Add3~25\ : std_logic;
SIGNAL \contador_inst|Add3~26_combout\ : std_logic;
SIGNAL \contador_inst|Add3~27\ : std_logic;
SIGNAL \contador_inst|Add3~28_combout\ : std_logic;
SIGNAL \contador_inst|Add3~29\ : std_logic;
SIGNAL \contador_inst|Add3~30_combout\ : std_logic;
SIGNAL \contador_inst|Add3~31\ : std_logic;
SIGNAL \contador_inst|Add3~32_combout\ : std_logic;
SIGNAL \contador_inst|Add3~33\ : std_logic;
SIGNAL \contador_inst|Add3~34_combout\ : std_logic;
SIGNAL \contador_inst|Add3~35\ : std_logic;
SIGNAL \contador_inst|Add3~36_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~5_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~6_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~7_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~8_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~9_combout\ : std_logic;
SIGNAL \contador_inst|Add3~37\ : std_logic;
SIGNAL \contador_inst|Add3~38_combout\ : std_logic;
SIGNAL \contador_inst|Add3~39\ : std_logic;
SIGNAL \contador_inst|Add3~40_combout\ : std_logic;
SIGNAL \contador_inst|Add3~41\ : std_logic;
SIGNAL \contador_inst|Add3~42_combout\ : std_logic;
SIGNAL \contador_inst|Add3~43\ : std_logic;
SIGNAL \contador_inst|Add3~44_combout\ : std_logic;
SIGNAL \contador_inst|Add3~45\ : std_logic;
SIGNAL \contador_inst|Add3~46_combout\ : std_logic;
SIGNAL \contador_inst|Add3~47\ : std_logic;
SIGNAL \contador_inst|Add3~48_combout\ : std_logic;
SIGNAL \contador_inst|Add3~49\ : std_logic;
SIGNAL \contador_inst|Add3~50_combout\ : std_logic;
SIGNAL \contador_inst|Add3~51\ : std_logic;
SIGNAL \contador_inst|Add3~52_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~2_combout\ : std_logic;
SIGNAL \contador_inst|Add3~53\ : std_logic;
SIGNAL \contador_inst|Add3~54_combout\ : std_logic;
SIGNAL \contador_inst|Add3~55\ : std_logic;
SIGNAL \contador_inst|Add3~56_combout\ : std_logic;
SIGNAL \contador_inst|Add3~57\ : std_logic;
SIGNAL \contador_inst|Add3~58_combout\ : std_logic;
SIGNAL \contador_inst|Add3~59\ : std_logic;
SIGNAL \contador_inst|Add3~60_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~1_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~3_combout\ : std_logic;
SIGNAL \contador_inst|Add3~61\ : std_logic;
SIGNAL \contador_inst|Add3~62_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~0_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~4_combout\ : std_logic;
SIGNAL \contador_inst|Equal3~10_combout\ : std_logic;
SIGNAL \contador_inst|Add3~6_combout\ : std_logic;
SIGNAL \contador_inst|cont1~3_combout\ : std_logic;
SIGNAL \BCD_inst_A|inter_saida[0]~0_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[0]~0_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[0]~1_combout\ : std_logic;
SIGNAL \BCD_inst_D|inter_saida[1]~1_combout\ : std_logic;
SIGNAL \BCD_inst_B|inter_saida[1]~1_combout\ : std_logic;
SIGNAL \BCD_inst_C|inter_saida[1]~1_combout\ : std_logic;
SIGNAL \BCD_inst_A|inter_saida[1]~1_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[1]~2_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[1]~3_combout\ : std_logic;
SIGNAL \BCD_inst_C|inter_saida[2]~2_combout\ : std_logic;
SIGNAL \BCD_inst_D|inter_saida[2]~2_combout\ : std_logic;
SIGNAL \BCD_inst_B|inter_saida[2]~2_combout\ : std_logic;
SIGNAL \BCD_inst_A|inter_saida[2]~2_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[2]~4_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[2]~5_combout\ : std_logic;
SIGNAL \BCD_inst_B|inter_saida[3]~3_combout\ : std_logic;
SIGNAL \BCD_inst_D|inter_saida[3]~3_combout\ : std_logic;
SIGNAL \BCD_inst_A|inter_saida[3]~3_combout\ : std_logic;
SIGNAL \BCD_inst_C|inter_saida[3]~3_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[3]~6_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[3]~7_combout\ : std_logic;
SIGNAL \BCD_inst_C|inter_saida[4]~4_combout\ : std_logic;
SIGNAL \BCD_inst_B|inter_saida[4]~4_combout\ : std_logic;
SIGNAL \BCD_inst_A|inter_saida[4]~4_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[4]~8_combout\ : std_logic;
SIGNAL \BCD_inst_D|inter_saida[4]~4_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[4]~9_combout\ : std_logic;
SIGNAL \BCD_inst_D|inter_saida[5]~5_combout\ : std_logic;
SIGNAL \BCD_inst_C|inter_saida[5]~5_combout\ : std_logic;
SIGNAL \BCD_inst_A|inter_saida[5]~5_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[5]~10_combout\ : std_logic;
SIGNAL \BCD_inst_B|inter_saida[5]~5_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[5]~11_combout\ : std_logic;
SIGNAL \BCD_inst_C|inter_saida[6]~6_combout\ : std_logic;
SIGNAL \BCD_inst_D|inter_saida[6]~6_combout\ : std_logic;
SIGNAL \BCD_inst_B|inter_saida[6]~6_combout\ : std_logic;
SIGNAL \BCD_inst_A|inter_saida[6]~6_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[6]~12_combout\ : std_logic;
SIGNAL \MUX4_1_inst|saida[6]~13_combout\ : std_logic;
SIGNAL \contador_inst|cont3\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Display_Control_inst|s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \contador_inst|cont2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Display_Control_inst|contador\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \contador_inst|cont1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \contador_inst|cont4\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_reset_top~input_o\ : std_logic;
SIGNAL \BCD_inst_D|ALT_INV_inter_saida[6]~6_combout\ : std_logic;
SIGNAL \BCD_inst_A|ALT_INV_inter_saida[6]~6_combout\ : std_logic;
SIGNAL \BCD_inst_B|ALT_INV_inter_saida[6]~6_combout\ : std_logic;
SIGNAL \BCD_inst_C|ALT_INV_inter_saida[6]~6_combout\ : std_logic;
SIGNAL \BCD_inst_D|ALT_INV_inter_saida[4]~4_combout\ : std_logic;
SIGNAL \BCD_inst_A|ALT_INV_inter_saida[4]~4_combout\ : std_logic;
SIGNAL \BCD_inst_B|ALT_INV_inter_saida[4]~4_combout\ : std_logic;
SIGNAL \BCD_inst_C|ALT_INV_inter_saida[4]~4_combout\ : std_logic;
SIGNAL \BCD_inst_D|ALT_INV_inter_saida[2]~2_combout\ : std_logic;
SIGNAL \BCD_inst_A|ALT_INV_inter_saida[2]~2_combout\ : std_logic;
SIGNAL \BCD_inst_B|ALT_INV_inter_saida[2]~2_combout\ : std_logic;
SIGNAL \BCD_inst_C|ALT_INV_inter_saida[2]~2_combout\ : std_logic;
SIGNAL \BCD_inst_D|ALT_INV_inter_saida[1]~1_combout\ : std_logic;
SIGNAL \BCD_inst_A|ALT_INV_inter_saida[1]~1_combout\ : std_logic;
SIGNAL \BCD_inst_C|ALT_INV_inter_saida[1]~1_combout\ : std_logic;
SIGNAL \BCD_inst_B|ALT_INV_inter_saida[1]~1_combout\ : std_logic;
SIGNAL \BCD_inst_D|ALT_INV_inter_saida[0]~0_combout\ : std_logic;
SIGNAL \BCD_inst_A|ALT_INV_inter_saida[0]~0_combout\ : std_logic;
SIGNAL \BCD_inst_B|ALT_INV_inter_saida[0]~0_combout\ : std_logic;
SIGNAL \BCD_inst_C|ALT_INV_inter_saida[0]~0_combout\ : std_logic;
SIGNAL \MUX4_1_inst|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \MUX4_1_inst|ALT_INV_Equal2~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_botao_seletor <= botao_seletor;
ww_reset_top <= reset_top;
ww_clock_top <= clock_top;
saida_display <= ww_saida_display;
saida_mux_7bit <= ww_saida_mux_7bit;
saida_contador <= ww_saida_contador;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Display_Control_inst|b~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Display_Control_inst|b~q\);

\control_inst|MUX_inst|clock_saida~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \control_inst|MUX_inst|clock_saida~0_combout\);

\clock_top~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_top~input_o\);
\ALT_INV_reset_top~input_o\ <= NOT \reset_top~input_o\;
\BCD_inst_D|ALT_INV_inter_saida[6]~6_combout\ <= NOT \BCD_inst_D|inter_saida[6]~6_combout\;
\BCD_inst_A|ALT_INV_inter_saida[6]~6_combout\ <= NOT \BCD_inst_A|inter_saida[6]~6_combout\;
\BCD_inst_B|ALT_INV_inter_saida[6]~6_combout\ <= NOT \BCD_inst_B|inter_saida[6]~6_combout\;
\BCD_inst_C|ALT_INV_inter_saida[6]~6_combout\ <= NOT \BCD_inst_C|inter_saida[6]~6_combout\;
\BCD_inst_D|ALT_INV_inter_saida[4]~4_combout\ <= NOT \BCD_inst_D|inter_saida[4]~4_combout\;
\BCD_inst_A|ALT_INV_inter_saida[4]~4_combout\ <= NOT \BCD_inst_A|inter_saida[4]~4_combout\;
\BCD_inst_B|ALT_INV_inter_saida[4]~4_combout\ <= NOT \BCD_inst_B|inter_saida[4]~4_combout\;
\BCD_inst_C|ALT_INV_inter_saida[4]~4_combout\ <= NOT \BCD_inst_C|inter_saida[4]~4_combout\;
\BCD_inst_D|ALT_INV_inter_saida[2]~2_combout\ <= NOT \BCD_inst_D|inter_saida[2]~2_combout\;
\BCD_inst_A|ALT_INV_inter_saida[2]~2_combout\ <= NOT \BCD_inst_A|inter_saida[2]~2_combout\;
\BCD_inst_B|ALT_INV_inter_saida[2]~2_combout\ <= NOT \BCD_inst_B|inter_saida[2]~2_combout\;
\BCD_inst_C|ALT_INV_inter_saida[2]~2_combout\ <= NOT \BCD_inst_C|inter_saida[2]~2_combout\;
\BCD_inst_D|ALT_INV_inter_saida[1]~1_combout\ <= NOT \BCD_inst_D|inter_saida[1]~1_combout\;
\BCD_inst_A|ALT_INV_inter_saida[1]~1_combout\ <= NOT \BCD_inst_A|inter_saida[1]~1_combout\;
\BCD_inst_C|ALT_INV_inter_saida[1]~1_combout\ <= NOT \BCD_inst_C|inter_saida[1]~1_combout\;
\BCD_inst_B|ALT_INV_inter_saida[1]~1_combout\ <= NOT \BCD_inst_B|inter_saida[1]~1_combout\;
\BCD_inst_D|ALT_INV_inter_saida[0]~0_combout\ <= NOT \BCD_inst_D|inter_saida[0]~0_combout\;
\BCD_inst_A|ALT_INV_inter_saida[0]~0_combout\ <= NOT \BCD_inst_A|inter_saida[0]~0_combout\;
\BCD_inst_B|ALT_INV_inter_saida[0]~0_combout\ <= NOT \BCD_inst_B|inter_saida[0]~0_combout\;
\BCD_inst_C|ALT_INV_inter_saida[0]~0_combout\ <= NOT \BCD_inst_C|inter_saida[0]~0_combout\;
\MUX4_1_inst|ALT_INV_Equal2~2_combout\ <= NOT \MUX4_1_inst|Equal2~2_combout\;
\MUX4_1_inst|ALT_INV_Equal2~1_combout\ <= NOT \MUX4_1_inst|Equal2~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X43_Y0_N16
\saida_display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \saida_display[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\saida_display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|ALT_INV_Equal2~1_combout\,
	devoe => ww_devoe,
	o => \saida_display[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\saida_display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|ALT_INV_Equal2~2_combout\,
	devoe => ww_devoe,
	o => \saida_display[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\saida_display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display_Control_inst|saida[3]~0_combout\,
	devoe => ww_devoe,
	o => \saida_display[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\saida_mux_7bit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida_mux_7bit[0]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\saida_mux_7bit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|saida[1]~3_combout\,
	devoe => ww_devoe,
	o => \saida_mux_7bit[1]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\saida_mux_7bit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|saida[2]~5_combout\,
	devoe => ww_devoe,
	o => \saida_mux_7bit[2]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\saida_mux_7bit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|saida[3]~7_combout\,
	devoe => ww_devoe,
	o => \saida_mux_7bit[3]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\saida_mux_7bit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|saida[4]~9_combout\,
	devoe => ww_devoe,
	o => \saida_mux_7bit[4]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\saida_mux_7bit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|saida[5]~11_combout\,
	devoe => ww_devoe,
	o => \saida_mux_7bit[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\saida_mux_7bit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX4_1_inst|saida[6]~13_combout\,
	devoe => ww_devoe,
	o => \saida_mux_7bit[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\saida_contador[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_D|ALT_INV_inter_saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_contador[0]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\saida_contador[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_D|ALT_INV_inter_saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_contador[1]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\saida_contador[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_D|ALT_INV_inter_saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_contador[2]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\saida_contador[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_D|inter_saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_contador[3]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\saida_contador[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_D|ALT_INV_inter_saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida_contador[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\saida_contador[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_D|inter_saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida_contador[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\saida_contador[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_D|ALT_INV_inter_saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida_contador[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\saida_contador[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_C|ALT_INV_inter_saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_contador[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\saida_contador[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_C|ALT_INV_inter_saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_contador[8]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\saida_contador[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_C|ALT_INV_inter_saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_contador[9]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\saida_contador[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_C|inter_saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_contador[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\saida_contador[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_C|ALT_INV_inter_saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida_contador[11]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\saida_contador[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_C|inter_saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida_contador[12]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\saida_contador[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_C|ALT_INV_inter_saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida_contador[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\saida_contador[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_B|ALT_INV_inter_saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_contador[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\saida_contador[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_B|ALT_INV_inter_saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_contador[15]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\saida_contador[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_B|ALT_INV_inter_saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_contador[16]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\saida_contador[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_B|inter_saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_contador[17]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\saida_contador[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_B|ALT_INV_inter_saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida_contador[18]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\saida_contador[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_B|inter_saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida_contador[19]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\saida_contador[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_B|ALT_INV_inter_saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida_contador[20]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\saida_contador[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_A|ALT_INV_inter_saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_contador[21]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\saida_contador[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_A|ALT_INV_inter_saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_contador[22]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\saida_contador[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_A|ALT_INV_inter_saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_contador[23]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\saida_contador[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_A|inter_saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_contador[24]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\saida_contador[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_A|ALT_INV_inter_saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida_contador[25]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\saida_contador[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_A|inter_saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida_contador[26]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\saida_contador[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_inst_A|ALT_INV_inter_saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida_contador[27]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock_top~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_top,
	o => \clock_top~input_o\);

-- Location: CLKCTRL_G18
\clock_top~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_top~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_top~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y5_N0
\Display_Control_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~0_combout\ = \Display_Control_inst|contador\(0) $ (VCC)
-- \Display_Control_inst|Add0~1\ = CARRY(\Display_Control_inst|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(0),
	datad => VCC,
	combout => \Display_Control_inst|Add0~0_combout\,
	cout => \Display_Control_inst|Add0~1\);

-- Location: FF_X36_Y5_N1
\Display_Control_inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(0));

-- Location: LCCOMB_X36_Y5_N2
\Display_Control_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~2_combout\ = (\Display_Control_inst|contador\(1) & (!\Display_Control_inst|Add0~1\)) # (!\Display_Control_inst|contador\(1) & ((\Display_Control_inst|Add0~1\) # (GND)))
-- \Display_Control_inst|Add0~3\ = CARRY((!\Display_Control_inst|Add0~1\) # (!\Display_Control_inst|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(1),
	datad => VCC,
	cin => \Display_Control_inst|Add0~1\,
	combout => \Display_Control_inst|Add0~2_combout\,
	cout => \Display_Control_inst|Add0~3\);

-- Location: FF_X36_Y5_N3
\Display_Control_inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(1));

-- Location: LCCOMB_X36_Y5_N4
\Display_Control_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~4_combout\ = (\Display_Control_inst|contador\(2) & (\Display_Control_inst|Add0~3\ $ (GND))) # (!\Display_Control_inst|contador\(2) & (!\Display_Control_inst|Add0~3\ & VCC))
-- \Display_Control_inst|Add0~5\ = CARRY((\Display_Control_inst|contador\(2) & !\Display_Control_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(2),
	datad => VCC,
	cin => \Display_Control_inst|Add0~3\,
	combout => \Display_Control_inst|Add0~4_combout\,
	cout => \Display_Control_inst|Add0~5\);

-- Location: FF_X36_Y5_N5
\Display_Control_inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(2));

-- Location: LCCOMB_X36_Y5_N6
\Display_Control_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~6_combout\ = (\Display_Control_inst|contador\(3) & (!\Display_Control_inst|Add0~5\)) # (!\Display_Control_inst|contador\(3) & ((\Display_Control_inst|Add0~5\) # (GND)))
-- \Display_Control_inst|Add0~7\ = CARRY((!\Display_Control_inst|Add0~5\) # (!\Display_Control_inst|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(3),
	datad => VCC,
	cin => \Display_Control_inst|Add0~5\,
	combout => \Display_Control_inst|Add0~6_combout\,
	cout => \Display_Control_inst|Add0~7\);

-- Location: LCCOMB_X35_Y5_N16
\Display_Control_inst|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|contador~1_combout\ = (\Display_Control_inst|Add0~6_combout\ & !\Display_Control_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|Add0~6_combout\,
	datad => \Display_Control_inst|Equal0~10_combout\,
	combout => \Display_Control_inst|contador~1_combout\);

-- Location: FF_X35_Y5_N17
\Display_Control_inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(3));

-- Location: LCCOMB_X36_Y5_N8
\Display_Control_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~8_combout\ = (\Display_Control_inst|contador\(4) & (\Display_Control_inst|Add0~7\ $ (GND))) # (!\Display_Control_inst|contador\(4) & (!\Display_Control_inst|Add0~7\ & VCC))
-- \Display_Control_inst|Add0~9\ = CARRY((\Display_Control_inst|contador\(4) & !\Display_Control_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(4),
	datad => VCC,
	cin => \Display_Control_inst|Add0~7\,
	combout => \Display_Control_inst|Add0~8_combout\,
	cout => \Display_Control_inst|Add0~9\);

-- Location: FF_X36_Y5_N9
\Display_Control_inst|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(4));

-- Location: LCCOMB_X36_Y5_N10
\Display_Control_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~10_combout\ = (\Display_Control_inst|contador\(5) & (!\Display_Control_inst|Add0~9\)) # (!\Display_Control_inst|contador\(5) & ((\Display_Control_inst|Add0~9\) # (GND)))
-- \Display_Control_inst|Add0~11\ = CARRY((!\Display_Control_inst|Add0~9\) # (!\Display_Control_inst|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(5),
	datad => VCC,
	cin => \Display_Control_inst|Add0~9\,
	combout => \Display_Control_inst|Add0~10_combout\,
	cout => \Display_Control_inst|Add0~11\);

-- Location: FF_X36_Y5_N11
\Display_Control_inst|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(5));

-- Location: LCCOMB_X36_Y5_N12
\Display_Control_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~12_combout\ = (\Display_Control_inst|contador\(6) & (\Display_Control_inst|Add0~11\ $ (GND))) # (!\Display_Control_inst|contador\(6) & (!\Display_Control_inst|Add0~11\ & VCC))
-- \Display_Control_inst|Add0~13\ = CARRY((\Display_Control_inst|contador\(6) & !\Display_Control_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(6),
	datad => VCC,
	cin => \Display_Control_inst|Add0~11\,
	combout => \Display_Control_inst|Add0~12_combout\,
	cout => \Display_Control_inst|Add0~13\);

-- Location: FF_X36_Y5_N13
\Display_Control_inst|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(6));

-- Location: LCCOMB_X36_Y5_N14
\Display_Control_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~14_combout\ = (\Display_Control_inst|contador\(7) & (!\Display_Control_inst|Add0~13\)) # (!\Display_Control_inst|contador\(7) & ((\Display_Control_inst|Add0~13\) # (GND)))
-- \Display_Control_inst|Add0~15\ = CARRY((!\Display_Control_inst|Add0~13\) # (!\Display_Control_inst|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(7),
	datad => VCC,
	cin => \Display_Control_inst|Add0~13\,
	combout => \Display_Control_inst|Add0~14_combout\,
	cout => \Display_Control_inst|Add0~15\);

-- Location: LCCOMB_X35_Y5_N6
\Display_Control_inst|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|contador~0_combout\ = (\Display_Control_inst|Add0~14_combout\ & !\Display_Control_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|Add0~14_combout\,
	datad => \Display_Control_inst|Equal0~10_combout\,
	combout => \Display_Control_inst|contador~0_combout\);

-- Location: FF_X35_Y5_N7
\Display_Control_inst|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(7));

-- Location: LCCOMB_X36_Y5_N16
\Display_Control_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~16_combout\ = (\Display_Control_inst|contador\(8) & (\Display_Control_inst|Add0~15\ $ (GND))) # (!\Display_Control_inst|contador\(8) & (!\Display_Control_inst|Add0~15\ & VCC))
-- \Display_Control_inst|Add0~17\ = CARRY((\Display_Control_inst|contador\(8) & !\Display_Control_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(8),
	datad => VCC,
	cin => \Display_Control_inst|Add0~15\,
	combout => \Display_Control_inst|Add0~16_combout\,
	cout => \Display_Control_inst|Add0~17\);

-- Location: LCCOMB_X35_Y5_N20
\Display_Control_inst|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|contador~2_combout\ = (\Display_Control_inst|Add0~16_combout\ & !\Display_Control_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|Add0~16_combout\,
	datad => \Display_Control_inst|Equal0~10_combout\,
	combout => \Display_Control_inst|contador~2_combout\);

-- Location: FF_X35_Y5_N21
\Display_Control_inst|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(8));

-- Location: LCCOMB_X36_Y5_N18
\Display_Control_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~18_combout\ = (\Display_Control_inst|contador\(9) & (!\Display_Control_inst|Add0~17\)) # (!\Display_Control_inst|contador\(9) & ((\Display_Control_inst|Add0~17\) # (GND)))
-- \Display_Control_inst|Add0~19\ = CARRY((!\Display_Control_inst|Add0~17\) # (!\Display_Control_inst|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(9),
	datad => VCC,
	cin => \Display_Control_inst|Add0~17\,
	combout => \Display_Control_inst|Add0~18_combout\,
	cout => \Display_Control_inst|Add0~19\);

-- Location: LCCOMB_X35_Y5_N10
\Display_Control_inst|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|contador~3_combout\ = (\Display_Control_inst|Add0~18_combout\ & !\Display_Control_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|Add0~18_combout\,
	datad => \Display_Control_inst|Equal0~10_combout\,
	combout => \Display_Control_inst|contador~3_combout\);

-- Location: FF_X35_Y5_N11
\Display_Control_inst|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(9));

-- Location: LCCOMB_X36_Y5_N20
\Display_Control_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~20_combout\ = (\Display_Control_inst|contador\(10) & (\Display_Control_inst|Add0~19\ $ (GND))) # (!\Display_Control_inst|contador\(10) & (!\Display_Control_inst|Add0~19\ & VCC))
-- \Display_Control_inst|Add0~21\ = CARRY((\Display_Control_inst|contador\(10) & !\Display_Control_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(10),
	datad => VCC,
	cin => \Display_Control_inst|Add0~19\,
	combout => \Display_Control_inst|Add0~20_combout\,
	cout => \Display_Control_inst|Add0~21\);

-- Location: FF_X36_Y5_N21
\Display_Control_inst|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(10));

-- Location: LCCOMB_X36_Y5_N22
\Display_Control_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~22_combout\ = (\Display_Control_inst|contador\(11) & (!\Display_Control_inst|Add0~21\)) # (!\Display_Control_inst|contador\(11) & ((\Display_Control_inst|Add0~21\) # (GND)))
-- \Display_Control_inst|Add0~23\ = CARRY((!\Display_Control_inst|Add0~21\) # (!\Display_Control_inst|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(11),
	datad => VCC,
	cin => \Display_Control_inst|Add0~21\,
	combout => \Display_Control_inst|Add0~22_combout\,
	cout => \Display_Control_inst|Add0~23\);

-- Location: FF_X36_Y5_N23
\Display_Control_inst|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(11));

-- Location: LCCOMB_X36_Y5_N24
\Display_Control_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~24_combout\ = (\Display_Control_inst|contador\(12) & (\Display_Control_inst|Add0~23\ $ (GND))) # (!\Display_Control_inst|contador\(12) & (!\Display_Control_inst|Add0~23\ & VCC))
-- \Display_Control_inst|Add0~25\ = CARRY((\Display_Control_inst|contador\(12) & !\Display_Control_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(12),
	datad => VCC,
	cin => \Display_Control_inst|Add0~23\,
	combout => \Display_Control_inst|Add0~24_combout\,
	cout => \Display_Control_inst|Add0~25\);

-- Location: LCCOMB_X35_Y5_N14
\Display_Control_inst|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|contador~4_combout\ = (\Display_Control_inst|Add0~24_combout\ & !\Display_Control_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|Add0~24_combout\,
	datad => \Display_Control_inst|Equal0~10_combout\,
	combout => \Display_Control_inst|contador~4_combout\);

-- Location: FF_X35_Y5_N15
\Display_Control_inst|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(12));

-- Location: LCCOMB_X36_Y5_N26
\Display_Control_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~26_combout\ = (\Display_Control_inst|contador\(13) & (!\Display_Control_inst|Add0~25\)) # (!\Display_Control_inst|contador\(13) & ((\Display_Control_inst|Add0~25\) # (GND)))
-- \Display_Control_inst|Add0~27\ = CARRY((!\Display_Control_inst|Add0~25\) # (!\Display_Control_inst|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(13),
	datad => VCC,
	cin => \Display_Control_inst|Add0~25\,
	combout => \Display_Control_inst|Add0~26_combout\,
	cout => \Display_Control_inst|Add0~27\);

-- Location: FF_X36_Y5_N27
\Display_Control_inst|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(13));

-- Location: LCCOMB_X36_Y5_N28
\Display_Control_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~28_combout\ = (\Display_Control_inst|contador\(14) & (\Display_Control_inst|Add0~27\ $ (GND))) # (!\Display_Control_inst|contador\(14) & (!\Display_Control_inst|Add0~27\ & VCC))
-- \Display_Control_inst|Add0~29\ = CARRY((\Display_Control_inst|contador\(14) & !\Display_Control_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(14),
	datad => VCC,
	cin => \Display_Control_inst|Add0~27\,
	combout => \Display_Control_inst|Add0~28_combout\,
	cout => \Display_Control_inst|Add0~29\);

-- Location: FF_X36_Y5_N29
\Display_Control_inst|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(14));

-- Location: LCCOMB_X36_Y5_N30
\Display_Control_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~30_combout\ = (\Display_Control_inst|contador\(15) & (!\Display_Control_inst|Add0~29\)) # (!\Display_Control_inst|contador\(15) & ((\Display_Control_inst|Add0~29\) # (GND)))
-- \Display_Control_inst|Add0~31\ = CARRY((!\Display_Control_inst|Add0~29\) # (!\Display_Control_inst|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(15),
	datad => VCC,
	cin => \Display_Control_inst|Add0~29\,
	combout => \Display_Control_inst|Add0~30_combout\,
	cout => \Display_Control_inst|Add0~31\);

-- Location: FF_X36_Y5_N31
\Display_Control_inst|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(15));

-- Location: LCCOMB_X35_Y5_N22
\Display_Control_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~4_combout\ = (!\Display_Control_inst|contador\(15) & (!\Display_Control_inst|contador\(14) & (\Display_Control_inst|contador\(12) & !\Display_Control_inst|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(15),
	datab => \Display_Control_inst|contador\(14),
	datac => \Display_Control_inst|contador\(12),
	datad => \Display_Control_inst|contador\(13),
	combout => \Display_Control_inst|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y5_N8
\Display_Control_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~3_combout\ = (\Display_Control_inst|contador\(9) & (\Display_Control_inst|contador\(8) & (!\Display_Control_inst|contador\(10) & !\Display_Control_inst|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(9),
	datab => \Display_Control_inst|contador\(8),
	datac => \Display_Control_inst|contador\(10),
	datad => \Display_Control_inst|contador\(11),
	combout => \Display_Control_inst|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y4_N0
\Display_Control_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~32_combout\ = (\Display_Control_inst|contador\(16) & (\Display_Control_inst|Add0~31\ $ (GND))) # (!\Display_Control_inst|contador\(16) & (!\Display_Control_inst|Add0~31\ & VCC))
-- \Display_Control_inst|Add0~33\ = CARRY((\Display_Control_inst|contador\(16) & !\Display_Control_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(16),
	datad => VCC,
	cin => \Display_Control_inst|Add0~31\,
	combout => \Display_Control_inst|Add0~32_combout\,
	cout => \Display_Control_inst|Add0~33\);

-- Location: FF_X36_Y4_N1
\Display_Control_inst|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(16));

-- Location: LCCOMB_X36_Y4_N2
\Display_Control_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~34_combout\ = (\Display_Control_inst|contador\(17) & (!\Display_Control_inst|Add0~33\)) # (!\Display_Control_inst|contador\(17) & ((\Display_Control_inst|Add0~33\) # (GND)))
-- \Display_Control_inst|Add0~35\ = CARRY((!\Display_Control_inst|Add0~33\) # (!\Display_Control_inst|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(17),
	datad => VCC,
	cin => \Display_Control_inst|Add0~33\,
	combout => \Display_Control_inst|Add0~34_combout\,
	cout => \Display_Control_inst|Add0~35\);

-- Location: FF_X36_Y4_N3
\Display_Control_inst|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(17));

-- Location: LCCOMB_X36_Y4_N4
\Display_Control_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~36_combout\ = (\Display_Control_inst|contador\(18) & (\Display_Control_inst|Add0~35\ $ (GND))) # (!\Display_Control_inst|contador\(18) & (!\Display_Control_inst|Add0~35\ & VCC))
-- \Display_Control_inst|Add0~37\ = CARRY((\Display_Control_inst|contador\(18) & !\Display_Control_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(18),
	datad => VCC,
	cin => \Display_Control_inst|Add0~35\,
	combout => \Display_Control_inst|Add0~36_combout\,
	cout => \Display_Control_inst|Add0~37\);

-- Location: FF_X36_Y4_N5
\Display_Control_inst|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(18));

-- Location: LCCOMB_X36_Y4_N6
\Display_Control_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~38_combout\ = (\Display_Control_inst|contador\(19) & (!\Display_Control_inst|Add0~37\)) # (!\Display_Control_inst|contador\(19) & ((\Display_Control_inst|Add0~37\) # (GND)))
-- \Display_Control_inst|Add0~39\ = CARRY((!\Display_Control_inst|Add0~37\) # (!\Display_Control_inst|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(19),
	datad => VCC,
	cin => \Display_Control_inst|Add0~37\,
	combout => \Display_Control_inst|Add0~38_combout\,
	cout => \Display_Control_inst|Add0~39\);

-- Location: FF_X36_Y4_N7
\Display_Control_inst|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(19));

-- Location: LCCOMB_X36_Y4_N8
\Display_Control_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~40_combout\ = (\Display_Control_inst|contador\(20) & (\Display_Control_inst|Add0~39\ $ (GND))) # (!\Display_Control_inst|contador\(20) & (!\Display_Control_inst|Add0~39\ & VCC))
-- \Display_Control_inst|Add0~41\ = CARRY((\Display_Control_inst|contador\(20) & !\Display_Control_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(20),
	datad => VCC,
	cin => \Display_Control_inst|Add0~39\,
	combout => \Display_Control_inst|Add0~40_combout\,
	cout => \Display_Control_inst|Add0~41\);

-- Location: FF_X36_Y4_N9
\Display_Control_inst|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(20));

-- Location: LCCOMB_X36_Y4_N10
\Display_Control_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~42_combout\ = (\Display_Control_inst|contador\(21) & (!\Display_Control_inst|Add0~41\)) # (!\Display_Control_inst|contador\(21) & ((\Display_Control_inst|Add0~41\) # (GND)))
-- \Display_Control_inst|Add0~43\ = CARRY((!\Display_Control_inst|Add0~41\) # (!\Display_Control_inst|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(21),
	datad => VCC,
	cin => \Display_Control_inst|Add0~41\,
	combout => \Display_Control_inst|Add0~42_combout\,
	cout => \Display_Control_inst|Add0~43\);

-- Location: FF_X36_Y4_N11
\Display_Control_inst|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(21));

-- Location: LCCOMB_X36_Y4_N12
\Display_Control_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~44_combout\ = (\Display_Control_inst|contador\(22) & (\Display_Control_inst|Add0~43\ $ (GND))) # (!\Display_Control_inst|contador\(22) & (!\Display_Control_inst|Add0~43\ & VCC))
-- \Display_Control_inst|Add0~45\ = CARRY((\Display_Control_inst|contador\(22) & !\Display_Control_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(22),
	datad => VCC,
	cin => \Display_Control_inst|Add0~43\,
	combout => \Display_Control_inst|Add0~44_combout\,
	cout => \Display_Control_inst|Add0~45\);

-- Location: FF_X36_Y4_N13
\Display_Control_inst|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(22));

-- Location: LCCOMB_X36_Y4_N14
\Display_Control_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~46_combout\ = (\Display_Control_inst|contador\(23) & (!\Display_Control_inst|Add0~45\)) # (!\Display_Control_inst|contador\(23) & ((\Display_Control_inst|Add0~45\) # (GND)))
-- \Display_Control_inst|Add0~47\ = CARRY((!\Display_Control_inst|Add0~45\) # (!\Display_Control_inst|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(23),
	datad => VCC,
	cin => \Display_Control_inst|Add0~45\,
	combout => \Display_Control_inst|Add0~46_combout\,
	cout => \Display_Control_inst|Add0~47\);

-- Location: FF_X36_Y4_N15
\Display_Control_inst|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(23));

-- Location: LCCOMB_X36_Y4_N16
\Display_Control_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~48_combout\ = (\Display_Control_inst|contador\(24) & (\Display_Control_inst|Add0~47\ $ (GND))) # (!\Display_Control_inst|contador\(24) & (!\Display_Control_inst|Add0~47\ & VCC))
-- \Display_Control_inst|Add0~49\ = CARRY((\Display_Control_inst|contador\(24) & !\Display_Control_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(24),
	datad => VCC,
	cin => \Display_Control_inst|Add0~47\,
	combout => \Display_Control_inst|Add0~48_combout\,
	cout => \Display_Control_inst|Add0~49\);

-- Location: FF_X36_Y4_N17
\Display_Control_inst|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(24));

-- Location: LCCOMB_X36_Y4_N18
\Display_Control_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~50_combout\ = (\Display_Control_inst|contador\(25) & (!\Display_Control_inst|Add0~49\)) # (!\Display_Control_inst|contador\(25) & ((\Display_Control_inst|Add0~49\) # (GND)))
-- \Display_Control_inst|Add0~51\ = CARRY((!\Display_Control_inst|Add0~49\) # (!\Display_Control_inst|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(25),
	datad => VCC,
	cin => \Display_Control_inst|Add0~49\,
	combout => \Display_Control_inst|Add0~50_combout\,
	cout => \Display_Control_inst|Add0~51\);

-- Location: FF_X36_Y4_N19
\Display_Control_inst|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(25));

-- Location: LCCOMB_X36_Y4_N20
\Display_Control_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~52_combout\ = (\Display_Control_inst|contador\(26) & (\Display_Control_inst|Add0~51\ $ (GND))) # (!\Display_Control_inst|contador\(26) & (!\Display_Control_inst|Add0~51\ & VCC))
-- \Display_Control_inst|Add0~53\ = CARRY((\Display_Control_inst|contador\(26) & !\Display_Control_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(26),
	datad => VCC,
	cin => \Display_Control_inst|Add0~51\,
	combout => \Display_Control_inst|Add0~52_combout\,
	cout => \Display_Control_inst|Add0~53\);

-- Location: FF_X36_Y4_N21
\Display_Control_inst|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(26));

-- Location: LCCOMB_X36_Y4_N22
\Display_Control_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~54_combout\ = (\Display_Control_inst|contador\(27) & (!\Display_Control_inst|Add0~53\)) # (!\Display_Control_inst|contador\(27) & ((\Display_Control_inst|Add0~53\) # (GND)))
-- \Display_Control_inst|Add0~55\ = CARRY((!\Display_Control_inst|Add0~53\) # (!\Display_Control_inst|contador\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(27),
	datad => VCC,
	cin => \Display_Control_inst|Add0~53\,
	combout => \Display_Control_inst|Add0~54_combout\,
	cout => \Display_Control_inst|Add0~55\);

-- Location: FF_X36_Y4_N23
\Display_Control_inst|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(27));

-- Location: LCCOMB_X36_Y4_N24
\Display_Control_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~56_combout\ = (\Display_Control_inst|contador\(28) & (\Display_Control_inst|Add0~55\ $ (GND))) # (!\Display_Control_inst|contador\(28) & (!\Display_Control_inst|Add0~55\ & VCC))
-- \Display_Control_inst|Add0~57\ = CARRY((\Display_Control_inst|contador\(28) & !\Display_Control_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(28),
	datad => VCC,
	cin => \Display_Control_inst|Add0~55\,
	combout => \Display_Control_inst|Add0~56_combout\,
	cout => \Display_Control_inst|Add0~57\);

-- Location: FF_X36_Y4_N25
\Display_Control_inst|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(28));

-- Location: LCCOMB_X36_Y4_N26
\Display_Control_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~58_combout\ = (\Display_Control_inst|contador\(29) & (!\Display_Control_inst|Add0~57\)) # (!\Display_Control_inst|contador\(29) & ((\Display_Control_inst|Add0~57\) # (GND)))
-- \Display_Control_inst|Add0~59\ = CARRY((!\Display_Control_inst|Add0~57\) # (!\Display_Control_inst|contador\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(29),
	datad => VCC,
	cin => \Display_Control_inst|Add0~57\,
	combout => \Display_Control_inst|Add0~58_combout\,
	cout => \Display_Control_inst|Add0~59\);

-- Location: FF_X36_Y4_N27
\Display_Control_inst|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(29));

-- Location: LCCOMB_X36_Y4_N28
\Display_Control_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~60_combout\ = (\Display_Control_inst|contador\(30) & (\Display_Control_inst|Add0~59\ $ (GND))) # (!\Display_Control_inst|contador\(30) & (!\Display_Control_inst|Add0~59\ & VCC))
-- \Display_Control_inst|Add0~61\ = CARRY((\Display_Control_inst|contador\(30) & !\Display_Control_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(30),
	datad => VCC,
	cin => \Display_Control_inst|Add0~59\,
	combout => \Display_Control_inst|Add0~60_combout\,
	cout => \Display_Control_inst|Add0~61\);

-- Location: FF_X36_Y4_N29
\Display_Control_inst|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(30));

-- Location: LCCOMB_X36_Y4_N30
\Display_Control_inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Add0~62_combout\ = \Display_Control_inst|contador\(31) $ (\Display_Control_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(31),
	cin => \Display_Control_inst|Add0~61\,
	combout => \Display_Control_inst|Add0~62_combout\);

-- Location: FF_X36_Y4_N31
\Display_Control_inst|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|contador\(31));

-- Location: LCCOMB_X39_Y4_N26
\Display_Control_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~8_combout\ = (!\Display_Control_inst|contador\(31) & (!\Display_Control_inst|contador\(30) & (!\Display_Control_inst|contador\(28) & !\Display_Control_inst|contador\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(31),
	datab => \Display_Control_inst|contador\(30),
	datac => \Display_Control_inst|contador\(28),
	datad => \Display_Control_inst|contador\(29),
	combout => \Display_Control_inst|Equal0~8_combout\);

-- Location: LCCOMB_X39_Y4_N28
\Display_Control_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~5_combout\ = (!\Display_Control_inst|contador\(17) & (!\Display_Control_inst|contador\(16) & (!\Display_Control_inst|contador\(19) & !\Display_Control_inst|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(17),
	datab => \Display_Control_inst|contador\(16),
	datac => \Display_Control_inst|contador\(19),
	datad => \Display_Control_inst|contador\(18),
	combout => \Display_Control_inst|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y4_N18
\Display_Control_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~6_combout\ = (!\Display_Control_inst|contador\(23) & (!\Display_Control_inst|contador\(22) & (!\Display_Control_inst|contador\(20) & !\Display_Control_inst|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(23),
	datab => \Display_Control_inst|contador\(22),
	datac => \Display_Control_inst|contador\(20),
	datad => \Display_Control_inst|contador\(21),
	combout => \Display_Control_inst|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y4_N16
\Display_Control_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~7_combout\ = (!\Display_Control_inst|contador\(26) & (!\Display_Control_inst|contador\(25) & (!\Display_Control_inst|contador\(27) & !\Display_Control_inst|contador\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(26),
	datab => \Display_Control_inst|contador\(25),
	datac => \Display_Control_inst|contador\(27),
	datad => \Display_Control_inst|contador\(24),
	combout => \Display_Control_inst|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y4_N0
\Display_Control_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~9_combout\ = (\Display_Control_inst|Equal0~8_combout\ & (\Display_Control_inst|Equal0~5_combout\ & (\Display_Control_inst|Equal0~6_combout\ & \Display_Control_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|Equal0~8_combout\,
	datab => \Display_Control_inst|Equal0~5_combout\,
	datac => \Display_Control_inst|Equal0~6_combout\,
	datad => \Display_Control_inst|Equal0~7_combout\,
	combout => \Display_Control_inst|Equal0~9_combout\);

-- Location: LCCOMB_X35_Y5_N30
\Display_Control_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~0_combout\ = (\Display_Control_inst|contador\(2) & (\Display_Control_inst|contador\(0) & \Display_Control_inst|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(2),
	datac => \Display_Control_inst|contador\(0),
	datad => \Display_Control_inst|contador\(1),
	combout => \Display_Control_inst|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y5_N28
\Display_Control_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~1_combout\ = (\Display_Control_inst|contador\(7) & (!\Display_Control_inst|contador\(6) & (!\Display_Control_inst|contador\(5) & !\Display_Control_inst|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(7),
	datab => \Display_Control_inst|contador\(6),
	datac => \Display_Control_inst|contador\(5),
	datad => \Display_Control_inst|contador\(3),
	combout => \Display_Control_inst|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y5_N2
\Display_Control_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~2_combout\ = (\Display_Control_inst|Equal0~0_combout\ & (!\Display_Control_inst|contador\(4) & \Display_Control_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|Equal0~0_combout\,
	datac => \Display_Control_inst|contador\(4),
	datad => \Display_Control_inst|Equal0~1_combout\,
	combout => \Display_Control_inst|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y5_N24
\Display_Control_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|Equal0~10_combout\ = (\Display_Control_inst|Equal0~4_combout\ & (\Display_Control_inst|Equal0~3_combout\ & (\Display_Control_inst|Equal0~9_combout\ & \Display_Control_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|Equal0~4_combout\,
	datab => \Display_Control_inst|Equal0~3_combout\,
	datac => \Display_Control_inst|Equal0~9_combout\,
	datad => \Display_Control_inst|Equal0~2_combout\,
	combout => \Display_Control_inst|Equal0~10_combout\);

-- Location: LCCOMB_X35_Y5_N0
\Display_Control_inst|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|b~0_combout\ = \Display_Control_inst|b~q\ $ (\Display_Control_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|b~q\,
	datad => \Display_Control_inst|Equal0~10_combout\,
	combout => \Display_Control_inst|b~0_combout\);

-- Location: LCCOMB_X35_Y5_N26
\Display_Control_inst|b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|b~feeder_combout\ = \Display_Control_inst|b~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|b~0_combout\,
	combout => \Display_Control_inst|b~feeder_combout\);

-- Location: FF_X35_Y5_N27
\Display_Control_inst|b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \Display_Control_inst|b~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|b~q\);

-- Location: CLKCTRL_G15
\Display_Control_inst|b~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Display_Control_inst|b~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Display_Control_inst|b~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y11_N18
\Display_Control_inst|s[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|s[0]~1_combout\ = !\Display_Control_inst|s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|s\(0),
	combout => \Display_Control_inst|s[0]~1_combout\);

-- Location: FF_X47_Y11_N19
\Display_Control_inst|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_Control_inst|b~clkctrl_outclk\,
	d => \Display_Control_inst|s[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|s\(0));

-- Location: LCCOMB_X47_Y11_N20
\Display_Control_inst|s[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|s[1]~0_combout\ = \Display_Control_inst|s\(1) $ (\Display_Control_inst|s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|s\(1),
	datad => \Display_Control_inst|s\(0),
	combout => \Display_Control_inst|s[1]~0_combout\);

-- Location: FF_X47_Y11_N21
\Display_Control_inst|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Display_Control_inst|b~clkctrl_outclk\,
	d => \Display_Control_inst|s[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Display_Control_inst|s\(1));

-- Location: LCCOMB_X44_Y7_N28
\MUX4_1_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|Equal2~0_combout\ = (\Display_Control_inst|s\(0)) # (\Display_Control_inst|s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|s\(0),
	datad => \Display_Control_inst|s\(1),
	combout => \MUX4_1_inst|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y7_N18
\MUX4_1_inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|Equal2~1_combout\ = (\Display_Control_inst|s\(0) & !\Display_Control_inst|s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|s\(0),
	datad => \Display_Control_inst|s\(1),
	combout => \MUX4_1_inst|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y14_N24
\MUX4_1_inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|Equal2~2_combout\ = (!\Display_Control_inst|s\(0) & \Display_Control_inst|s\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|s\(0),
	datad => \Display_Control_inst|s\(1),
	combout => \MUX4_1_inst|Equal2~2_combout\);

-- Location: LCCOMB_X44_Y7_N4
\Display_Control_inst|saida[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display_Control_inst|saida[3]~0_combout\ = (!\Display_Control_inst|s\(1)) # (!\Display_Control_inst|s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display_Control_inst|s\(0),
	datad => \Display_Control_inst|s\(1),
	combout => \Display_Control_inst|saida[3]~0_combout\);

-- Location: LCCOMB_X34_Y5_N8
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\ = CARRY((\Display_Control_inst|contador\(1) & \Display_Control_inst|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(1),
	datab => \Display_Control_inst|contador\(0),
	datad => VCC,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\);

-- Location: LCCOMB_X34_Y5_N10
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\) # (!\Display_Control_inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(2),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\);

-- Location: LCCOMB_X34_Y5_N12
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~4_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~4_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\);

-- Location: FF_X34_Y5_N13
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3));

-- Location: LCCOMB_X34_Y5_N14
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~6_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~6_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\);

-- Location: FF_X34_Y5_N15
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4));

-- Location: LCCOMB_X34_Y5_N16
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~8_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~8_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\);

-- Location: FF_X34_Y5_N17
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5));

-- Location: LCCOMB_X35_Y4_N22
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5) & (\Display_Control_inst|Equal0~0_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5),
	datac => \Display_Control_inst|Equal0~0_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y5_N18
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\);

-- Location: LCCOMB_X34_Y5_N4
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\ & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5_combout\);

-- Location: FF_X34_Y5_N5
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6));

-- Location: LCCOMB_X34_Y5_N20
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~12_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~12_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\);

-- Location: FF_X34_Y5_N21
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7));

-- Location: LCCOMB_X34_Y5_N22
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~14_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~14_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\);

-- Location: FF_X34_Y5_N23
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8));

-- Location: LCCOMB_X34_Y5_N24
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~16_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(9) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(9) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(9) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(9),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~16_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\);

-- Location: FF_X34_Y5_N25
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(9));

-- Location: LCCOMB_X34_Y5_N26
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~18_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~18_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\);

-- Location: FF_X34_Y5_N27
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10));

-- Location: LCCOMB_X34_Y5_N28
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\);

-- Location: LCCOMB_X34_Y5_N6
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\ & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4_combout\);

-- Location: FF_X34_Y5_N7
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11));

-- Location: LCCOMB_X34_Y5_N30
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\);

-- Location: LCCOMB_X34_Y5_N0
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~3_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\ & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~3_combout\);

-- Location: FF_X34_Y5_N1
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12));

-- Location: LCCOMB_X34_Y4_N0
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\);

-- Location: LCCOMB_X35_Y4_N2
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~2_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~2_combout\);

-- Location: FF_X35_Y4_N3
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13));

-- Location: LCCOMB_X34_Y4_N2
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\);

-- Location: LCCOMB_X35_Y4_N10
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~1_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~1_combout\);

-- Location: FF_X35_Y4_N11
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14));

-- Location: LCCOMB_X34_Y4_N4
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~28_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~28_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\);

-- Location: FF_X34_Y4_N5
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15));

-- Location: LCCOMB_X34_Y4_N6
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\);

-- Location: LCCOMB_X34_Y4_N24
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~0_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~0_combout\);

-- Location: FF_X34_Y4_N25
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16));

-- Location: LCCOMB_X35_Y4_N28
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15) & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y4_N8
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~32_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~32_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\);

-- Location: FF_X34_Y4_N9
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17));

-- Location: LCCOMB_X34_Y4_N10
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\);

-- Location: LCCOMB_X35_Y4_N20
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6_combout\);

-- Location: FF_X35_Y4_N21
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18));

-- Location: LCCOMB_X34_Y4_N12
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\);

-- Location: LCCOMB_X35_Y4_N24
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7_combout\);

-- Location: FF_X35_Y4_N25
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19));

-- Location: LCCOMB_X34_Y4_N14
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\);

-- Location: LCCOMB_X34_Y4_N30
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\ & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8_combout\);

-- Location: FF_X34_Y4_N31
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20));

-- Location: LCCOMB_X34_Y4_N16
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\);

-- Location: LCCOMB_X34_Y4_N28
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9_combout\);

-- Location: FF_X34_Y4_N29
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21));

-- Location: LCCOMB_X35_Y4_N4
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21) & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y4_N18
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\);

-- Location: LCCOMB_X35_Y4_N30
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10_combout\);

-- Location: FF_X35_Y4_N31
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22));

-- Location: LCCOMB_X34_Y4_N20
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~44_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~45\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~44_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~45\);

-- Location: FF_X34_Y4_N21
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23));

-- Location: LCCOMB_X34_Y4_N22
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\ = \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~45\ $ (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24),
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~45\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\);

-- Location: LCCOMB_X34_Y4_N26
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\ & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11_combout\);

-- Location: FF_X34_Y4_N27
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24));

-- Location: LCCOMB_X35_Y4_N26
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y4_N12
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6) & 
-- !\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y4_N14
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~6_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\ & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\ & \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~6_combout\);

-- Location: LCCOMB_X35_Y5_N4
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12) & 
-- !\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(9),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X35_Y4_N6
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\ & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\ & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~6_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\);

-- Location: LCCOMB_X35_Y4_N8
\control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\ $ (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0_combout\);

-- Location: FF_X35_Y4_N9
\control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~input_o\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\);

-- Location: LCCOMB_X38_Y4_N28
\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~0_combout\ = (!\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(0) & !\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(0),
	datad => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(1),
	combout => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~0_combout\);

-- Location: FF_X38_Y4_N29
\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(0));

-- Location: LCCOMB_X38_Y4_N16
\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~1_combout\ = (!\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(1) & \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(1),
	datad => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(0),
	combout => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~1_combout\);

-- Location: FF_X38_Y4_N17
\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(1));

-- Location: LCCOMB_X38_Y4_N2
\control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\ $ (((\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(1) & !\control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(1),
	datac => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|DIVISOR_5MHz_inst|counter\(0),
	combout => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0_combout\);

-- Location: FF_X38_Y4_N3
\control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~input_o\,
	d => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\);

-- Location: IOIBUF_X53_Y14_N1
\botao_seletor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_seletor,
	o => \botao_seletor~input_o\);

-- Location: LCCOMB_X31_Y4_N6
\control_inst|estado_atual.RESET_estado~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|estado_atual.RESET_estado~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \control_inst|estado_atual.RESET_estado~feeder_combout\);

-- Location: IOIBUF_X53_Y14_N8
\reset_top~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_top,
	o => \reset_top~input_o\);

-- Location: FF_X31_Y4_N7
\control_inst|estado_atual.RESET_estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	d => \control_inst|estado_atual.RESET_estado~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.RESET_estado~q\);

-- Location: LCCOMB_X31_Y4_N28
\control_inst|proximo_estado.A\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|proximo_estado.A~combout\ = (\control_inst|estado_atual.D~q\) # (!\control_inst|estado_atual.RESET_estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|estado_atual.D~q\,
	datad => \control_inst|estado_atual.RESET_estado~q\,
	combout => \control_inst|proximo_estado.A~combout\);

-- Location: FF_X31_Y4_N29
\control_inst|estado_atual.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	d => \control_inst|proximo_estado.A~combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.A~q\);

-- Location: LCCOMB_X31_Y4_N30
\control_inst|estado_atual.B~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|estado_atual.B~feeder_combout\ = \control_inst|estado_atual.A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|estado_atual.A~q\,
	combout => \control_inst|estado_atual.B~feeder_combout\);

-- Location: FF_X31_Y4_N31
\control_inst|estado_atual.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	d => \control_inst|estado_atual.B~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.B~q\);

-- Location: LCCOMB_X31_Y4_N14
\control_inst|estado_atual.C~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|estado_atual.C~feeder_combout\ = \control_inst|estado_atual.B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|estado_atual.B~q\,
	combout => \control_inst|estado_atual.C~feeder_combout\);

-- Location: FF_X31_Y4_N15
\control_inst|estado_atual.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	d => \control_inst|estado_atual.C~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.C~q\);

-- Location: FF_X31_Y4_N5
\control_inst|estado_atual.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	asdata => \control_inst|estado_atual.C~q\,
	clrn => \ALT_INV_reset_top~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.D~q\);

-- Location: LCCOMB_X31_Y4_N12
\control_inst|saida[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|saida[1]~0_combout\ = (\control_inst|estado_atual.D~q\) # (\control_inst|estado_atual.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|estado_atual.D~q\,
	datad => \control_inst|estado_atual.C~q\,
	combout => \control_inst|saida[1]~0_combout\);

-- Location: LCCOMB_X31_Y4_N20
\control_inst|MUX_inst|clock_saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|clock_saida~1_combout\ = (\control_inst|saida[1]~0_combout\ & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\)) # (!\control_inst|saida[1]~0_combout\ & ((!\control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\,
	datac => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\,
	datad => \control_inst|saida[1]~0_combout\,
	combout => \control_inst|MUX_inst|clock_saida~1_combout\);

-- Location: LCCOMB_X31_Y4_N8
\control_inst|saida[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|saida[0]~1_combout\ = (\control_inst|estado_atual.D~q\) # (\control_inst|estado_atual.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|estado_atual.D~q\,
	datad => \control_inst|estado_atual.B~q\,
	combout => \control_inst|saida[0]~1_combout\);

-- Location: LCCOMB_X32_Y5_N10
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\ = CARRY((\Display_Control_inst|contador\(1) & \Display_Control_inst|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(1),
	datab => \Display_Control_inst|contador\(0),
	datad => VCC,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\);

-- Location: LCCOMB_X32_Y5_N12
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\) # (!\Display_Control_inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(2),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\);

-- Location: LCCOMB_X32_Y5_N14
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\);

-- Location: LCCOMB_X32_Y5_N16
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\);

-- Location: LCCOMB_X32_Y5_N18
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\);

-- Location: LCCOMB_X32_Y5_N20
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~10_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~10_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\);

-- Location: FF_X32_Y5_N21
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6));

-- Location: LCCOMB_X37_Y5_N8
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1_cout\ = CARRY((\Display_Control_inst|contador\(1) & \Display_Control_inst|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(1),
	datab => \Display_Control_inst|contador\(0),
	datad => VCC,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1_cout\);

-- Location: LCCOMB_X37_Y5_N10
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1_cout\) # (!\Display_Control_inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Display_Control_inst|contador\(2),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3_cout\);

-- Location: LCCOMB_X37_Y5_N12
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5_cout\);

-- Location: LCCOMB_X37_Y5_N14
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5_cout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7_cout\);

-- Location: LCCOMB_X37_Y5_N16
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9_cout\);

-- Location: LCCOMB_X37_Y5_N18
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9_cout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11_cout\);

-- Location: LCCOMB_X37_Y5_N20
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11_cout\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11_cout\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11_cout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\);

-- Location: LCCOMB_X37_Y5_N0
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~5_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\ & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~5_combout\);

-- Location: FF_X37_Y5_N1
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7));

-- Location: LCCOMB_X37_Y5_N22
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\);

-- Location: FF_X37_Y5_N23
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8));

-- Location: LCCOMB_X37_Y5_N24
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\);

-- Location: FF_X37_Y5_N25
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9));

-- Location: LCCOMB_X37_Y5_N26
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\);

-- Location: FF_X37_Y5_N27
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10));

-- Location: LCCOMB_X37_Y5_N28
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\);

-- Location: FF_X37_Y5_N29
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11));

-- Location: LCCOMB_X37_Y5_N30
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\);

-- Location: LCCOMB_X37_Y5_N4
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~4_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\ & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~4_combout\);

-- Location: FF_X37_Y5_N5
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12));

-- Location: LCCOMB_X37_Y4_N0
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\);

-- Location: LCCOMB_X38_Y4_N6
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~3_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\ & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~3_combout\);

-- Location: FF_X38_Y4_N7
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13));

-- Location: LCCOMB_X37_Y4_N2
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\);

-- Location: LCCOMB_X38_Y4_N20
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~2_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~2_combout\);

-- Location: FF_X38_Y4_N21
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14));

-- Location: LCCOMB_X37_Y4_N4
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\);

-- Location: LCCOMB_X38_Y4_N26
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~1_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\ & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~1_combout\);

-- Location: FF_X38_Y4_N27
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15));

-- Location: LCCOMB_X37_Y4_N6
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\);

-- Location: FF_X37_Y4_N7
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16));

-- Location: LCCOMB_X37_Y4_N8
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\);

-- Location: LCCOMB_X38_Y4_N14
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~0_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~0_combout\);

-- Location: FF_X38_Y4_N15
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17));

-- Location: LCCOMB_X37_Y4_N10
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\);

-- Location: FF_X37_Y4_N11
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18));

-- Location: LCCOMB_X37_Y4_N12
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\);

-- Location: LCCOMB_X37_Y4_N30
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6_combout\);

-- Location: FF_X37_Y4_N31
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19));

-- Location: LCCOMB_X37_Y4_N14
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\);

-- Location: LCCOMB_X38_Y4_N4
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7_combout\);

-- Location: FF_X38_Y4_N5
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20));

-- Location: LCCOMB_X37_Y4_N16
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\);

-- Location: LCCOMB_X38_Y4_N8
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\ & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8_combout\);

-- Location: FF_X38_Y4_N9
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21));

-- Location: LCCOMB_X37_Y4_N18
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\);

-- Location: LCCOMB_X37_Y4_N28
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9_combout\);

-- Location: FF_X37_Y4_N29
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22));

-- Location: LCCOMB_X38_Y4_N12
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20) & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y4_N20
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\);

-- Location: LCCOMB_X37_Y4_N26
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10_combout\);

-- Location: FF_X37_Y4_N27
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23));

-- Location: LCCOMB_X37_Y4_N22
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\);

-- Location: FF_X37_Y4_N23
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24));

-- Location: LCCOMB_X37_Y4_N24
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\ = \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\ $ (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25),
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\);

-- Location: LCCOMB_X38_Y4_N18
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11_combout\);

-- Location: FF_X38_Y4_N19
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25));

-- Location: LCCOMB_X38_Y4_N30
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\ & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23) & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\);

-- Location: LCCOMB_X37_Y5_N6
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8) & 
-- !\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y5_N2
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12) & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y4_N10
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17) & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y5_N2
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~9_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4) & \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(4),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(3),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~9_combout\);

-- Location: LCCOMB_X35_Y5_N12
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~8_combout\ = (\Display_Control_inst|contador\(1) & (\Display_Control_inst|contador\(0) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5) & \Display_Control_inst|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|contador\(1),
	datab => \Display_Control_inst|contador\(0),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(5),
	datad => \Display_Control_inst|contador\(2),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~8_combout\);

-- Location: LCCOMB_X38_Y4_N24
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\ & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~9_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~9_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~8_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y4_N0
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\ & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\ & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\);

-- Location: LCCOMB_X38_Y4_N22
\control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\ $ (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0_combout\);

-- Location: FF_X38_Y4_N23
\control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~input_o\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\);

-- Location: LCCOMB_X32_Y5_N22
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\);

-- Location: LCCOMB_X32_Y5_N4
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\ & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3_combout\);

-- Location: FF_X32_Y5_N5
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7));

-- Location: LCCOMB_X32_Y5_N24
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~14_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~15\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~14_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~15\);

-- Location: FF_X32_Y5_N25
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8));

-- Location: LCCOMB_X32_Y5_N26
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~15\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~15\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~17\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~15\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~17\);

-- Location: LCCOMB_X32_Y5_N2
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16_combout\ & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2_combout\);

-- Location: FF_X32_Y5_N3
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9));

-- Location: LCCOMB_X32_Y5_N28
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~17\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~17\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~19\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~17\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~17\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~19\);

-- Location: LCCOMB_X32_Y5_N0
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18_combout\ & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1_combout\);

-- Location: FF_X32_Y5_N1
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10));

-- Location: LCCOMB_X32_Y5_N30
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~20_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~19\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~19\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~21\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~19\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~20_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~21\);

-- Location: FF_X32_Y5_N31
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11));

-- Location: LCCOMB_X32_Y4_N0
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~21\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~21\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~21\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~21\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\);

-- Location: LCCOMB_X32_Y4_N28
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\ & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0_combout\);

-- Location: FF_X32_Y4_N29
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12));

-- Location: LCCOMB_X32_Y4_N2
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~24_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~25\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~24_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~25\);

-- Location: FF_X32_Y4_N3
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13));

-- Location: LCCOMB_X31_Y4_N2
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\ = (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11) & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y4_N4
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~26_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~25\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~25\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~25\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~25\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~26_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\);

-- Location: FF_X32_Y4_N5
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14));

-- Location: LCCOMB_X32_Y4_N6
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\);

-- Location: LCCOMB_X32_Y4_N26
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4_combout\ = (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\ & \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4_combout\);

-- Location: FF_X32_Y4_N27
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15));

-- Location: LCCOMB_X32_Y4_N8
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~30_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~31\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~30_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~31\);

-- Location: FF_X32_Y4_N9
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16));

-- Location: LCCOMB_X32_Y4_N10
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~32_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~31\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~31\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~33\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~31\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~32_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~33\);

-- Location: FF_X32_Y4_N11
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17));

-- Location: LCCOMB_X32_Y4_N12
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~34_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~33\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~33\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~33\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~33\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~34_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\);

-- Location: FF_X32_Y4_N13
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18));

-- Location: LCCOMB_X32_Y4_N14
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\);

-- Location: LCCOMB_X32_Y4_N30
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\ & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6_combout\);

-- Location: FF_X32_Y4_N31
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19));

-- Location: LCCOMB_X32_Y4_N16
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~39\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~39\);

-- Location: LCCOMB_X31_Y4_N16
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7_combout\ = (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\ & \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7_combout\);

-- Location: FF_X31_Y4_N17
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20));

-- Location: LCCOMB_X32_Y4_N18
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~40_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~39\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~39\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~41\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~39\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~40_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~41\);

-- Location: FF_X32_Y4_N19
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21));

-- Location: LCCOMB_X32_Y4_N20
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~42_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~41\)) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22) & 
-- ((\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~41\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~43\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~41\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~41\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~42_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~43\);

-- Location: FF_X32_Y4_N21
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22));

-- Location: LCCOMB_X32_Y4_N22
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44_combout\ = \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~43\ $ (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(23),
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~43\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44_combout\);

-- Location: LCCOMB_X32_Y4_N24
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44_combout\ & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5_combout\);

-- Location: FF_X32_Y4_N25
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(23));

-- Location: LCCOMB_X31_Y4_N18
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22) & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y4_N22
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\ = (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16) & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y5_N6
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\ = (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14) & 
-- !\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y4_N10
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(23) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\ & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(23),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y4_N24
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\ & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(6),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y4_N4
\control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\ $ (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\);

-- Location: FF_X31_Y4_N1
\control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	asdata => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\);

-- Location: LCCOMB_X31_Y4_N0
\control_inst|MUX_inst|clock_saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|clock_saida~2_combout\ = (\control_inst|saida[1]~0_combout\ & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\)) # (!\control_inst|saida[1]~0_combout\ & ((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\,
	datad => \control_inst|saida[1]~0_combout\,
	combout => \control_inst|MUX_inst|clock_saida~2_combout\);

-- Location: LCCOMB_X31_Y4_N26
\control_inst|MUX_inst|clock_saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|clock_saida~0_combout\ = LCELL((\control_inst|saida[0]~1_combout\ & ((!\control_inst|MUX_inst|clock_saida~2_combout\))) # (!\control_inst|saida[0]~1_combout\ & (!\control_inst|MUX_inst|clock_saida~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|clock_saida~1_combout\,
	datac => \control_inst|saida[0]~1_combout\,
	datad => \control_inst|MUX_inst|clock_saida~2_combout\,
	combout => \control_inst|MUX_inst|clock_saida~0_combout\);

-- Location: CLKCTRL_G17
\control_inst|MUX_inst|clock_saida~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control_inst|MUX_inst|clock_saida~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y16_N0
\contador_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~0_combout\ = \contador_inst|cont4\(0) $ (VCC)
-- \contador_inst|Add0~1\ = CARRY(\contador_inst|cont4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(0),
	datad => VCC,
	combout => \contador_inst|Add0~0_combout\,
	cout => \contador_inst|Add0~1\);

-- Location: FF_X45_Y16_N1
\contador_inst|cont4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~0_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(0));

-- Location: LCCOMB_X45_Y16_N2
\contador_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~2_combout\ = (\contador_inst|cont4\(1) & (!\contador_inst|Add0~1\)) # (!\contador_inst|cont4\(1) & ((\contador_inst|Add0~1\) # (GND)))
-- \contador_inst|Add0~3\ = CARRY((!\contador_inst|Add0~1\) # (!\contador_inst|cont4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(1),
	datad => VCC,
	cin => \contador_inst|Add0~1\,
	combout => \contador_inst|Add0~2_combout\,
	cout => \contador_inst|Add0~3\);

-- Location: LCCOMB_X45_Y13_N20
\contador_inst|cont4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4~0_combout\ = (\contador_inst|Add0~2_combout\ & !\contador_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|Add0~2_combout\,
	datac => \contador_inst|Equal0~10_combout\,
	combout => \contador_inst|cont4~0_combout\);

-- Location: FF_X45_Y13_N21
\contador_inst|cont4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont4~0_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(1));

-- Location: LCCOMB_X45_Y16_N4
\contador_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~4_combout\ = (\contador_inst|cont4\(2) & (\contador_inst|Add0~3\ $ (GND))) # (!\contador_inst|cont4\(2) & (!\contador_inst|Add0~3\ & VCC))
-- \contador_inst|Add0~5\ = CARRY((\contador_inst|cont4\(2) & !\contador_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(2),
	datad => VCC,
	cin => \contador_inst|Add0~3\,
	combout => \contador_inst|Add0~4_combout\,
	cout => \contador_inst|Add0~5\);

-- Location: FF_X45_Y16_N5
\contador_inst|cont4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~4_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(2));

-- Location: LCCOMB_X45_Y16_N6
\contador_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~6_combout\ = (\contador_inst|cont4\(3) & (!\contador_inst|Add0~5\)) # (!\contador_inst|cont4\(3) & ((\contador_inst|Add0~5\) # (GND)))
-- \contador_inst|Add0~7\ = CARRY((!\contador_inst|Add0~5\) # (!\contador_inst|cont4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(3),
	datad => VCC,
	cin => \contador_inst|Add0~5\,
	combout => \contador_inst|Add0~6_combout\,
	cout => \contador_inst|Add0~7\);

-- Location: LCCOMB_X45_Y16_N8
\contador_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~8_combout\ = (\contador_inst|cont4\(4) & (\contador_inst|Add0~7\ $ (GND))) # (!\contador_inst|cont4\(4) & (!\contador_inst|Add0~7\ & VCC))
-- \contador_inst|Add0~9\ = CARRY((\contador_inst|cont4\(4) & !\contador_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(4),
	datad => VCC,
	cin => \contador_inst|Add0~7\,
	combout => \contador_inst|Add0~8_combout\,
	cout => \contador_inst|Add0~9\);

-- Location: FF_X45_Y16_N9
\contador_inst|cont4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~8_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(4));

-- Location: LCCOMB_X45_Y16_N10
\contador_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~10_combout\ = (\contador_inst|cont4\(5) & (!\contador_inst|Add0~9\)) # (!\contador_inst|cont4\(5) & ((\contador_inst|Add0~9\) # (GND)))
-- \contador_inst|Add0~11\ = CARRY((!\contador_inst|Add0~9\) # (!\contador_inst|cont4\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(5),
	datad => VCC,
	cin => \contador_inst|Add0~9\,
	combout => \contador_inst|Add0~10_combout\,
	cout => \contador_inst|Add0~11\);

-- Location: FF_X45_Y16_N11
\contador_inst|cont4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~10_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(5));

-- Location: LCCOMB_X45_Y16_N12
\contador_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~12_combout\ = (\contador_inst|cont4\(6) & (\contador_inst|Add0~11\ $ (GND))) # (!\contador_inst|cont4\(6) & (!\contador_inst|Add0~11\ & VCC))
-- \contador_inst|Add0~13\ = CARRY((\contador_inst|cont4\(6) & !\contador_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(6),
	datad => VCC,
	cin => \contador_inst|Add0~11\,
	combout => \contador_inst|Add0~12_combout\,
	cout => \contador_inst|Add0~13\);

-- Location: FF_X45_Y16_N13
\contador_inst|cont4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~12_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(6));

-- Location: LCCOMB_X45_Y16_N14
\contador_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~14_combout\ = (\contador_inst|cont4\(7) & (!\contador_inst|Add0~13\)) # (!\contador_inst|cont4\(7) & ((\contador_inst|Add0~13\) # (GND)))
-- \contador_inst|Add0~15\ = CARRY((!\contador_inst|Add0~13\) # (!\contador_inst|cont4\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(7),
	datad => VCC,
	cin => \contador_inst|Add0~13\,
	combout => \contador_inst|Add0~14_combout\,
	cout => \contador_inst|Add0~15\);

-- Location: FF_X45_Y16_N15
\contador_inst|cont4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~14_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(7));

-- Location: LCCOMB_X45_Y16_N16
\contador_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~16_combout\ = (\contador_inst|cont4\(8) & (\contador_inst|Add0~15\ $ (GND))) # (!\contador_inst|cont4\(8) & (!\contador_inst|Add0~15\ & VCC))
-- \contador_inst|Add0~17\ = CARRY((\contador_inst|cont4\(8) & !\contador_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(8),
	datad => VCC,
	cin => \contador_inst|Add0~15\,
	combout => \contador_inst|Add0~16_combout\,
	cout => \contador_inst|Add0~17\);

-- Location: FF_X45_Y16_N17
\contador_inst|cont4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~16_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(8));

-- Location: LCCOMB_X45_Y16_N18
\contador_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~18_combout\ = (\contador_inst|cont4\(9) & (!\contador_inst|Add0~17\)) # (!\contador_inst|cont4\(9) & ((\contador_inst|Add0~17\) # (GND)))
-- \contador_inst|Add0~19\ = CARRY((!\contador_inst|Add0~17\) # (!\contador_inst|cont4\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(9),
	datad => VCC,
	cin => \contador_inst|Add0~17\,
	combout => \contador_inst|Add0~18_combout\,
	cout => \contador_inst|Add0~19\);

-- Location: LCCOMB_X46_Y16_N12
\contador_inst|cont4[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4[9]~feeder_combout\ = \contador_inst|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_inst|Add0~18_combout\,
	combout => \contador_inst|cont4[9]~feeder_combout\);

-- Location: FF_X46_Y16_N13
\contador_inst|cont4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont4[9]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(9));

-- Location: LCCOMB_X45_Y16_N20
\contador_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~20_combout\ = (\contador_inst|cont4\(10) & (\contador_inst|Add0~19\ $ (GND))) # (!\contador_inst|cont4\(10) & (!\contador_inst|Add0~19\ & VCC))
-- \contador_inst|Add0~21\ = CARRY((\contador_inst|cont4\(10) & !\contador_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(10),
	datad => VCC,
	cin => \contador_inst|Add0~19\,
	combout => \contador_inst|Add0~20_combout\,
	cout => \contador_inst|Add0~21\);

-- Location: LCCOMB_X46_Y16_N14
\contador_inst|cont4[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4[10]~feeder_combout\ = \contador_inst|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_inst|Add0~20_combout\,
	combout => \contador_inst|cont4[10]~feeder_combout\);

-- Location: FF_X46_Y16_N15
\contador_inst|cont4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont4[10]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(10));

-- Location: LCCOMB_X45_Y16_N22
\contador_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~22_combout\ = (\contador_inst|cont4\(11) & (!\contador_inst|Add0~21\)) # (!\contador_inst|cont4\(11) & ((\contador_inst|Add0~21\) # (GND)))
-- \contador_inst|Add0~23\ = CARRY((!\contador_inst|Add0~21\) # (!\contador_inst|cont4\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(11),
	datad => VCC,
	cin => \contador_inst|Add0~21\,
	combout => \contador_inst|Add0~22_combout\,
	cout => \contador_inst|Add0~23\);

-- Location: LCCOMB_X46_Y16_N26
\contador_inst|cont4[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4[11]~feeder_combout\ = \contador_inst|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_inst|Add0~22_combout\,
	combout => \contador_inst|cont4[11]~feeder_combout\);

-- Location: FF_X46_Y16_N27
\contador_inst|cont4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont4[11]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(11));

-- Location: LCCOMB_X45_Y16_N24
\contador_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~24_combout\ = (\contador_inst|cont4\(12) & (\contador_inst|Add0~23\ $ (GND))) # (!\contador_inst|cont4\(12) & (!\contador_inst|Add0~23\ & VCC))
-- \contador_inst|Add0~25\ = CARRY((\contador_inst|cont4\(12) & !\contador_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(12),
	datad => VCC,
	cin => \contador_inst|Add0~23\,
	combout => \contador_inst|Add0~24_combout\,
	cout => \contador_inst|Add0~25\);

-- Location: FF_X45_Y16_N25
\contador_inst|cont4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~24_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(12));

-- Location: LCCOMB_X45_Y16_N26
\contador_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~26_combout\ = (\contador_inst|cont4\(13) & (!\contador_inst|Add0~25\)) # (!\contador_inst|cont4\(13) & ((\contador_inst|Add0~25\) # (GND)))
-- \contador_inst|Add0~27\ = CARRY((!\contador_inst|Add0~25\) # (!\contador_inst|cont4\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(13),
	datad => VCC,
	cin => \contador_inst|Add0~25\,
	combout => \contador_inst|Add0~26_combout\,
	cout => \contador_inst|Add0~27\);

-- Location: FF_X45_Y16_N27
\contador_inst|cont4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~26_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(13));

-- Location: LCCOMB_X45_Y16_N28
\contador_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~28_combout\ = (\contador_inst|cont4\(14) & (\contador_inst|Add0~27\ $ (GND))) # (!\contador_inst|cont4\(14) & (!\contador_inst|Add0~27\ & VCC))
-- \contador_inst|Add0~29\ = CARRY((\contador_inst|cont4\(14) & !\contador_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(14),
	datad => VCC,
	cin => \contador_inst|Add0~27\,
	combout => \contador_inst|Add0~28_combout\,
	cout => \contador_inst|Add0~29\);

-- Location: LCCOMB_X46_Y16_N8
\contador_inst|cont4[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4[14]~feeder_combout\ = \contador_inst|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_inst|Add0~28_combout\,
	combout => \contador_inst|cont4[14]~feeder_combout\);

-- Location: FF_X46_Y16_N9
\contador_inst|cont4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont4[14]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(14));

-- Location: LCCOMB_X45_Y16_N30
\contador_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~30_combout\ = (\contador_inst|cont4\(15) & (!\contador_inst|Add0~29\)) # (!\contador_inst|cont4\(15) & ((\contador_inst|Add0~29\) # (GND)))
-- \contador_inst|Add0~31\ = CARRY((!\contador_inst|Add0~29\) # (!\contador_inst|cont4\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(15),
	datad => VCC,
	cin => \contador_inst|Add0~29\,
	combout => \contador_inst|Add0~30_combout\,
	cout => \contador_inst|Add0~31\);

-- Location: LCCOMB_X44_Y15_N24
\contador_inst|cont4[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4[15]~feeder_combout\ = \contador_inst|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Add0~30_combout\,
	combout => \contador_inst|cont4[15]~feeder_combout\);

-- Location: FF_X44_Y15_N25
\contador_inst|cont4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont4[15]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(15));

-- Location: LCCOMB_X45_Y15_N0
\contador_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~32_combout\ = (\contador_inst|cont4\(16) & (\contador_inst|Add0~31\ $ (GND))) # (!\contador_inst|cont4\(16) & (!\contador_inst|Add0~31\ & VCC))
-- \contador_inst|Add0~33\ = CARRY((\contador_inst|cont4\(16) & !\contador_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(16),
	datad => VCC,
	cin => \contador_inst|Add0~31\,
	combout => \contador_inst|Add0~32_combout\,
	cout => \contador_inst|Add0~33\);

-- Location: FF_X45_Y15_N1
\contador_inst|cont4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~32_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(16));

-- Location: LCCOMB_X45_Y15_N2
\contador_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~34_combout\ = (\contador_inst|cont4\(17) & (!\contador_inst|Add0~33\)) # (!\contador_inst|cont4\(17) & ((\contador_inst|Add0~33\) # (GND)))
-- \contador_inst|Add0~35\ = CARRY((!\contador_inst|Add0~33\) # (!\contador_inst|cont4\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(17),
	datad => VCC,
	cin => \contador_inst|Add0~33\,
	combout => \contador_inst|Add0~34_combout\,
	cout => \contador_inst|Add0~35\);

-- Location: FF_X45_Y15_N3
\contador_inst|cont4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~34_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(17));

-- Location: LCCOMB_X45_Y15_N4
\contador_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~36_combout\ = (\contador_inst|cont4\(18) & (\contador_inst|Add0~35\ $ (GND))) # (!\contador_inst|cont4\(18) & (!\contador_inst|Add0~35\ & VCC))
-- \contador_inst|Add0~37\ = CARRY((\contador_inst|cont4\(18) & !\contador_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(18),
	datad => VCC,
	cin => \contador_inst|Add0~35\,
	combout => \contador_inst|Add0~36_combout\,
	cout => \contador_inst|Add0~37\);

-- Location: FF_X45_Y15_N5
\contador_inst|cont4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~36_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(18));

-- Location: LCCOMB_X45_Y15_N6
\contador_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~38_combout\ = (\contador_inst|cont4\(19) & (!\contador_inst|Add0~37\)) # (!\contador_inst|cont4\(19) & ((\contador_inst|Add0~37\) # (GND)))
-- \contador_inst|Add0~39\ = CARRY((!\contador_inst|Add0~37\) # (!\contador_inst|cont4\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(19),
	datad => VCC,
	cin => \contador_inst|Add0~37\,
	combout => \contador_inst|Add0~38_combout\,
	cout => \contador_inst|Add0~39\);

-- Location: FF_X45_Y15_N7
\contador_inst|cont4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~38_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(19));

-- Location: LCCOMB_X45_Y15_N8
\contador_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~40_combout\ = (\contador_inst|cont4\(20) & (\contador_inst|Add0~39\ $ (GND))) # (!\contador_inst|cont4\(20) & (!\contador_inst|Add0~39\ & VCC))
-- \contador_inst|Add0~41\ = CARRY((\contador_inst|cont4\(20) & !\contador_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(20),
	datad => VCC,
	cin => \contador_inst|Add0~39\,
	combout => \contador_inst|Add0~40_combout\,
	cout => \contador_inst|Add0~41\);

-- Location: FF_X45_Y15_N9
\contador_inst|cont4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~40_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(20));

-- Location: LCCOMB_X45_Y15_N10
\contador_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~42_combout\ = (\contador_inst|cont4\(21) & (!\contador_inst|Add0~41\)) # (!\contador_inst|cont4\(21) & ((\contador_inst|Add0~41\) # (GND)))
-- \contador_inst|Add0~43\ = CARRY((!\contador_inst|Add0~41\) # (!\contador_inst|cont4\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(21),
	datad => VCC,
	cin => \contador_inst|Add0~41\,
	combout => \contador_inst|Add0~42_combout\,
	cout => \contador_inst|Add0~43\);

-- Location: FF_X45_Y15_N11
\contador_inst|cont4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~42_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(21));

-- Location: LCCOMB_X45_Y15_N12
\contador_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~44_combout\ = (\contador_inst|cont4\(22) & (\contador_inst|Add0~43\ $ (GND))) # (!\contador_inst|cont4\(22) & (!\contador_inst|Add0~43\ & VCC))
-- \contador_inst|Add0~45\ = CARRY((\contador_inst|cont4\(22) & !\contador_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(22),
	datad => VCC,
	cin => \contador_inst|Add0~43\,
	combout => \contador_inst|Add0~44_combout\,
	cout => \contador_inst|Add0~45\);

-- Location: FF_X45_Y15_N13
\contador_inst|cont4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~44_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(22));

-- Location: LCCOMB_X44_Y15_N14
\contador_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~4_combout\ = (!\contador_inst|cont4\(19) & (!\contador_inst|cont4\(20) & (!\contador_inst|cont4\(21) & !\contador_inst|cont4\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(19),
	datab => \contador_inst|cont4\(20),
	datac => \contador_inst|cont4\(21),
	datad => \contador_inst|cont4\(22),
	combout => \contador_inst|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y15_N14
\contador_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~46_combout\ = (\contador_inst|cont4\(23) & (!\contador_inst|Add0~45\)) # (!\contador_inst|cont4\(23) & ((\contador_inst|Add0~45\) # (GND)))
-- \contador_inst|Add0~47\ = CARRY((!\contador_inst|Add0~45\) # (!\contador_inst|cont4\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(23),
	datad => VCC,
	cin => \contador_inst|Add0~45\,
	combout => \contador_inst|Add0~46_combout\,
	cout => \contador_inst|Add0~47\);

-- Location: FF_X45_Y15_N15
\contador_inst|cont4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~46_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(23));

-- Location: LCCOMB_X45_Y15_N16
\contador_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~48_combout\ = (\contador_inst|cont4\(24) & (\contador_inst|Add0~47\ $ (GND))) # (!\contador_inst|cont4\(24) & (!\contador_inst|Add0~47\ & VCC))
-- \contador_inst|Add0~49\ = CARRY((\contador_inst|cont4\(24) & !\contador_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(24),
	datad => VCC,
	cin => \contador_inst|Add0~47\,
	combout => \contador_inst|Add0~48_combout\,
	cout => \contador_inst|Add0~49\);

-- Location: FF_X45_Y15_N17
\contador_inst|cont4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~48_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(24));

-- Location: LCCOMB_X45_Y15_N18
\contador_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~50_combout\ = (\contador_inst|cont4\(25) & (!\contador_inst|Add0~49\)) # (!\contador_inst|cont4\(25) & ((\contador_inst|Add0~49\) # (GND)))
-- \contador_inst|Add0~51\ = CARRY((!\contador_inst|Add0~49\) # (!\contador_inst|cont4\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(25),
	datad => VCC,
	cin => \contador_inst|Add0~49\,
	combout => \contador_inst|Add0~50_combout\,
	cout => \contador_inst|Add0~51\);

-- Location: FF_X45_Y15_N19
\contador_inst|cont4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~50_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(25));

-- Location: LCCOMB_X45_Y15_N20
\contador_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~52_combout\ = (\contador_inst|cont4\(26) & (\contador_inst|Add0~51\ $ (GND))) # (!\contador_inst|cont4\(26) & (!\contador_inst|Add0~51\ & VCC))
-- \contador_inst|Add0~53\ = CARRY((\contador_inst|cont4\(26) & !\contador_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(26),
	datad => VCC,
	cin => \contador_inst|Add0~51\,
	combout => \contador_inst|Add0~52_combout\,
	cout => \contador_inst|Add0~53\);

-- Location: FF_X45_Y15_N21
\contador_inst|cont4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~52_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(26));

-- Location: LCCOMB_X45_Y15_N22
\contador_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~54_combout\ = (\contador_inst|cont4\(27) & (!\contador_inst|Add0~53\)) # (!\contador_inst|cont4\(27) & ((\contador_inst|Add0~53\) # (GND)))
-- \contador_inst|Add0~55\ = CARRY((!\contador_inst|Add0~53\) # (!\contador_inst|cont4\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(27),
	datad => VCC,
	cin => \contador_inst|Add0~53\,
	combout => \contador_inst|Add0~54_combout\,
	cout => \contador_inst|Add0~55\);

-- Location: FF_X45_Y15_N23
\contador_inst|cont4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~54_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(27));

-- Location: LCCOMB_X45_Y15_N24
\contador_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~56_combout\ = (\contador_inst|cont4\(28) & (\contador_inst|Add0~55\ $ (GND))) # (!\contador_inst|cont4\(28) & (!\contador_inst|Add0~55\ & VCC))
-- \contador_inst|Add0~57\ = CARRY((\contador_inst|cont4\(28) & !\contador_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(28),
	datad => VCC,
	cin => \contador_inst|Add0~55\,
	combout => \contador_inst|Add0~56_combout\,
	cout => \contador_inst|Add0~57\);

-- Location: FF_X45_Y15_N25
\contador_inst|cont4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~56_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(28));

-- Location: LCCOMB_X45_Y15_N26
\contador_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~58_combout\ = (\contador_inst|cont4\(29) & (!\contador_inst|Add0~57\)) # (!\contador_inst|cont4\(29) & ((\contador_inst|Add0~57\) # (GND)))
-- \contador_inst|Add0~59\ = CARRY((!\contador_inst|Add0~57\) # (!\contador_inst|cont4\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(29),
	datad => VCC,
	cin => \contador_inst|Add0~57\,
	combout => \contador_inst|Add0~58_combout\,
	cout => \contador_inst|Add0~59\);

-- Location: FF_X45_Y15_N27
\contador_inst|cont4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~58_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(29));

-- Location: LCCOMB_X45_Y15_N28
\contador_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~60_combout\ = (\contador_inst|cont4\(30) & (\contador_inst|Add0~59\ $ (GND))) # (!\contador_inst|cont4\(30) & (!\contador_inst|Add0~59\ & VCC))
-- \contador_inst|Add0~61\ = CARRY((\contador_inst|cont4\(30) & !\contador_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(30),
	datad => VCC,
	cin => \contador_inst|Add0~59\,
	combout => \contador_inst|Add0~60_combout\,
	cout => \contador_inst|Add0~61\);

-- Location: FF_X45_Y15_N29
\contador_inst|cont4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~60_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(30));

-- Location: LCCOMB_X45_Y15_N30
\contador_inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~62_combout\ = \contador_inst|cont4\(31) $ (\contador_inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(31),
	cin => \contador_inst|Add0~61\,
	combout => \contador_inst|Add0~62_combout\);

-- Location: FF_X45_Y15_N31
\contador_inst|cont4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add0~62_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(31));

-- Location: LCCOMB_X45_Y13_N4
\contador_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~0_combout\ = (\contador_inst|cont4\(0) & (!\contador_inst|cont4\(1) & (!\contador_inst|cont4\(2) & !\contador_inst|cont4\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(1),
	datac => \contador_inst|cont4\(2),
	datad => \contador_inst|cont4\(31),
	combout => \contador_inst|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y13_N6
\contador_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~1_combout\ = (!\contador_inst|cont4\(30) & (!\contador_inst|cont4\(28) & (!\contador_inst|cont4\(27) & !\contador_inst|cont4\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(30),
	datab => \contador_inst|cont4\(28),
	datac => \contador_inst|cont4\(27),
	datad => \contador_inst|cont4\(29),
	combout => \contador_inst|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y13_N28
\contador_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~2_combout\ = (\contador_inst|Equal0~0_combout\ & \contador_inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Equal0~0_combout\,
	datad => \contador_inst|Equal0~1_combout\,
	combout => \contador_inst|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y15_N8
\contador_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~3_combout\ = (!\contador_inst|cont4\(26) & (!\contador_inst|cont4\(25) & (!\contador_inst|cont4\(23) & !\contador_inst|cont4\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(26),
	datab => \contador_inst|cont4\(25),
	datac => \contador_inst|cont4\(23),
	datad => \contador_inst|cont4\(24),
	combout => \contador_inst|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y15_N10
\contador_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~5_combout\ = (!\contador_inst|cont4\(17) & (!\contador_inst|cont4\(15) & (!\contador_inst|cont4\(16) & !\contador_inst|cont4\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(17),
	datab => \contador_inst|cont4\(15),
	datac => \contador_inst|cont4\(16),
	datad => \contador_inst|cont4\(18),
	combout => \contador_inst|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y13_N18
\contador_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~8_combout\ = (\contador_inst|cont4\(3) & (!\contador_inst|cont4\(4) & (!\contador_inst|cont4\(6) & !\contador_inst|cont4\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(3),
	datab => \contador_inst|cont4\(4),
	datac => \contador_inst|cont4\(6),
	datad => \contador_inst|cont4\(5),
	combout => \contador_inst|Equal0~8_combout\);

-- Location: LCCOMB_X46_Y16_N10
\contador_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~7_combout\ = (!\contador_inst|cont4\(9) & (!\contador_inst|cont4\(10) & (!\contador_inst|cont4\(8) & !\contador_inst|cont4\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(9),
	datab => \contador_inst|cont4\(10),
	datac => \contador_inst|cont4\(8),
	datad => \contador_inst|cont4\(7),
	combout => \contador_inst|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y16_N28
\contador_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~6_combout\ = (!\contador_inst|cont4\(11) & (!\contador_inst|cont4\(14) & (!\contador_inst|cont4\(13) & !\contador_inst|cont4\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(11),
	datab => \contador_inst|cont4\(14),
	datac => \contador_inst|cont4\(13),
	datad => \contador_inst|cont4\(12),
	combout => \contador_inst|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y13_N24
\contador_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~9_combout\ = (\contador_inst|Equal0~5_combout\ & (\contador_inst|Equal0~8_combout\ & (\contador_inst|Equal0~7_combout\ & \contador_inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal0~5_combout\,
	datab => \contador_inst|Equal0~8_combout\,
	datac => \contador_inst|Equal0~7_combout\,
	datad => \contador_inst|Equal0~6_combout\,
	combout => \contador_inst|Equal0~9_combout\);

-- Location: LCCOMB_X45_Y13_N22
\contador_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~10_combout\ = (\contador_inst|Equal0~4_combout\ & (\contador_inst|Equal0~2_combout\ & (\contador_inst|Equal0~3_combout\ & \contador_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal0~4_combout\,
	datab => \contador_inst|Equal0~2_combout\,
	datac => \contador_inst|Equal0~3_combout\,
	datad => \contador_inst|Equal0~9_combout\,
	combout => \contador_inst|Equal0~10_combout\);

-- Location: LCCOMB_X45_Y13_N30
\contador_inst|cont4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4~1_combout\ = (!\contador_inst|Equal0~10_combout\ & \contador_inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Equal0~10_combout\,
	datad => \contador_inst|Add0~6_combout\,
	combout => \contador_inst|cont4~1_combout\);

-- Location: FF_X45_Y13_N31
\contador_inst|cont4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont4~1_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(3));

-- Location: LCCOMB_X46_Y10_N6
\BCD_inst_D|inter_saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_D|inter_saida[0]~0_combout\ = (\contador_inst|cont4\(1) & (!\contador_inst|cont4\(3) & ((!\contador_inst|cont4\(2)) # (!\contador_inst|cont4\(0))))) # (!\contador_inst|cont4\(1) & ((\contador_inst|cont4\(3) $ (\contador_inst|cont4\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(3),
	datac => \contador_inst|cont4\(1),
	datad => \contador_inst|cont4\(2),
	combout => \BCD_inst_D|inter_saida[0]~0_combout\);

-- Location: LCCOMB_X45_Y10_N0
\contador_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~0_combout\ = \contador_inst|cont3\(0) $ (VCC)
-- \contador_inst|Add1~1\ = CARRY(\contador_inst|cont3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(0),
	datad => VCC,
	combout => \contador_inst|Add1~0_combout\,
	cout => \contador_inst|Add1~1\);

-- Location: FF_X45_Y10_N1
\contador_inst|cont3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~0_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(0));

-- Location: LCCOMB_X45_Y10_N2
\contador_inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~2_combout\ = (\contador_inst|cont3\(1) & (!\contador_inst|Add1~1\)) # (!\contador_inst|cont3\(1) & ((\contador_inst|Add1~1\) # (GND)))
-- \contador_inst|Add1~3\ = CARRY((!\contador_inst|Add1~1\) # (!\contador_inst|cont3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(1),
	datad => VCC,
	cin => \contador_inst|Add1~1\,
	combout => \contador_inst|Add1~2_combout\,
	cout => \contador_inst|Add1~3\);

-- Location: LCCOMB_X45_Y10_N6
\contador_inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~6_combout\ = (\contador_inst|cont3\(3) & (!\contador_inst|Add1~5\)) # (!\contador_inst|cont3\(3) & ((\contador_inst|Add1~5\) # (GND)))
-- \contador_inst|Add1~7\ = CARRY((!\contador_inst|Add1~5\) # (!\contador_inst|cont3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(3),
	datad => VCC,
	cin => \contador_inst|Add1~5\,
	combout => \contador_inst|Add1~6_combout\,
	cout => \contador_inst|Add1~7\);

-- Location: LCCOMB_X45_Y10_N8
\contador_inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~8_combout\ = (\contador_inst|cont3\(4) & (\contador_inst|Add1~7\ $ (GND))) # (!\contador_inst|cont3\(4) & (!\contador_inst|Add1~7\ & VCC))
-- \contador_inst|Add1~9\ = CARRY((\contador_inst|cont3\(4) & !\contador_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(4),
	datad => VCC,
	cin => \contador_inst|Add1~7\,
	combout => \contador_inst|Add1~8_combout\,
	cout => \contador_inst|Add1~9\);

-- Location: FF_X45_Y10_N9
\contador_inst|cont3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~8_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(4));

-- Location: LCCOMB_X45_Y10_N10
\contador_inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~10_combout\ = (\contador_inst|cont3\(5) & (!\contador_inst|Add1~9\)) # (!\contador_inst|cont3\(5) & ((\contador_inst|Add1~9\) # (GND)))
-- \contador_inst|Add1~11\ = CARRY((!\contador_inst|Add1~9\) # (!\contador_inst|cont3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(5),
	datad => VCC,
	cin => \contador_inst|Add1~9\,
	combout => \contador_inst|Add1~10_combout\,
	cout => \contador_inst|Add1~11\);

-- Location: FF_X45_Y10_N11
\contador_inst|cont3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~10_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(5));

-- Location: LCCOMB_X45_Y10_N12
\contador_inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~12_combout\ = (\contador_inst|cont3\(6) & (\contador_inst|Add1~11\ $ (GND))) # (!\contador_inst|cont3\(6) & (!\contador_inst|Add1~11\ & VCC))
-- \contador_inst|Add1~13\ = CARRY((\contador_inst|cont3\(6) & !\contador_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(6),
	datad => VCC,
	cin => \contador_inst|Add1~11\,
	combout => \contador_inst|Add1~12_combout\,
	cout => \contador_inst|Add1~13\);

-- Location: FF_X45_Y10_N13
\contador_inst|cont3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~12_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(6));

-- Location: LCCOMB_X45_Y10_N14
\contador_inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~14_combout\ = (\contador_inst|cont3\(7) & (!\contador_inst|Add1~13\)) # (!\contador_inst|cont3\(7) & ((\contador_inst|Add1~13\) # (GND)))
-- \contador_inst|Add1~15\ = CARRY((!\contador_inst|Add1~13\) # (!\contador_inst|cont3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(7),
	datad => VCC,
	cin => \contador_inst|Add1~13\,
	combout => \contador_inst|Add1~14_combout\,
	cout => \contador_inst|Add1~15\);

-- Location: FF_X45_Y10_N15
\contador_inst|cont3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~14_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(7));

-- Location: LCCOMB_X45_Y10_N16
\contador_inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~16_combout\ = (\contador_inst|cont3\(8) & (\contador_inst|Add1~15\ $ (GND))) # (!\contador_inst|cont3\(8) & (!\contador_inst|Add1~15\ & VCC))
-- \contador_inst|Add1~17\ = CARRY((\contador_inst|cont3\(8) & !\contador_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(8),
	datad => VCC,
	cin => \contador_inst|Add1~15\,
	combout => \contador_inst|Add1~16_combout\,
	cout => \contador_inst|Add1~17\);

-- Location: FF_X45_Y10_N17
\contador_inst|cont3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~16_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(8));

-- Location: LCCOMB_X45_Y10_N18
\contador_inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~18_combout\ = (\contador_inst|cont3\(9) & (!\contador_inst|Add1~17\)) # (!\contador_inst|cont3\(9) & ((\contador_inst|Add1~17\) # (GND)))
-- \contador_inst|Add1~19\ = CARRY((!\contador_inst|Add1~17\) # (!\contador_inst|cont3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(9),
	datad => VCC,
	cin => \contador_inst|Add1~17\,
	combout => \contador_inst|Add1~18_combout\,
	cout => \contador_inst|Add1~19\);

-- Location: FF_X45_Y10_N19
\contador_inst|cont3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~18_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(9));

-- Location: LCCOMB_X45_Y10_N20
\contador_inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~20_combout\ = (\contador_inst|cont3\(10) & (\contador_inst|Add1~19\ $ (GND))) # (!\contador_inst|cont3\(10) & (!\contador_inst|Add1~19\ & VCC))
-- \contador_inst|Add1~21\ = CARRY((\contador_inst|cont3\(10) & !\contador_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(10),
	datad => VCC,
	cin => \contador_inst|Add1~19\,
	combout => \contador_inst|Add1~20_combout\,
	cout => \contador_inst|Add1~21\);

-- Location: FF_X45_Y10_N21
\contador_inst|cont3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~20_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(10));

-- Location: LCCOMB_X44_Y10_N26
\contador_inst|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~8_combout\ = (!\contador_inst|cont3\(10) & (!\contador_inst|cont3\(8) & (!\contador_inst|cont3\(7) & !\contador_inst|cont3\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(10),
	datab => \contador_inst|cont3\(8),
	datac => \contador_inst|cont3\(7),
	datad => \contador_inst|cont3\(9),
	combout => \contador_inst|Equal1~8_combout\);

-- Location: LCCOMB_X46_Y10_N12
\contador_inst|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~9_combout\ = (!\contador_inst|cont3\(5) & (!\contador_inst|cont3\(4) & (\contador_inst|cont3\(0) & !\contador_inst|cont3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(5),
	datab => \contador_inst|cont3\(4),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(6),
	combout => \contador_inst|Equal1~9_combout\);

-- Location: LCCOMB_X45_Y10_N22
\contador_inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~22_combout\ = (\contador_inst|cont3\(11) & (!\contador_inst|Add1~21\)) # (!\contador_inst|cont3\(11) & ((\contador_inst|Add1~21\) # (GND)))
-- \contador_inst|Add1~23\ = CARRY((!\contador_inst|Add1~21\) # (!\contador_inst|cont3\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(11),
	datad => VCC,
	cin => \contador_inst|Add1~21\,
	combout => \contador_inst|Add1~22_combout\,
	cout => \contador_inst|Add1~23\);

-- Location: FF_X45_Y10_N23
\contador_inst|cont3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~22_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(11));

-- Location: LCCOMB_X45_Y10_N24
\contador_inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~24_combout\ = (\contador_inst|cont3\(12) & (\contador_inst|Add1~23\ $ (GND))) # (!\contador_inst|cont3\(12) & (!\contador_inst|Add1~23\ & VCC))
-- \contador_inst|Add1~25\ = CARRY((\contador_inst|cont3\(12) & !\contador_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(12),
	datad => VCC,
	cin => \contador_inst|Add1~23\,
	combout => \contador_inst|Add1~24_combout\,
	cout => \contador_inst|Add1~25\);

-- Location: FF_X45_Y10_N25
\contador_inst|cont3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~24_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(12));

-- Location: LCCOMB_X45_Y10_N26
\contador_inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~26_combout\ = (\contador_inst|cont3\(13) & (!\contador_inst|Add1~25\)) # (!\contador_inst|cont3\(13) & ((\contador_inst|Add1~25\) # (GND)))
-- \contador_inst|Add1~27\ = CARRY((!\contador_inst|Add1~25\) # (!\contador_inst|cont3\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(13),
	datad => VCC,
	cin => \contador_inst|Add1~25\,
	combout => \contador_inst|Add1~26_combout\,
	cout => \contador_inst|Add1~27\);

-- Location: FF_X45_Y10_N27
\contador_inst|cont3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~26_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(13));

-- Location: LCCOMB_X45_Y10_N28
\contador_inst|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~28_combout\ = (\contador_inst|cont3\(14) & (\contador_inst|Add1~27\ $ (GND))) # (!\contador_inst|cont3\(14) & (!\contador_inst|Add1~27\ & VCC))
-- \contador_inst|Add1~29\ = CARRY((\contador_inst|cont3\(14) & !\contador_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(14),
	datad => VCC,
	cin => \contador_inst|Add1~27\,
	combout => \contador_inst|Add1~28_combout\,
	cout => \contador_inst|Add1~29\);

-- Location: FF_X45_Y10_N29
\contador_inst|cont3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~28_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(14));

-- Location: LCCOMB_X45_Y10_N30
\contador_inst|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~30_combout\ = (\contador_inst|cont3\(15) & (!\contador_inst|Add1~29\)) # (!\contador_inst|cont3\(15) & ((\contador_inst|Add1~29\) # (GND)))
-- \contador_inst|Add1~31\ = CARRY((!\contador_inst|Add1~29\) # (!\contador_inst|cont3\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(15),
	datad => VCC,
	cin => \contador_inst|Add1~29\,
	combout => \contador_inst|Add1~30_combout\,
	cout => \contador_inst|Add1~31\);

-- Location: FF_X45_Y10_N31
\contador_inst|cont3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~30_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(15));

-- Location: LCCOMB_X45_Y9_N0
\contador_inst|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~32_combout\ = (\contador_inst|cont3\(16) & (\contador_inst|Add1~31\ $ (GND))) # (!\contador_inst|cont3\(16) & (!\contador_inst|Add1~31\ & VCC))
-- \contador_inst|Add1~33\ = CARRY((\contador_inst|cont3\(16) & !\contador_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(16),
	datad => VCC,
	cin => \contador_inst|Add1~31\,
	combout => \contador_inst|Add1~32_combout\,
	cout => \contador_inst|Add1~33\);

-- Location: FF_X45_Y9_N1
\contador_inst|cont3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~32_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(16));

-- Location: LCCOMB_X45_Y9_N2
\contador_inst|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~34_combout\ = (\contador_inst|cont3\(17) & (!\contador_inst|Add1~33\)) # (!\contador_inst|cont3\(17) & ((\contador_inst|Add1~33\) # (GND)))
-- \contador_inst|Add1~35\ = CARRY((!\contador_inst|Add1~33\) # (!\contador_inst|cont3\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(17),
	datad => VCC,
	cin => \contador_inst|Add1~33\,
	combout => \contador_inst|Add1~34_combout\,
	cout => \contador_inst|Add1~35\);

-- Location: FF_X45_Y9_N3
\contador_inst|cont3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~34_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(17));

-- Location: LCCOMB_X45_Y9_N4
\contador_inst|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~36_combout\ = (\contador_inst|cont3\(18) & (\contador_inst|Add1~35\ $ (GND))) # (!\contador_inst|cont3\(18) & (!\contador_inst|Add1~35\ & VCC))
-- \contador_inst|Add1~37\ = CARRY((\contador_inst|cont3\(18) & !\contador_inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(18),
	datad => VCC,
	cin => \contador_inst|Add1~35\,
	combout => \contador_inst|Add1~36_combout\,
	cout => \contador_inst|Add1~37\);

-- Location: FF_X45_Y9_N5
\contador_inst|cont3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~36_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(18));

-- Location: LCCOMB_X45_Y9_N6
\contador_inst|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~38_combout\ = (\contador_inst|cont3\(19) & (!\contador_inst|Add1~37\)) # (!\contador_inst|cont3\(19) & ((\contador_inst|Add1~37\) # (GND)))
-- \contador_inst|Add1~39\ = CARRY((!\contador_inst|Add1~37\) # (!\contador_inst|cont3\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(19),
	datad => VCC,
	cin => \contador_inst|Add1~37\,
	combout => \contador_inst|Add1~38_combout\,
	cout => \contador_inst|Add1~39\);

-- Location: FF_X45_Y9_N7
\contador_inst|cont3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~38_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(19));

-- Location: LCCOMB_X45_Y9_N8
\contador_inst|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~40_combout\ = (\contador_inst|cont3\(20) & (\contador_inst|Add1~39\ $ (GND))) # (!\contador_inst|cont3\(20) & (!\contador_inst|Add1~39\ & VCC))
-- \contador_inst|Add1~41\ = CARRY((\contador_inst|cont3\(20) & !\contador_inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(20),
	datad => VCC,
	cin => \contador_inst|Add1~39\,
	combout => \contador_inst|Add1~40_combout\,
	cout => \contador_inst|Add1~41\);

-- Location: LCCOMB_X46_Y9_N4
\contador_inst|cont3[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont3[20]~feeder_combout\ = \contador_inst|Add1~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_inst|Add1~40_combout\,
	combout => \contador_inst|cont3[20]~feeder_combout\);

-- Location: FF_X46_Y9_N5
\contador_inst|cont3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont3[20]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(20));

-- Location: LCCOMB_X45_Y9_N10
\contador_inst|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~42_combout\ = (\contador_inst|cont3\(21) & (!\contador_inst|Add1~41\)) # (!\contador_inst|cont3\(21) & ((\contador_inst|Add1~41\) # (GND)))
-- \contador_inst|Add1~43\ = CARRY((!\contador_inst|Add1~41\) # (!\contador_inst|cont3\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(21),
	datad => VCC,
	cin => \contador_inst|Add1~41\,
	combout => \contador_inst|Add1~42_combout\,
	cout => \contador_inst|Add1~43\);

-- Location: FF_X45_Y9_N11
\contador_inst|cont3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~42_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(21));

-- Location: LCCOMB_X45_Y9_N12
\contador_inst|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~44_combout\ = (\contador_inst|cont3\(22) & (\contador_inst|Add1~43\ $ (GND))) # (!\contador_inst|cont3\(22) & (!\contador_inst|Add1~43\ & VCC))
-- \contador_inst|Add1~45\ = CARRY((\contador_inst|cont3\(22) & !\contador_inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(22),
	datad => VCC,
	cin => \contador_inst|Add1~43\,
	combout => \contador_inst|Add1~44_combout\,
	cout => \contador_inst|Add1~45\);

-- Location: FF_X45_Y9_N13
\contador_inst|cont3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~44_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(22));

-- Location: LCCOMB_X45_Y9_N14
\contador_inst|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~46_combout\ = (\contador_inst|cont3\(23) & (!\contador_inst|Add1~45\)) # (!\contador_inst|cont3\(23) & ((\contador_inst|Add1~45\) # (GND)))
-- \contador_inst|Add1~47\ = CARRY((!\contador_inst|Add1~45\) # (!\contador_inst|cont3\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(23),
	datad => VCC,
	cin => \contador_inst|Add1~45\,
	combout => \contador_inst|Add1~46_combout\,
	cout => \contador_inst|Add1~47\);

-- Location: FF_X45_Y9_N15
\contador_inst|cont3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~46_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(23));

-- Location: LCCOMB_X45_Y9_N16
\contador_inst|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~48_combout\ = (\contador_inst|cont3\(24) & (\contador_inst|Add1~47\ $ (GND))) # (!\contador_inst|cont3\(24) & (!\contador_inst|Add1~47\ & VCC))
-- \contador_inst|Add1~49\ = CARRY((\contador_inst|cont3\(24) & !\contador_inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(24),
	datad => VCC,
	cin => \contador_inst|Add1~47\,
	combout => \contador_inst|Add1~48_combout\,
	cout => \contador_inst|Add1~49\);

-- Location: FF_X45_Y9_N17
\contador_inst|cont3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~48_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(24));

-- Location: LCCOMB_X45_Y9_N18
\contador_inst|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~50_combout\ = (\contador_inst|cont3\(25) & (!\contador_inst|Add1~49\)) # (!\contador_inst|cont3\(25) & ((\contador_inst|Add1~49\) # (GND)))
-- \contador_inst|Add1~51\ = CARRY((!\contador_inst|Add1~49\) # (!\contador_inst|cont3\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(25),
	datad => VCC,
	cin => \contador_inst|Add1~49\,
	combout => \contador_inst|Add1~50_combout\,
	cout => \contador_inst|Add1~51\);

-- Location: FF_X45_Y9_N19
\contador_inst|cont3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~50_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(25));

-- Location: LCCOMB_X45_Y9_N20
\contador_inst|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~52_combout\ = (\contador_inst|cont3\(26) & (\contador_inst|Add1~51\ $ (GND))) # (!\contador_inst|cont3\(26) & (!\contador_inst|Add1~51\ & VCC))
-- \contador_inst|Add1~53\ = CARRY((\contador_inst|cont3\(26) & !\contador_inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(26),
	datad => VCC,
	cin => \contador_inst|Add1~51\,
	combout => \contador_inst|Add1~52_combout\,
	cout => \contador_inst|Add1~53\);

-- Location: FF_X45_Y9_N21
\contador_inst|cont3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~52_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(26));

-- Location: LCCOMB_X45_Y9_N22
\contador_inst|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~54_combout\ = (\contador_inst|cont3\(27) & (!\contador_inst|Add1~53\)) # (!\contador_inst|cont3\(27) & ((\contador_inst|Add1~53\) # (GND)))
-- \contador_inst|Add1~55\ = CARRY((!\contador_inst|Add1~53\) # (!\contador_inst|cont3\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(27),
	datad => VCC,
	cin => \contador_inst|Add1~53\,
	combout => \contador_inst|Add1~54_combout\,
	cout => \contador_inst|Add1~55\);

-- Location: FF_X45_Y9_N23
\contador_inst|cont3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~54_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(27));

-- Location: LCCOMB_X45_Y9_N24
\contador_inst|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~56_combout\ = (\contador_inst|cont3\(28) & (\contador_inst|Add1~55\ $ (GND))) # (!\contador_inst|cont3\(28) & (!\contador_inst|Add1~55\ & VCC))
-- \contador_inst|Add1~57\ = CARRY((\contador_inst|cont3\(28) & !\contador_inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(28),
	datad => VCC,
	cin => \contador_inst|Add1~55\,
	combout => \contador_inst|Add1~56_combout\,
	cout => \contador_inst|Add1~57\);

-- Location: FF_X45_Y9_N25
\contador_inst|cont3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~56_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(28));

-- Location: LCCOMB_X45_Y9_N26
\contador_inst|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~58_combout\ = (\contador_inst|cont3\(29) & (!\contador_inst|Add1~57\)) # (!\contador_inst|cont3\(29) & ((\contador_inst|Add1~57\) # (GND)))
-- \contador_inst|Add1~59\ = CARRY((!\contador_inst|Add1~57\) # (!\contador_inst|cont3\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(29),
	datad => VCC,
	cin => \contador_inst|Add1~57\,
	combout => \contador_inst|Add1~58_combout\,
	cout => \contador_inst|Add1~59\);

-- Location: FF_X45_Y9_N27
\contador_inst|cont3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~58_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(29));

-- Location: LCCOMB_X45_Y9_N28
\contador_inst|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~60_combout\ = (\contador_inst|cont3\(30) & (\contador_inst|Add1~59\ $ (GND))) # (!\contador_inst|cont3\(30) & (!\contador_inst|Add1~59\ & VCC))
-- \contador_inst|Add1~61\ = CARRY((\contador_inst|cont3\(30) & !\contador_inst|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(30),
	datad => VCC,
	cin => \contador_inst|Add1~59\,
	combout => \contador_inst|Add1~60_combout\,
	cout => \contador_inst|Add1~61\);

-- Location: FF_X45_Y9_N29
\contador_inst|cont3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~60_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(30));

-- Location: LCCOMB_X45_Y9_N30
\contador_inst|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~62_combout\ = \contador_inst|cont3\(31) $ (\contador_inst|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(31),
	cin => \contador_inst|Add1~61\,
	combout => \contador_inst|Add1~62_combout\);

-- Location: FF_X45_Y9_N31
\contador_inst|cont3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~62_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(31));

-- Location: LCCOMB_X46_Y10_N2
\contador_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~0_combout\ = (\contador_inst|cont3\(3) & (!\contador_inst|cont3\(2) & (!\contador_inst|cont3\(31) & !\contador_inst|cont3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(3),
	datab => \contador_inst|cont3\(2),
	datac => \contador_inst|cont3\(31),
	datad => \contador_inst|cont3\(1),
	combout => \contador_inst|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y9_N0
\contador_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~1_combout\ = (!\contador_inst|cont3\(29) & (!\contador_inst|cont3\(27) & (!\contador_inst|cont3\(30) & !\contador_inst|cont3\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(29),
	datab => \contador_inst|cont3\(27),
	datac => \contador_inst|cont3\(30),
	datad => \contador_inst|cont3\(28),
	combout => \contador_inst|Equal1~1_combout\);

-- Location: LCCOMB_X46_Y9_N18
\contador_inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~3_combout\ = (!\contador_inst|cont3\(21) & (!\contador_inst|cont3\(20) & (!\contador_inst|cont3\(19) & !\contador_inst|cont3\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(21),
	datab => \contador_inst|cont3\(20),
	datac => \contador_inst|cont3\(19),
	datad => \contador_inst|cont3\(22),
	combout => \contador_inst|Equal1~3_combout\);

-- Location: LCCOMB_X46_Y9_N22
\contador_inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~2_combout\ = (!\contador_inst|cont3\(23) & (!\contador_inst|cont3\(25) & (!\contador_inst|cont3\(24) & !\contador_inst|cont3\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(23),
	datab => \contador_inst|cont3\(25),
	datac => \contador_inst|cont3\(24),
	datad => \contador_inst|cont3\(26),
	combout => \contador_inst|Equal1~2_combout\);

-- Location: LCCOMB_X45_Y13_N8
\contador_inst|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~4_combout\ = (\contador_inst|Equal1~0_combout\ & (\contador_inst|Equal1~1_combout\ & (\contador_inst|Equal1~3_combout\ & \contador_inst|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal1~0_combout\,
	datab => \contador_inst|Equal1~1_combout\,
	datac => \contador_inst|Equal1~3_combout\,
	datad => \contador_inst|Equal1~2_combout\,
	combout => \contador_inst|Equal1~4_combout\);

-- Location: LCCOMB_X44_Y10_N16
\contador_inst|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~6_combout\ = (!\contador_inst|cont3\(14) & (!\contador_inst|cont3\(11) & (!\contador_inst|cont3\(12) & !\contador_inst|cont3\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(14),
	datab => \contador_inst|cont3\(11),
	datac => \contador_inst|cont3\(12),
	datad => \contador_inst|cont3\(13),
	combout => \contador_inst|Equal1~6_combout\);

-- Location: LCCOMB_X44_Y9_N20
\contador_inst|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~5_combout\ = (!\contador_inst|cont3\(17) & (!\contador_inst|cont3\(16) & (!\contador_inst|cont3\(15) & !\contador_inst|cont3\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(17),
	datab => \contador_inst|cont3\(16),
	datac => \contador_inst|cont3\(15),
	datad => \contador_inst|cont3\(18),
	combout => \contador_inst|Equal1~5_combout\);

-- Location: LCCOMB_X45_Y13_N10
\contador_inst|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~7_combout\ = (\contador_inst|Equal1~6_combout\ & \contador_inst|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Equal1~6_combout\,
	datad => \contador_inst|Equal1~5_combout\,
	combout => \contador_inst|Equal1~7_combout\);

-- Location: LCCOMB_X45_Y13_N16
\contador_inst|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal1~10_combout\ = (\contador_inst|Equal1~8_combout\ & (\contador_inst|Equal1~9_combout\ & (\contador_inst|Equal1~4_combout\ & \contador_inst|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal1~8_combout\,
	datab => \contador_inst|Equal1~9_combout\,
	datac => \contador_inst|Equal1~4_combout\,
	datad => \contador_inst|Equal1~7_combout\,
	combout => \contador_inst|Equal1~10_combout\);

-- Location: LCCOMB_X46_Y10_N20
\contador_inst|cont3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont3~0_combout\ = (\contador_inst|Add1~2_combout\ & !\contador_inst|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Add1~2_combout\,
	datad => \contador_inst|Equal1~10_combout\,
	combout => \contador_inst|cont3~0_combout\);

-- Location: FF_X46_Y10_N21
\contador_inst|cont3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont3~0_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(1));

-- Location: LCCOMB_X45_Y10_N4
\contador_inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add1~4_combout\ = (\contador_inst|cont3\(2) & (\contador_inst|Add1~3\ $ (GND))) # (!\contador_inst|cont3\(2) & (!\contador_inst|Add1~3\ & VCC))
-- \contador_inst|Add1~5\ = CARRY((\contador_inst|cont3\(2) & !\contador_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont3\(2),
	datad => VCC,
	cin => \contador_inst|Add1~3\,
	combout => \contador_inst|Add1~4_combout\,
	cout => \contador_inst|Add1~5\);

-- Location: FF_X45_Y10_N5
\contador_inst|cont3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add1~4_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(2));

-- Location: LCCOMB_X46_Y10_N10
\contador_inst|cont3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont3~1_combout\ = (\contador_inst|Add1~6_combout\ & !\contador_inst|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Add1~6_combout\,
	datad => \contador_inst|Equal1~10_combout\,
	combout => \contador_inst|cont3~1_combout\);

-- Location: FF_X46_Y10_N11
\contador_inst|cont3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont3~1_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont3\(3));

-- Location: LCCOMB_X46_Y10_N16
\BCD_inst_C|inter_saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_C|inter_saida[0]~0_combout\ = (\contador_inst|cont3\(2) & (!\contador_inst|cont3\(3) & ((!\contador_inst|cont3\(1)) # (!\contador_inst|cont3\(0))))) # (!\contador_inst|cont3\(2) & (\contador_inst|cont3\(3) $ (((\contador_inst|cont3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(3),
	datab => \contador_inst|cont3\(2),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(1),
	combout => \BCD_inst_C|inter_saida[0]~0_combout\);

-- Location: LCCOMB_X44_Y14_N0
\contador_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~0_combout\ = \contador_inst|cont2\(0) $ (VCC)
-- \contador_inst|Add2~1\ = CARRY(\contador_inst|cont2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(0),
	datad => VCC,
	combout => \contador_inst|Add2~0_combout\,
	cout => \contador_inst|Add2~1\);

-- Location: LCCOMB_X45_Y13_N26
\contador_inst|cont1[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont1[27]~0_combout\ = (\contador_inst|Equal0~10_combout\ & \contador_inst|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Equal0~10_combout\,
	datad => \contador_inst|Equal1~10_combout\,
	combout => \contador_inst|cont1[27]~0_combout\);

-- Location: FF_X44_Y14_N1
\contador_inst|cont2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~0_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(0));

-- Location: LCCOMB_X44_Y14_N2
\contador_inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~2_combout\ = (\contador_inst|cont2\(1) & (!\contador_inst|Add2~1\)) # (!\contador_inst|cont2\(1) & ((\contador_inst|Add2~1\) # (GND)))
-- \contador_inst|Add2~3\ = CARRY((!\contador_inst|Add2~1\) # (!\contador_inst|cont2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datad => VCC,
	cin => \contador_inst|Add2~1\,
	combout => \contador_inst|Add2~2_combout\,
	cout => \contador_inst|Add2~3\);

-- Location: LCCOMB_X44_Y14_N4
\contador_inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~4_combout\ = (\contador_inst|cont2\(2) & (\contador_inst|Add2~3\ $ (GND))) # (!\contador_inst|cont2\(2) & (!\contador_inst|Add2~3\ & VCC))
-- \contador_inst|Add2~5\ = CARRY((\contador_inst|cont2\(2) & !\contador_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(2),
	datad => VCC,
	cin => \contador_inst|Add2~3\,
	combout => \contador_inst|Add2~4_combout\,
	cout => \contador_inst|Add2~5\);

-- Location: FF_X44_Y14_N5
\contador_inst|cont2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~4_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(2));

-- Location: LCCOMB_X44_Y14_N6
\contador_inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~6_combout\ = (\contador_inst|cont2\(3) & (!\contador_inst|Add2~5\)) # (!\contador_inst|cont2\(3) & ((\contador_inst|Add2~5\) # (GND)))
-- \contador_inst|Add2~7\ = CARRY((!\contador_inst|Add2~5\) # (!\contador_inst|cont2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(3),
	datad => VCC,
	cin => \contador_inst|Add2~5\,
	combout => \contador_inst|Add2~6_combout\,
	cout => \contador_inst|Add2~7\);

-- Location: LCCOMB_X45_Y14_N28
\contador_inst|cont2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont2~1_combout\ = (\contador_inst|Add2~6_combout\ & !\contador_inst|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Add2~6_combout\,
	datad => \contador_inst|Equal2~10_combout\,
	combout => \contador_inst|cont2~1_combout\);

-- Location: FF_X45_Y14_N29
\contador_inst|cont2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont2~1_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(3));

-- Location: LCCOMB_X44_Y14_N8
\contador_inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~8_combout\ = (\contador_inst|cont2\(4) & (\contador_inst|Add2~7\ $ (GND))) # (!\contador_inst|cont2\(4) & (!\contador_inst|Add2~7\ & VCC))
-- \contador_inst|Add2~9\ = CARRY((\contador_inst|cont2\(4) & !\contador_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(4),
	datad => VCC,
	cin => \contador_inst|Add2~7\,
	combout => \contador_inst|Add2~8_combout\,
	cout => \contador_inst|Add2~9\);

-- Location: FF_X44_Y14_N9
\contador_inst|cont2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~8_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(4));

-- Location: LCCOMB_X44_Y14_N10
\contador_inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~10_combout\ = (\contador_inst|cont2\(5) & (!\contador_inst|Add2~9\)) # (!\contador_inst|cont2\(5) & ((\contador_inst|Add2~9\) # (GND)))
-- \contador_inst|Add2~11\ = CARRY((!\contador_inst|Add2~9\) # (!\contador_inst|cont2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(5),
	datad => VCC,
	cin => \contador_inst|Add2~9\,
	combout => \contador_inst|Add2~10_combout\,
	cout => \contador_inst|Add2~11\);

-- Location: FF_X44_Y14_N11
\contador_inst|cont2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~10_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(5));

-- Location: LCCOMB_X44_Y14_N12
\contador_inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~12_combout\ = (\contador_inst|cont2\(6) & (\contador_inst|Add2~11\ $ (GND))) # (!\contador_inst|cont2\(6) & (!\contador_inst|Add2~11\ & VCC))
-- \contador_inst|Add2~13\ = CARRY((\contador_inst|cont2\(6) & !\contador_inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(6),
	datad => VCC,
	cin => \contador_inst|Add2~11\,
	combout => \contador_inst|Add2~12_combout\,
	cout => \contador_inst|Add2~13\);

-- Location: FF_X44_Y14_N13
\contador_inst|cont2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~12_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(6));

-- Location: LCCOMB_X44_Y14_N14
\contador_inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~14_combout\ = (\contador_inst|cont2\(7) & (!\contador_inst|Add2~13\)) # (!\contador_inst|cont2\(7) & ((\contador_inst|Add2~13\) # (GND)))
-- \contador_inst|Add2~15\ = CARRY((!\contador_inst|Add2~13\) # (!\contador_inst|cont2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(7),
	datad => VCC,
	cin => \contador_inst|Add2~13\,
	combout => \contador_inst|Add2~14_combout\,
	cout => \contador_inst|Add2~15\);

-- Location: FF_X44_Y14_N15
\contador_inst|cont2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~14_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(7));

-- Location: LCCOMB_X44_Y14_N16
\contador_inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~16_combout\ = (\contador_inst|cont2\(8) & (\contador_inst|Add2~15\ $ (GND))) # (!\contador_inst|cont2\(8) & (!\contador_inst|Add2~15\ & VCC))
-- \contador_inst|Add2~17\ = CARRY((\contador_inst|cont2\(8) & !\contador_inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(8),
	datad => VCC,
	cin => \contador_inst|Add2~15\,
	combout => \contador_inst|Add2~16_combout\,
	cout => \contador_inst|Add2~17\);

-- Location: FF_X44_Y14_N17
\contador_inst|cont2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~16_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(8));

-- Location: LCCOMB_X44_Y14_N18
\contador_inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~18_combout\ = (\contador_inst|cont2\(9) & (!\contador_inst|Add2~17\)) # (!\contador_inst|cont2\(9) & ((\contador_inst|Add2~17\) # (GND)))
-- \contador_inst|Add2~19\ = CARRY((!\contador_inst|Add2~17\) # (!\contador_inst|cont2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(9),
	datad => VCC,
	cin => \contador_inst|Add2~17\,
	combout => \contador_inst|Add2~18_combout\,
	cout => \contador_inst|Add2~19\);

-- Location: FF_X44_Y14_N19
\contador_inst|cont2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~18_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(9));

-- Location: LCCOMB_X44_Y14_N20
\contador_inst|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~20_combout\ = (\contador_inst|cont2\(10) & (\contador_inst|Add2~19\ $ (GND))) # (!\contador_inst|cont2\(10) & (!\contador_inst|Add2~19\ & VCC))
-- \contador_inst|Add2~21\ = CARRY((\contador_inst|cont2\(10) & !\contador_inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(10),
	datad => VCC,
	cin => \contador_inst|Add2~19\,
	combout => \contador_inst|Add2~20_combout\,
	cout => \contador_inst|Add2~21\);

-- Location: FF_X44_Y14_N21
\contador_inst|cont2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~20_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(10));

-- Location: LCCOMB_X45_Y14_N16
\contador_inst|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~8_combout\ = (!\contador_inst|cont2\(7) & (!\contador_inst|cont2\(10) & (!\contador_inst|cont2\(8) & !\contador_inst|cont2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(7),
	datab => \contador_inst|cont2\(10),
	datac => \contador_inst|cont2\(8),
	datad => \contador_inst|cont2\(9),
	combout => \contador_inst|Equal2~8_combout\);

-- Location: LCCOMB_X45_Y14_N14
\contador_inst|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~9_combout\ = (!\contador_inst|cont2\(4) & (!\contador_inst|cont2\(5) & (\contador_inst|cont2\(0) & !\contador_inst|cont2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(4),
	datab => \contador_inst|cont2\(5),
	datac => \contador_inst|cont2\(0),
	datad => \contador_inst|cont2\(6),
	combout => \contador_inst|Equal2~9_combout\);

-- Location: LCCOMB_X44_Y14_N22
\contador_inst|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~22_combout\ = (\contador_inst|cont2\(11) & (!\contador_inst|Add2~21\)) # (!\contador_inst|cont2\(11) & ((\contador_inst|Add2~21\) # (GND)))
-- \contador_inst|Add2~23\ = CARRY((!\contador_inst|Add2~21\) # (!\contador_inst|cont2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(11),
	datad => VCC,
	cin => \contador_inst|Add2~21\,
	combout => \contador_inst|Add2~22_combout\,
	cout => \contador_inst|Add2~23\);

-- Location: FF_X44_Y14_N23
\contador_inst|cont2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~22_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(11));

-- Location: LCCOMB_X44_Y14_N24
\contador_inst|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~24_combout\ = (\contador_inst|cont2\(12) & (\contador_inst|Add2~23\ $ (GND))) # (!\contador_inst|cont2\(12) & (!\contador_inst|Add2~23\ & VCC))
-- \contador_inst|Add2~25\ = CARRY((\contador_inst|cont2\(12) & !\contador_inst|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(12),
	datad => VCC,
	cin => \contador_inst|Add2~23\,
	combout => \contador_inst|Add2~24_combout\,
	cout => \contador_inst|Add2~25\);

-- Location: LCCOMB_X43_Y13_N12
\contador_inst|cont2[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont2[12]~feeder_combout\ = \contador_inst|Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_inst|Add2~24_combout\,
	combout => \contador_inst|cont2[12]~feeder_combout\);

-- Location: FF_X43_Y13_N13
\contador_inst|cont2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont2[12]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(12));

-- Location: LCCOMB_X44_Y14_N26
\contador_inst|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~26_combout\ = (\contador_inst|cont2\(13) & (!\contador_inst|Add2~25\)) # (!\contador_inst|cont2\(13) & ((\contador_inst|Add2~25\) # (GND)))
-- \contador_inst|Add2~27\ = CARRY((!\contador_inst|Add2~25\) # (!\contador_inst|cont2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(13),
	datad => VCC,
	cin => \contador_inst|Add2~25\,
	combout => \contador_inst|Add2~26_combout\,
	cout => \contador_inst|Add2~27\);

-- Location: LCCOMB_X43_Y13_N4
\contador_inst|cont2[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont2[13]~feeder_combout\ = \contador_inst|Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \contador_inst|Add2~26_combout\,
	combout => \contador_inst|cont2[13]~feeder_combout\);

-- Location: FF_X43_Y13_N5
\contador_inst|cont2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont2[13]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(13));

-- Location: LCCOMB_X44_Y14_N28
\contador_inst|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~28_combout\ = (\contador_inst|cont2\(14) & (\contador_inst|Add2~27\ $ (GND))) # (!\contador_inst|cont2\(14) & (!\contador_inst|Add2~27\ & VCC))
-- \contador_inst|Add2~29\ = CARRY((\contador_inst|cont2\(14) & !\contador_inst|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(14),
	datad => VCC,
	cin => \contador_inst|Add2~27\,
	combout => \contador_inst|Add2~28_combout\,
	cout => \contador_inst|Add2~29\);

-- Location: FF_X44_Y14_N29
\contador_inst|cont2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~28_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(14));

-- Location: LCCOMB_X44_Y14_N30
\contador_inst|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~30_combout\ = (\contador_inst|cont2\(15) & (!\contador_inst|Add2~29\)) # (!\contador_inst|cont2\(15) & ((\contador_inst|Add2~29\) # (GND)))
-- \contador_inst|Add2~31\ = CARRY((!\contador_inst|Add2~29\) # (!\contador_inst|cont2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(15),
	datad => VCC,
	cin => \contador_inst|Add2~29\,
	combout => \contador_inst|Add2~30_combout\,
	cout => \contador_inst|Add2~31\);

-- Location: LCCOMB_X43_Y13_N8
\contador_inst|cont2[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont2[15]~feeder_combout\ = \contador_inst|Add2~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Add2~30_combout\,
	combout => \contador_inst|cont2[15]~feeder_combout\);

-- Location: FF_X43_Y13_N9
\contador_inst|cont2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont2[15]~feeder_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(15));

-- Location: LCCOMB_X44_Y13_N0
\contador_inst|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~32_combout\ = (\contador_inst|cont2\(16) & (\contador_inst|Add2~31\ $ (GND))) # (!\contador_inst|cont2\(16) & (!\contador_inst|Add2~31\ & VCC))
-- \contador_inst|Add2~33\ = CARRY((\contador_inst|cont2\(16) & !\contador_inst|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(16),
	datad => VCC,
	cin => \contador_inst|Add2~31\,
	combout => \contador_inst|Add2~32_combout\,
	cout => \contador_inst|Add2~33\);

-- Location: FF_X44_Y13_N1
\contador_inst|cont2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~32_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(16));

-- Location: LCCOMB_X44_Y13_N2
\contador_inst|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~34_combout\ = (\contador_inst|cont2\(17) & (!\contador_inst|Add2~33\)) # (!\contador_inst|cont2\(17) & ((\contador_inst|Add2~33\) # (GND)))
-- \contador_inst|Add2~35\ = CARRY((!\contador_inst|Add2~33\) # (!\contador_inst|cont2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(17),
	datad => VCC,
	cin => \contador_inst|Add2~33\,
	combout => \contador_inst|Add2~34_combout\,
	cout => \contador_inst|Add2~35\);

-- Location: FF_X44_Y13_N3
\contador_inst|cont2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~34_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(17));

-- Location: LCCOMB_X44_Y13_N4
\contador_inst|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~36_combout\ = (\contador_inst|cont2\(18) & (\contador_inst|Add2~35\ $ (GND))) # (!\contador_inst|cont2\(18) & (!\contador_inst|Add2~35\ & VCC))
-- \contador_inst|Add2~37\ = CARRY((\contador_inst|cont2\(18) & !\contador_inst|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(18),
	datad => VCC,
	cin => \contador_inst|Add2~35\,
	combout => \contador_inst|Add2~36_combout\,
	cout => \contador_inst|Add2~37\);

-- Location: FF_X44_Y13_N5
\contador_inst|cont2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~36_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(18));

-- Location: LCCOMB_X44_Y13_N6
\contador_inst|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~38_combout\ = (\contador_inst|cont2\(19) & (!\contador_inst|Add2~37\)) # (!\contador_inst|cont2\(19) & ((\contador_inst|Add2~37\) # (GND)))
-- \contador_inst|Add2~39\ = CARRY((!\contador_inst|Add2~37\) # (!\contador_inst|cont2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(19),
	datad => VCC,
	cin => \contador_inst|Add2~37\,
	combout => \contador_inst|Add2~38_combout\,
	cout => \contador_inst|Add2~39\);

-- Location: FF_X44_Y13_N7
\contador_inst|cont2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~38_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(19));

-- Location: LCCOMB_X44_Y13_N8
\contador_inst|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~40_combout\ = (\contador_inst|cont2\(20) & (\contador_inst|Add2~39\ $ (GND))) # (!\contador_inst|cont2\(20) & (!\contador_inst|Add2~39\ & VCC))
-- \contador_inst|Add2~41\ = CARRY((\contador_inst|cont2\(20) & !\contador_inst|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(20),
	datad => VCC,
	cin => \contador_inst|Add2~39\,
	combout => \contador_inst|Add2~40_combout\,
	cout => \contador_inst|Add2~41\);

-- Location: FF_X44_Y13_N9
\contador_inst|cont2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~40_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(20));

-- Location: LCCOMB_X44_Y13_N10
\contador_inst|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~42_combout\ = (\contador_inst|cont2\(21) & (!\contador_inst|Add2~41\)) # (!\contador_inst|cont2\(21) & ((\contador_inst|Add2~41\) # (GND)))
-- \contador_inst|Add2~43\ = CARRY((!\contador_inst|Add2~41\) # (!\contador_inst|cont2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(21),
	datad => VCC,
	cin => \contador_inst|Add2~41\,
	combout => \contador_inst|Add2~42_combout\,
	cout => \contador_inst|Add2~43\);

-- Location: FF_X44_Y13_N11
\contador_inst|cont2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~42_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(21));

-- Location: LCCOMB_X44_Y13_N12
\contador_inst|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~44_combout\ = (\contador_inst|cont2\(22) & (\contador_inst|Add2~43\ $ (GND))) # (!\contador_inst|cont2\(22) & (!\contador_inst|Add2~43\ & VCC))
-- \contador_inst|Add2~45\ = CARRY((\contador_inst|cont2\(22) & !\contador_inst|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(22),
	datad => VCC,
	cin => \contador_inst|Add2~43\,
	combout => \contador_inst|Add2~44_combout\,
	cout => \contador_inst|Add2~45\);

-- Location: FF_X44_Y13_N13
\contador_inst|cont2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~44_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(22));

-- Location: LCCOMB_X44_Y13_N14
\contador_inst|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~46_combout\ = (\contador_inst|cont2\(23) & (!\contador_inst|Add2~45\)) # (!\contador_inst|cont2\(23) & ((\contador_inst|Add2~45\) # (GND)))
-- \contador_inst|Add2~47\ = CARRY((!\contador_inst|Add2~45\) # (!\contador_inst|cont2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(23),
	datad => VCC,
	cin => \contador_inst|Add2~45\,
	combout => \contador_inst|Add2~46_combout\,
	cout => \contador_inst|Add2~47\);

-- Location: FF_X44_Y13_N15
\contador_inst|cont2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~46_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(23));

-- Location: LCCOMB_X44_Y13_N16
\contador_inst|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~48_combout\ = (\contador_inst|cont2\(24) & (\contador_inst|Add2~47\ $ (GND))) # (!\contador_inst|cont2\(24) & (!\contador_inst|Add2~47\ & VCC))
-- \contador_inst|Add2~49\ = CARRY((\contador_inst|cont2\(24) & !\contador_inst|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(24),
	datad => VCC,
	cin => \contador_inst|Add2~47\,
	combout => \contador_inst|Add2~48_combout\,
	cout => \contador_inst|Add2~49\);

-- Location: FF_X44_Y13_N17
\contador_inst|cont2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~48_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(24));

-- Location: LCCOMB_X44_Y13_N18
\contador_inst|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~50_combout\ = (\contador_inst|cont2\(25) & (!\contador_inst|Add2~49\)) # (!\contador_inst|cont2\(25) & ((\contador_inst|Add2~49\) # (GND)))
-- \contador_inst|Add2~51\ = CARRY((!\contador_inst|Add2~49\) # (!\contador_inst|cont2\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(25),
	datad => VCC,
	cin => \contador_inst|Add2~49\,
	combout => \contador_inst|Add2~50_combout\,
	cout => \contador_inst|Add2~51\);

-- Location: FF_X44_Y13_N19
\contador_inst|cont2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~50_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(25));

-- Location: LCCOMB_X44_Y13_N20
\contador_inst|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~52_combout\ = (\contador_inst|cont2\(26) & (\contador_inst|Add2~51\ $ (GND))) # (!\contador_inst|cont2\(26) & (!\contador_inst|Add2~51\ & VCC))
-- \contador_inst|Add2~53\ = CARRY((\contador_inst|cont2\(26) & !\contador_inst|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(26),
	datad => VCC,
	cin => \contador_inst|Add2~51\,
	combout => \contador_inst|Add2~52_combout\,
	cout => \contador_inst|Add2~53\);

-- Location: FF_X44_Y13_N21
\contador_inst|cont2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~52_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(26));

-- Location: LCCOMB_X43_Y13_N22
\contador_inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~2_combout\ = (!\contador_inst|cont2\(26) & (!\contador_inst|cont2\(25) & (!\contador_inst|cont2\(23) & !\contador_inst|cont2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(26),
	datab => \contador_inst|cont2\(25),
	datac => \contador_inst|cont2\(23),
	datad => \contador_inst|cont2\(24),
	combout => \contador_inst|Equal2~2_combout\);

-- Location: LCCOMB_X45_Y13_N0
\contador_inst|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~3_combout\ = (!\contador_inst|cont2\(20) & (!\contador_inst|cont2\(19) & (!\contador_inst|cont2\(21) & !\contador_inst|cont2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(20),
	datab => \contador_inst|cont2\(19),
	datac => \contador_inst|cont2\(21),
	datad => \contador_inst|cont2\(22),
	combout => \contador_inst|Equal2~3_combout\);

-- Location: LCCOMB_X44_Y13_N22
\contador_inst|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~54_combout\ = (\contador_inst|cont2\(27) & (!\contador_inst|Add2~53\)) # (!\contador_inst|cont2\(27) & ((\contador_inst|Add2~53\) # (GND)))
-- \contador_inst|Add2~55\ = CARRY((!\contador_inst|Add2~53\) # (!\contador_inst|cont2\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(27),
	datad => VCC,
	cin => \contador_inst|Add2~53\,
	combout => \contador_inst|Add2~54_combout\,
	cout => \contador_inst|Add2~55\);

-- Location: FF_X44_Y13_N23
\contador_inst|cont2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~54_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(27));

-- Location: LCCOMB_X44_Y13_N24
\contador_inst|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~56_combout\ = (\contador_inst|cont2\(28) & (\contador_inst|Add2~55\ $ (GND))) # (!\contador_inst|cont2\(28) & (!\contador_inst|Add2~55\ & VCC))
-- \contador_inst|Add2~57\ = CARRY((\contador_inst|cont2\(28) & !\contador_inst|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(28),
	datad => VCC,
	cin => \contador_inst|Add2~55\,
	combout => \contador_inst|Add2~56_combout\,
	cout => \contador_inst|Add2~57\);

-- Location: FF_X44_Y13_N25
\contador_inst|cont2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~56_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(28));

-- Location: LCCOMB_X44_Y13_N26
\contador_inst|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~58_combout\ = (\contador_inst|cont2\(29) & (!\contador_inst|Add2~57\)) # (!\contador_inst|cont2\(29) & ((\contador_inst|Add2~57\) # (GND)))
-- \contador_inst|Add2~59\ = CARRY((!\contador_inst|Add2~57\) # (!\contador_inst|cont2\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(29),
	datad => VCC,
	cin => \contador_inst|Add2~57\,
	combout => \contador_inst|Add2~58_combout\,
	cout => \contador_inst|Add2~59\);

-- Location: FF_X44_Y13_N27
\contador_inst|cont2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~58_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(29));

-- Location: LCCOMB_X44_Y13_N28
\contador_inst|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~60_combout\ = (\contador_inst|cont2\(30) & (\contador_inst|Add2~59\ $ (GND))) # (!\contador_inst|cont2\(30) & (!\contador_inst|Add2~59\ & VCC))
-- \contador_inst|Add2~61\ = CARRY((\contador_inst|cont2\(30) & !\contador_inst|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont2\(30),
	datad => VCC,
	cin => \contador_inst|Add2~59\,
	combout => \contador_inst|Add2~60_combout\,
	cout => \contador_inst|Add2~61\);

-- Location: FF_X44_Y13_N29
\contador_inst|cont2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~60_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(30));

-- Location: LCCOMB_X44_Y13_N30
\contador_inst|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add2~62_combout\ = \contador_inst|cont2\(31) $ (\contador_inst|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(31),
	cin => \contador_inst|Add2~61\,
	combout => \contador_inst|Add2~62_combout\);

-- Location: FF_X44_Y13_N31
\contador_inst|cont2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add2~62_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(31));

-- Location: LCCOMB_X45_Y14_N30
\contador_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~0_combout\ = (!\contador_inst|cont2\(1) & (!\contador_inst|cont2\(2) & (!\contador_inst|cont2\(31) & \contador_inst|cont2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datab => \contador_inst|cont2\(2),
	datac => \contador_inst|cont2\(31),
	datad => \contador_inst|cont2\(3),
	combout => \contador_inst|Equal2~0_combout\);

-- Location: LCCOMB_X43_Y13_N16
\contador_inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~1_combout\ = (!\contador_inst|cont2\(27) & (!\contador_inst|cont2\(28) & (!\contador_inst|cont2\(29) & !\contador_inst|cont2\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(27),
	datab => \contador_inst|cont2\(28),
	datac => \contador_inst|cont2\(29),
	datad => \contador_inst|cont2\(30),
	combout => \contador_inst|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y13_N14
\contador_inst|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~4_combout\ = (\contador_inst|Equal2~2_combout\ & (\contador_inst|Equal2~3_combout\ & (\contador_inst|Equal2~0_combout\ & \contador_inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal2~2_combout\,
	datab => \contador_inst|Equal2~3_combout\,
	datac => \contador_inst|Equal2~0_combout\,
	datad => \contador_inst|Equal2~1_combout\,
	combout => \contador_inst|Equal2~4_combout\);

-- Location: LCCOMB_X43_Y13_N30
\contador_inst|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~5_combout\ = (!\contador_inst|cont2\(18) & (!\contador_inst|cont2\(15) & (!\contador_inst|cont2\(16) & !\contador_inst|cont2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(18),
	datab => \contador_inst|cont2\(15),
	datac => \contador_inst|cont2\(16),
	datad => \contador_inst|cont2\(17),
	combout => \contador_inst|Equal2~5_combout\);

-- Location: LCCOMB_X43_Y13_N6
\contador_inst|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~6_combout\ = (!\contador_inst|cont2\(12) & !\contador_inst|cont2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(12),
	datad => \contador_inst|cont2\(11),
	combout => \contador_inst|Equal2~6_combout\);

-- Location: LCCOMB_X43_Y13_N10
\contador_inst|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~7_combout\ = (!\contador_inst|cont2\(14) & (!\contador_inst|cont2\(13) & (\contador_inst|Equal2~5_combout\ & \contador_inst|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(14),
	datab => \contador_inst|cont2\(13),
	datac => \contador_inst|Equal2~5_combout\,
	datad => \contador_inst|Equal2~6_combout\,
	combout => \contador_inst|Equal2~7_combout\);

-- Location: LCCOMB_X45_Y13_N12
\contador_inst|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal2~10_combout\ = (\contador_inst|Equal2~8_combout\ & (\contador_inst|Equal2~9_combout\ & (\contador_inst|Equal2~4_combout\ & \contador_inst|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal2~8_combout\,
	datab => \contador_inst|Equal2~9_combout\,
	datac => \contador_inst|Equal2~4_combout\,
	datad => \contador_inst|Equal2~7_combout\,
	combout => \contador_inst|Equal2~10_combout\);

-- Location: LCCOMB_X45_Y14_N6
\contador_inst|cont2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont2~0_combout\ = (\contador_inst|Add2~2_combout\ & !\contador_inst|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Add2~2_combout\,
	datad => \contador_inst|Equal2~10_combout\,
	combout => \contador_inst|cont2~0_combout\);

-- Location: FF_X45_Y14_N7
\contador_inst|cont2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont2~0_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[27]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont2\(1));

-- Location: LCCOMB_X45_Y14_N10
\BCD_inst_B|inter_saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_B|inter_saida[0]~0_combout\ = (\contador_inst|cont2\(1) & (!\contador_inst|cont2\(3) & ((!\contador_inst|cont2\(0)) # (!\contador_inst|cont2\(2))))) # (!\contador_inst|cont2\(1) & (\contador_inst|cont2\(2) $ (((\contador_inst|cont2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datab => \contador_inst|cont2\(2),
	datac => \contador_inst|cont2\(0),
	datad => \contador_inst|cont2\(3),
	combout => \BCD_inst_B|inter_saida[0]~0_combout\);

-- Location: LCCOMB_X46_Y14_N0
\contador_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~0_combout\ = \contador_inst|cont1\(0) $ (VCC)
-- \contador_inst|Add3~1\ = CARRY(\contador_inst|cont1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(0),
	datad => VCC,
	combout => \contador_inst|Add3~0_combout\,
	cout => \contador_inst|Add3~1\);

-- Location: LCCOMB_X45_Y13_N2
\contador_inst|cont1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont1[3]~1_combout\ = (\contador_inst|Equal2~10_combout\ & (\contador_inst|Equal0~10_combout\ & \contador_inst|Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal2~10_combout\,
	datac => \contador_inst|Equal0~10_combout\,
	datad => \contador_inst|Equal1~10_combout\,
	combout => \contador_inst|cont1[3]~1_combout\);

-- Location: FF_X46_Y14_N1
\contador_inst|cont1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~0_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(0));

-- Location: LCCOMB_X46_Y14_N2
\contador_inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~2_combout\ = (\contador_inst|cont1\(1) & (!\contador_inst|Add3~1\)) # (!\contador_inst|cont1\(1) & ((\contador_inst|Add3~1\) # (GND)))
-- \contador_inst|Add3~3\ = CARRY((!\contador_inst|Add3~1\) # (!\contador_inst|cont1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(1),
	datad => VCC,
	cin => \contador_inst|Add3~1\,
	combout => \contador_inst|Add3~2_combout\,
	cout => \contador_inst|Add3~3\);

-- Location: LCCOMB_X47_Y13_N4
\contador_inst|cont1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont1~2_combout\ = (\contador_inst|Add3~2_combout\ & !\contador_inst|Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Add3~2_combout\,
	datad => \contador_inst|Equal3~10_combout\,
	combout => \contador_inst|cont1~2_combout\);

-- Location: FF_X47_Y13_N5
\contador_inst|cont1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont1~2_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(1));

-- Location: LCCOMB_X46_Y14_N4
\contador_inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~4_combout\ = (\contador_inst|cont1\(2) & (\contador_inst|Add3~3\ $ (GND))) # (!\contador_inst|cont1\(2) & (!\contador_inst|Add3~3\ & VCC))
-- \contador_inst|Add3~5\ = CARRY((\contador_inst|cont1\(2) & !\contador_inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(2),
	datad => VCC,
	cin => \contador_inst|Add3~3\,
	combout => \contador_inst|Add3~4_combout\,
	cout => \contador_inst|Add3~5\);

-- Location: FF_X46_Y14_N5
\contador_inst|cont1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~4_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(2));

-- Location: LCCOMB_X46_Y14_N6
\contador_inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~6_combout\ = (\contador_inst|cont1\(3) & (!\contador_inst|Add3~5\)) # (!\contador_inst|cont1\(3) & ((\contador_inst|Add3~5\) # (GND)))
-- \contador_inst|Add3~7\ = CARRY((!\contador_inst|Add3~5\) # (!\contador_inst|cont1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(3),
	datad => VCC,
	cin => \contador_inst|Add3~5\,
	combout => \contador_inst|Add3~6_combout\,
	cout => \contador_inst|Add3~7\);

-- Location: LCCOMB_X46_Y14_N8
\contador_inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~8_combout\ = (\contador_inst|cont1\(4) & (\contador_inst|Add3~7\ $ (GND))) # (!\contador_inst|cont1\(4) & (!\contador_inst|Add3~7\ & VCC))
-- \contador_inst|Add3~9\ = CARRY((\contador_inst|cont1\(4) & !\contador_inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(4),
	datad => VCC,
	cin => \contador_inst|Add3~7\,
	combout => \contador_inst|Add3~8_combout\,
	cout => \contador_inst|Add3~9\);

-- Location: FF_X46_Y14_N9
\contador_inst|cont1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~8_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(4));

-- Location: LCCOMB_X46_Y14_N10
\contador_inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~10_combout\ = (\contador_inst|cont1\(5) & (!\contador_inst|Add3~9\)) # (!\contador_inst|cont1\(5) & ((\contador_inst|Add3~9\) # (GND)))
-- \contador_inst|Add3~11\ = CARRY((!\contador_inst|Add3~9\) # (!\contador_inst|cont1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(5),
	datad => VCC,
	cin => \contador_inst|Add3~9\,
	combout => \contador_inst|Add3~10_combout\,
	cout => \contador_inst|Add3~11\);

-- Location: FF_X46_Y14_N11
\contador_inst|cont1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~10_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(5));

-- Location: LCCOMB_X46_Y14_N12
\contador_inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~12_combout\ = (\contador_inst|cont1\(6) & (\contador_inst|Add3~11\ $ (GND))) # (!\contador_inst|cont1\(6) & (!\contador_inst|Add3~11\ & VCC))
-- \contador_inst|Add3~13\ = CARRY((\contador_inst|cont1\(6) & !\contador_inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(6),
	datad => VCC,
	cin => \contador_inst|Add3~11\,
	combout => \contador_inst|Add3~12_combout\,
	cout => \contador_inst|Add3~13\);

-- Location: FF_X46_Y14_N13
\contador_inst|cont1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~12_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(6));

-- Location: LCCOMB_X46_Y14_N14
\contador_inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~14_combout\ = (\contador_inst|cont1\(7) & (!\contador_inst|Add3~13\)) # (!\contador_inst|cont1\(7) & ((\contador_inst|Add3~13\) # (GND)))
-- \contador_inst|Add3~15\ = CARRY((!\contador_inst|Add3~13\) # (!\contador_inst|cont1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(7),
	datad => VCC,
	cin => \contador_inst|Add3~13\,
	combout => \contador_inst|Add3~14_combout\,
	cout => \contador_inst|Add3~15\);

-- Location: FF_X46_Y14_N15
\contador_inst|cont1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~14_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(7));

-- Location: LCCOMB_X46_Y14_N16
\contador_inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~16_combout\ = (\contador_inst|cont1\(8) & (\contador_inst|Add3~15\ $ (GND))) # (!\contador_inst|cont1\(8) & (!\contador_inst|Add3~15\ & VCC))
-- \contador_inst|Add3~17\ = CARRY((\contador_inst|cont1\(8) & !\contador_inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(8),
	datad => VCC,
	cin => \contador_inst|Add3~15\,
	combout => \contador_inst|Add3~16_combout\,
	cout => \contador_inst|Add3~17\);

-- Location: FF_X46_Y14_N17
\contador_inst|cont1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~16_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(8));

-- Location: LCCOMB_X46_Y14_N18
\contador_inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~18_combout\ = (\contador_inst|cont1\(9) & (!\contador_inst|Add3~17\)) # (!\contador_inst|cont1\(9) & ((\contador_inst|Add3~17\) # (GND)))
-- \contador_inst|Add3~19\ = CARRY((!\contador_inst|Add3~17\) # (!\contador_inst|cont1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(9),
	datad => VCC,
	cin => \contador_inst|Add3~17\,
	combout => \contador_inst|Add3~18_combout\,
	cout => \contador_inst|Add3~19\);

-- Location: FF_X46_Y14_N19
\contador_inst|cont1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~18_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(9));

-- Location: LCCOMB_X46_Y14_N20
\contador_inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~20_combout\ = (\contador_inst|cont1\(10) & (\contador_inst|Add3~19\ $ (GND))) # (!\contador_inst|cont1\(10) & (!\contador_inst|Add3~19\ & VCC))
-- \contador_inst|Add3~21\ = CARRY((\contador_inst|cont1\(10) & !\contador_inst|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(10),
	datad => VCC,
	cin => \contador_inst|Add3~19\,
	combout => \contador_inst|Add3~20_combout\,
	cout => \contador_inst|Add3~21\);

-- Location: FF_X46_Y14_N21
\contador_inst|cont1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~20_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(10));

-- Location: LCCOMB_X46_Y14_N22
\contador_inst|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~22_combout\ = (\contador_inst|cont1\(11) & (!\contador_inst|Add3~21\)) # (!\contador_inst|cont1\(11) & ((\contador_inst|Add3~21\) # (GND)))
-- \contador_inst|Add3~23\ = CARRY((!\contador_inst|Add3~21\) # (!\contador_inst|cont1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(11),
	datad => VCC,
	cin => \contador_inst|Add3~21\,
	combout => \contador_inst|Add3~22_combout\,
	cout => \contador_inst|Add3~23\);

-- Location: FF_X46_Y14_N23
\contador_inst|cont1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~22_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(11));

-- Location: LCCOMB_X46_Y14_N24
\contador_inst|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~24_combout\ = (\contador_inst|cont1\(12) & (\contador_inst|Add3~23\ $ (GND))) # (!\contador_inst|cont1\(12) & (!\contador_inst|Add3~23\ & VCC))
-- \contador_inst|Add3~25\ = CARRY((\contador_inst|cont1\(12) & !\contador_inst|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(12),
	datad => VCC,
	cin => \contador_inst|Add3~23\,
	combout => \contador_inst|Add3~24_combout\,
	cout => \contador_inst|Add3~25\);

-- Location: FF_X46_Y14_N25
\contador_inst|cont1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~24_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(12));

-- Location: LCCOMB_X46_Y14_N26
\contador_inst|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~26_combout\ = (\contador_inst|cont1\(13) & (!\contador_inst|Add3~25\)) # (!\contador_inst|cont1\(13) & ((\contador_inst|Add3~25\) # (GND)))
-- \contador_inst|Add3~27\ = CARRY((!\contador_inst|Add3~25\) # (!\contador_inst|cont1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(13),
	datad => VCC,
	cin => \contador_inst|Add3~25\,
	combout => \contador_inst|Add3~26_combout\,
	cout => \contador_inst|Add3~27\);

-- Location: FF_X46_Y14_N27
\contador_inst|cont1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~26_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(13));

-- Location: LCCOMB_X46_Y14_N28
\contador_inst|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~28_combout\ = (\contador_inst|cont1\(14) & (\contador_inst|Add3~27\ $ (GND))) # (!\contador_inst|cont1\(14) & (!\contador_inst|Add3~27\ & VCC))
-- \contador_inst|Add3~29\ = CARRY((\contador_inst|cont1\(14) & !\contador_inst|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(14),
	datad => VCC,
	cin => \contador_inst|Add3~27\,
	combout => \contador_inst|Add3~28_combout\,
	cout => \contador_inst|Add3~29\);

-- Location: FF_X46_Y14_N29
\contador_inst|cont1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~28_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(14));

-- Location: LCCOMB_X46_Y14_N30
\contador_inst|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~30_combout\ = (\contador_inst|cont1\(15) & (!\contador_inst|Add3~29\)) # (!\contador_inst|cont1\(15) & ((\contador_inst|Add3~29\) # (GND)))
-- \contador_inst|Add3~31\ = CARRY((!\contador_inst|Add3~29\) # (!\contador_inst|cont1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(15),
	datad => VCC,
	cin => \contador_inst|Add3~29\,
	combout => \contador_inst|Add3~30_combout\,
	cout => \contador_inst|Add3~31\);

-- Location: FF_X46_Y14_N31
\contador_inst|cont1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~30_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(15));

-- Location: LCCOMB_X46_Y13_N0
\contador_inst|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~32_combout\ = (\contador_inst|cont1\(16) & (\contador_inst|Add3~31\ $ (GND))) # (!\contador_inst|cont1\(16) & (!\contador_inst|Add3~31\ & VCC))
-- \contador_inst|Add3~33\ = CARRY((\contador_inst|cont1\(16) & !\contador_inst|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(16),
	datad => VCC,
	cin => \contador_inst|Add3~31\,
	combout => \contador_inst|Add3~32_combout\,
	cout => \contador_inst|Add3~33\);

-- Location: FF_X46_Y13_N1
\contador_inst|cont1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~32_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(16));

-- Location: LCCOMB_X46_Y13_N2
\contador_inst|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~34_combout\ = (\contador_inst|cont1\(17) & (!\contador_inst|Add3~33\)) # (!\contador_inst|cont1\(17) & ((\contador_inst|Add3~33\) # (GND)))
-- \contador_inst|Add3~35\ = CARRY((!\contador_inst|Add3~33\) # (!\contador_inst|cont1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(17),
	datad => VCC,
	cin => \contador_inst|Add3~33\,
	combout => \contador_inst|Add3~34_combout\,
	cout => \contador_inst|Add3~35\);

-- Location: FF_X46_Y13_N3
\contador_inst|cont1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~34_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(17));

-- Location: LCCOMB_X46_Y13_N4
\contador_inst|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~36_combout\ = (\contador_inst|cont1\(18) & (\contador_inst|Add3~35\ $ (GND))) # (!\contador_inst|cont1\(18) & (!\contador_inst|Add3~35\ & VCC))
-- \contador_inst|Add3~37\ = CARRY((\contador_inst|cont1\(18) & !\contador_inst|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(18),
	datad => VCC,
	cin => \contador_inst|Add3~35\,
	combout => \contador_inst|Add3~36_combout\,
	cout => \contador_inst|Add3~37\);

-- Location: FF_X46_Y13_N5
\contador_inst|cont1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~36_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(18));

-- Location: LCCOMB_X47_Y13_N12
\contador_inst|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~5_combout\ = (!\contador_inst|cont1\(17) & (!\contador_inst|cont1\(18) & (!\contador_inst|cont1\(15) & !\contador_inst|cont1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(17),
	datab => \contador_inst|cont1\(18),
	datac => \contador_inst|cont1\(15),
	datad => \contador_inst|cont1\(16),
	combout => \contador_inst|Equal3~5_combout\);

-- Location: LCCOMB_X47_Y14_N20
\contador_inst|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~6_combout\ = (!\contador_inst|cont1\(13) & (!\contador_inst|cont1\(14) & (!\contador_inst|cont1\(11) & !\contador_inst|cont1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(13),
	datab => \contador_inst|cont1\(14),
	datac => \contador_inst|cont1\(11),
	datad => \contador_inst|cont1\(12),
	combout => \contador_inst|Equal3~6_combout\);

-- Location: LCCOMB_X47_Y14_N14
\contador_inst|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~7_combout\ = (!\contador_inst|cont1\(9) & !\contador_inst|cont1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|cont1\(9),
	datad => \contador_inst|cont1\(10),
	combout => \contador_inst|Equal3~7_combout\);

-- Location: LCCOMB_X47_Y14_N24
\contador_inst|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~8_combout\ = (!\contador_inst|cont1\(6) & (!\contador_inst|cont1\(4) & (\contador_inst|cont1\(0) & !\contador_inst|cont1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(6),
	datab => \contador_inst|cont1\(4),
	datac => \contador_inst|cont1\(0),
	datad => \contador_inst|cont1\(5),
	combout => \contador_inst|Equal3~8_combout\);

-- Location: LCCOMB_X47_Y14_N30
\contador_inst|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~9_combout\ = (!\contador_inst|cont1\(7) & (\contador_inst|Equal3~7_combout\ & (!\contador_inst|cont1\(8) & \contador_inst|Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(7),
	datab => \contador_inst|Equal3~7_combout\,
	datac => \contador_inst|cont1\(8),
	datad => \contador_inst|Equal3~8_combout\,
	combout => \contador_inst|Equal3~9_combout\);

-- Location: LCCOMB_X46_Y13_N6
\contador_inst|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~38_combout\ = (\contador_inst|cont1\(19) & (!\contador_inst|Add3~37\)) # (!\contador_inst|cont1\(19) & ((\contador_inst|Add3~37\) # (GND)))
-- \contador_inst|Add3~39\ = CARRY((!\contador_inst|Add3~37\) # (!\contador_inst|cont1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(19),
	datad => VCC,
	cin => \contador_inst|Add3~37\,
	combout => \contador_inst|Add3~38_combout\,
	cout => \contador_inst|Add3~39\);

-- Location: FF_X46_Y13_N7
\contador_inst|cont1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~38_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(19));

-- Location: LCCOMB_X46_Y13_N8
\contador_inst|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~40_combout\ = (\contador_inst|cont1\(20) & (\contador_inst|Add3~39\ $ (GND))) # (!\contador_inst|cont1\(20) & (!\contador_inst|Add3~39\ & VCC))
-- \contador_inst|Add3~41\ = CARRY((\contador_inst|cont1\(20) & !\contador_inst|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(20),
	datad => VCC,
	cin => \contador_inst|Add3~39\,
	combout => \contador_inst|Add3~40_combout\,
	cout => \contador_inst|Add3~41\);

-- Location: FF_X46_Y13_N9
\contador_inst|cont1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~40_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(20));

-- Location: LCCOMB_X46_Y13_N10
\contador_inst|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~42_combout\ = (\contador_inst|cont1\(21) & (!\contador_inst|Add3~41\)) # (!\contador_inst|cont1\(21) & ((\contador_inst|Add3~41\) # (GND)))
-- \contador_inst|Add3~43\ = CARRY((!\contador_inst|Add3~41\) # (!\contador_inst|cont1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(21),
	datad => VCC,
	cin => \contador_inst|Add3~41\,
	combout => \contador_inst|Add3~42_combout\,
	cout => \contador_inst|Add3~43\);

-- Location: FF_X46_Y13_N11
\contador_inst|cont1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~42_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(21));

-- Location: LCCOMB_X46_Y13_N12
\contador_inst|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~44_combout\ = (\contador_inst|cont1\(22) & (\contador_inst|Add3~43\ $ (GND))) # (!\contador_inst|cont1\(22) & (!\contador_inst|Add3~43\ & VCC))
-- \contador_inst|Add3~45\ = CARRY((\contador_inst|cont1\(22) & !\contador_inst|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(22),
	datad => VCC,
	cin => \contador_inst|Add3~43\,
	combout => \contador_inst|Add3~44_combout\,
	cout => \contador_inst|Add3~45\);

-- Location: FF_X46_Y13_N13
\contador_inst|cont1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~44_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(22));

-- Location: LCCOMB_X46_Y13_N14
\contador_inst|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~46_combout\ = (\contador_inst|cont1\(23) & (!\contador_inst|Add3~45\)) # (!\contador_inst|cont1\(23) & ((\contador_inst|Add3~45\) # (GND)))
-- \contador_inst|Add3~47\ = CARRY((!\contador_inst|Add3~45\) # (!\contador_inst|cont1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(23),
	datad => VCC,
	cin => \contador_inst|Add3~45\,
	combout => \contador_inst|Add3~46_combout\,
	cout => \contador_inst|Add3~47\);

-- Location: FF_X46_Y13_N15
\contador_inst|cont1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~46_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(23));

-- Location: LCCOMB_X46_Y13_N16
\contador_inst|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~48_combout\ = (\contador_inst|cont1\(24) & (\contador_inst|Add3~47\ $ (GND))) # (!\contador_inst|cont1\(24) & (!\contador_inst|Add3~47\ & VCC))
-- \contador_inst|Add3~49\ = CARRY((\contador_inst|cont1\(24) & !\contador_inst|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(24),
	datad => VCC,
	cin => \contador_inst|Add3~47\,
	combout => \contador_inst|Add3~48_combout\,
	cout => \contador_inst|Add3~49\);

-- Location: FF_X46_Y13_N17
\contador_inst|cont1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~48_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(24));

-- Location: LCCOMB_X46_Y13_N18
\contador_inst|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~50_combout\ = (\contador_inst|cont1\(25) & (!\contador_inst|Add3~49\)) # (!\contador_inst|cont1\(25) & ((\contador_inst|Add3~49\) # (GND)))
-- \contador_inst|Add3~51\ = CARRY((!\contador_inst|Add3~49\) # (!\contador_inst|cont1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(25),
	datad => VCC,
	cin => \contador_inst|Add3~49\,
	combout => \contador_inst|Add3~50_combout\,
	cout => \contador_inst|Add3~51\);

-- Location: FF_X46_Y13_N19
\contador_inst|cont1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~50_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(25));

-- Location: LCCOMB_X46_Y13_N20
\contador_inst|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~52_combout\ = (\contador_inst|cont1\(26) & (\contador_inst|Add3~51\ $ (GND))) # (!\contador_inst|cont1\(26) & (!\contador_inst|Add3~51\ & VCC))
-- \contador_inst|Add3~53\ = CARRY((\contador_inst|cont1\(26) & !\contador_inst|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(26),
	datad => VCC,
	cin => \contador_inst|Add3~51\,
	combout => \contador_inst|Add3~52_combout\,
	cout => \contador_inst|Add3~53\);

-- Location: FF_X46_Y13_N21
\contador_inst|cont1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~52_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(26));

-- Location: LCCOMB_X47_Y13_N6
\contador_inst|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~2_combout\ = (!\contador_inst|cont1\(23) & (!\contador_inst|cont1\(25) & (!\contador_inst|cont1\(24) & !\contador_inst|cont1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(23),
	datab => \contador_inst|cont1\(25),
	datac => \contador_inst|cont1\(24),
	datad => \contador_inst|cont1\(26),
	combout => \contador_inst|Equal3~2_combout\);

-- Location: LCCOMB_X46_Y13_N22
\contador_inst|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~54_combout\ = (\contador_inst|cont1\(27) & (!\contador_inst|Add3~53\)) # (!\contador_inst|cont1\(27) & ((\contador_inst|Add3~53\) # (GND)))
-- \contador_inst|Add3~55\ = CARRY((!\contador_inst|Add3~53\) # (!\contador_inst|cont1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(27),
	datad => VCC,
	cin => \contador_inst|Add3~53\,
	combout => \contador_inst|Add3~54_combout\,
	cout => \contador_inst|Add3~55\);

-- Location: FF_X46_Y13_N23
\contador_inst|cont1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~54_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(27));

-- Location: LCCOMB_X46_Y13_N24
\contador_inst|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~56_combout\ = (\contador_inst|cont1\(28) & (\contador_inst|Add3~55\ $ (GND))) # (!\contador_inst|cont1\(28) & (!\contador_inst|Add3~55\ & VCC))
-- \contador_inst|Add3~57\ = CARRY((\contador_inst|cont1\(28) & !\contador_inst|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(28),
	datad => VCC,
	cin => \contador_inst|Add3~55\,
	combout => \contador_inst|Add3~56_combout\,
	cout => \contador_inst|Add3~57\);

-- Location: FF_X46_Y13_N25
\contador_inst|cont1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~56_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(28));

-- Location: LCCOMB_X46_Y13_N26
\contador_inst|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~58_combout\ = (\contador_inst|cont1\(29) & (!\contador_inst|Add3~57\)) # (!\contador_inst|cont1\(29) & ((\contador_inst|Add3~57\) # (GND)))
-- \contador_inst|Add3~59\ = CARRY((!\contador_inst|Add3~57\) # (!\contador_inst|cont1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(29),
	datad => VCC,
	cin => \contador_inst|Add3~57\,
	combout => \contador_inst|Add3~58_combout\,
	cout => \contador_inst|Add3~59\);

-- Location: FF_X46_Y13_N27
\contador_inst|cont1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~58_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(29));

-- Location: LCCOMB_X46_Y13_N28
\contador_inst|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~60_combout\ = (\contador_inst|cont1\(30) & (\contador_inst|Add3~59\ $ (GND))) # (!\contador_inst|cont1\(30) & (!\contador_inst|Add3~59\ & VCC))
-- \contador_inst|Add3~61\ = CARRY((\contador_inst|cont1\(30) & !\contador_inst|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont1\(30),
	datad => VCC,
	cin => \contador_inst|Add3~59\,
	combout => \contador_inst|Add3~60_combout\,
	cout => \contador_inst|Add3~61\);

-- Location: FF_X46_Y13_N29
\contador_inst|cont1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~60_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(30));

-- Location: LCCOMB_X47_Y13_N20
\contador_inst|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~1_combout\ = (!\contador_inst|cont1\(30) & (!\contador_inst|cont1\(28) & (!\contador_inst|cont1\(29) & !\contador_inst|cont1\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(30),
	datab => \contador_inst|cont1\(28),
	datac => \contador_inst|cont1\(29),
	datad => \contador_inst|cont1\(27),
	combout => \contador_inst|Equal3~1_combout\);

-- Location: LCCOMB_X47_Y13_N8
\contador_inst|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~3_combout\ = (!\contador_inst|cont1\(20) & (!\contador_inst|cont1\(19) & (!\contador_inst|cont1\(22) & !\contador_inst|cont1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(20),
	datab => \contador_inst|cont1\(19),
	datac => \contador_inst|cont1\(22),
	datad => \contador_inst|cont1\(21),
	combout => \contador_inst|Equal3~3_combout\);

-- Location: LCCOMB_X46_Y13_N30
\contador_inst|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add3~62_combout\ = \contador_inst|cont1\(31) $ (\contador_inst|Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(31),
	cin => \contador_inst|Add3~61\,
	combout => \contador_inst|Add3~62_combout\);

-- Location: FF_X46_Y13_N31
\contador_inst|cont1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|Add3~62_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(31));

-- Location: LCCOMB_X47_Y13_N18
\contador_inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~0_combout\ = (!\contador_inst|cont1\(31) & (!\contador_inst|cont1\(2) & (!\contador_inst|cont1\(1) & \contador_inst|cont1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(31),
	datab => \contador_inst|cont1\(2),
	datac => \contador_inst|cont1\(1),
	datad => \contador_inst|cont1\(3),
	combout => \contador_inst|Equal3~0_combout\);

-- Location: LCCOMB_X47_Y13_N10
\contador_inst|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~4_combout\ = (\contador_inst|Equal3~2_combout\ & (\contador_inst|Equal3~1_combout\ & (\contador_inst|Equal3~3_combout\ & \contador_inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal3~2_combout\,
	datab => \contador_inst|Equal3~1_combout\,
	datac => \contador_inst|Equal3~3_combout\,
	datad => \contador_inst|Equal3~0_combout\,
	combout => \contador_inst|Equal3~4_combout\);

-- Location: LCCOMB_X47_Y13_N2
\contador_inst|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal3~10_combout\ = (\contador_inst|Equal3~5_combout\ & (\contador_inst|Equal3~6_combout\ & (\contador_inst|Equal3~9_combout\ & \contador_inst|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal3~5_combout\,
	datab => \contador_inst|Equal3~6_combout\,
	datac => \contador_inst|Equal3~9_combout\,
	datad => \contador_inst|Equal3~4_combout\,
	combout => \contador_inst|Equal3~10_combout\);

-- Location: LCCOMB_X45_Y14_N0
\contador_inst|cont1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont1~3_combout\ = (!\contador_inst|Equal3~10_combout\ & \contador_inst|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Equal3~10_combout\,
	datad => \contador_inst|Add3~6_combout\,
	combout => \contador_inst|cont1~3_combout\);

-- Location: FF_X45_Y14_N1
\contador_inst|cont1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~0clkctrl_outclk\,
	d => \contador_inst|cont1~3_combout\,
	clrn => \ALT_INV_reset_top~input_o\,
	ena => \contador_inst|cont1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont1\(3));

-- Location: LCCOMB_X47_Y13_N22
\BCD_inst_A|inter_saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_A|inter_saida[0]~0_combout\ = (\contador_inst|cont1\(1) & (!\contador_inst|cont1\(3) & ((!\contador_inst|cont1\(2)) # (!\contador_inst|cont1\(0))))) # (!\contador_inst|cont1\(1) & ((\contador_inst|cont1\(3) $ (\contador_inst|cont1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(0),
	datab => \contador_inst|cont1\(3),
	datac => \contador_inst|cont1\(1),
	datad => \contador_inst|cont1\(2),
	combout => \BCD_inst_A|inter_saida[0]~0_combout\);

-- Location: LCCOMB_X45_Y14_N22
\MUX4_1_inst|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[0]~0_combout\ = (\Display_Control_inst|s\(0) & (((\Display_Control_inst|s\(1))) # (!\BCD_inst_B|inter_saida[0]~0_combout\))) # (!\Display_Control_inst|s\(0) & (((!\BCD_inst_A|inter_saida[0]~0_combout\ & !\Display_Control_inst|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_B|inter_saida[0]~0_combout\,
	datab => \BCD_inst_A|inter_saida[0]~0_combout\,
	datac => \Display_Control_inst|s\(0),
	datad => \Display_Control_inst|s\(1),
	combout => \MUX4_1_inst|saida[0]~0_combout\);

-- Location: LCCOMB_X46_Y10_N8
\MUX4_1_inst|saida[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[0]~1_combout\ = (\Display_Control_inst|s\(1) & ((\MUX4_1_inst|saida[0]~0_combout\ & (!\BCD_inst_D|inter_saida[0]~0_combout\)) # (!\MUX4_1_inst|saida[0]~0_combout\ & ((!\BCD_inst_C|inter_saida[0]~0_combout\))))) # 
-- (!\Display_Control_inst|s\(1) & (((\MUX4_1_inst|saida[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_D|inter_saida[0]~0_combout\,
	datab => \BCD_inst_C|inter_saida[0]~0_combout\,
	datac => \Display_Control_inst|s\(1),
	datad => \MUX4_1_inst|saida[0]~0_combout\,
	combout => \MUX4_1_inst|saida[0]~1_combout\);

-- Location: LCCOMB_X47_Y14_N4
\BCD_inst_D|inter_saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_D|inter_saida[1]~1_combout\ = (\contador_inst|cont4\(0) & (!\contador_inst|cont4\(1) & (\contador_inst|cont4\(2) $ (\contador_inst|cont4\(3))))) # (!\contador_inst|cont4\(0) & ((\contador_inst|cont4\(2) & (!\contador_inst|cont4\(3))) # 
-- (!\contador_inst|cont4\(2) & ((!\contador_inst|cont4\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(2),
	datac => \contador_inst|cont4\(3),
	datad => \contador_inst|cont4\(1),
	combout => \BCD_inst_D|inter_saida[1]~1_combout\);

-- Location: LCCOMB_X45_Y14_N20
\BCD_inst_B|inter_saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_B|inter_saida[1]~1_combout\ = (\contador_inst|cont2\(2) & (!\contador_inst|cont2\(3) & ((!\contador_inst|cont2\(0)) # (!\contador_inst|cont2\(1))))) # (!\contador_inst|cont2\(2) & (!\contador_inst|cont2\(1) & ((\contador_inst|cont2\(3)) # 
-- (!\contador_inst|cont2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datab => \contador_inst|cont2\(2),
	datac => \contador_inst|cont2\(0),
	datad => \contador_inst|cont2\(3),
	combout => \BCD_inst_B|inter_saida[1]~1_combout\);

-- Location: LCCOMB_X43_Y10_N4
\BCD_inst_C|inter_saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_C|inter_saida[1]~1_combout\ = (\contador_inst|cont3\(2) & (!\contador_inst|cont3\(3) & ((!\contador_inst|cont3\(0)) # (!\contador_inst|cont3\(1))))) # (!\contador_inst|cont3\(2) & (!\contador_inst|cont3\(1) & ((\contador_inst|cont3\(3)) # 
-- (!\contador_inst|cont3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(2),
	datab => \contador_inst|cont3\(1),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(3),
	combout => \BCD_inst_C|inter_saida[1]~1_combout\);

-- Location: LCCOMB_X47_Y13_N0
\BCD_inst_A|inter_saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_A|inter_saida[1]~1_combout\ = (\contador_inst|cont1\(0) & (!\contador_inst|cont1\(1) & (\contador_inst|cont1\(3) $ (\contador_inst|cont1\(2))))) # (!\contador_inst|cont1\(0) & ((\contador_inst|cont1\(2) & (!\contador_inst|cont1\(3))) # 
-- (!\contador_inst|cont1\(2) & ((!\contador_inst|cont1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(0),
	datab => \contador_inst|cont1\(3),
	datac => \contador_inst|cont1\(1),
	datad => \contador_inst|cont1\(2),
	combout => \BCD_inst_A|inter_saida[1]~1_combout\);

-- Location: LCCOMB_X45_Y14_N18
\MUX4_1_inst|saida[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[1]~2_combout\ = (\Display_Control_inst|s\(0) & (\Display_Control_inst|s\(1))) # (!\Display_Control_inst|s\(0) & ((\Display_Control_inst|s\(1) & (!\BCD_inst_C|inter_saida[1]~1_combout\)) # (!\Display_Control_inst|s\(1) & 
-- ((!\BCD_inst_A|inter_saida[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|s\(0),
	datab => \Display_Control_inst|s\(1),
	datac => \BCD_inst_C|inter_saida[1]~1_combout\,
	datad => \BCD_inst_A|inter_saida[1]~1_combout\,
	combout => \MUX4_1_inst|saida[1]~2_combout\);

-- Location: LCCOMB_X45_Y14_N12
\MUX4_1_inst|saida[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[1]~3_combout\ = (\Display_Control_inst|s\(0) & ((\MUX4_1_inst|saida[1]~2_combout\ & (!\BCD_inst_D|inter_saida[1]~1_combout\)) # (!\MUX4_1_inst|saida[1]~2_combout\ & ((!\BCD_inst_B|inter_saida[1]~1_combout\))))) # 
-- (!\Display_Control_inst|s\(0) & (((\MUX4_1_inst|saida[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_D|inter_saida[1]~1_combout\,
	datab => \BCD_inst_B|inter_saida[1]~1_combout\,
	datac => \Display_Control_inst|s\(0),
	datad => \MUX4_1_inst|saida[1]~2_combout\,
	combout => \MUX4_1_inst|saida[1]~3_combout\);

-- Location: LCCOMB_X46_Y10_N22
\BCD_inst_C|inter_saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_C|inter_saida[2]~2_combout\ = (!\contador_inst|cont3\(0) & ((\contador_inst|cont3\(1) & (!\contador_inst|cont3\(3))) # (!\contador_inst|cont3\(1) & ((!\contador_inst|cont3\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(3),
	datab => \contador_inst|cont3\(2),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(1),
	combout => \BCD_inst_C|inter_saida[2]~2_combout\);

-- Location: LCCOMB_X46_Y10_N14
\BCD_inst_D|inter_saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_D|inter_saida[2]~2_combout\ = (!\contador_inst|cont4\(0) & ((\contador_inst|cont4\(1) & (!\contador_inst|cont4\(3))) # (!\contador_inst|cont4\(1) & ((!\contador_inst|cont4\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(3),
	datac => \contador_inst|cont4\(1),
	datad => \contador_inst|cont4\(2),
	combout => \BCD_inst_D|inter_saida[2]~2_combout\);

-- Location: LCCOMB_X45_Y14_N2
\BCD_inst_B|inter_saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_B|inter_saida[2]~2_combout\ = (!\contador_inst|cont2\(0) & ((\contador_inst|cont2\(1) & ((!\contador_inst|cont2\(3)))) # (!\contador_inst|cont2\(1) & (!\contador_inst|cont2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datab => \contador_inst|cont2\(2),
	datac => \contador_inst|cont2\(0),
	datad => \contador_inst|cont2\(3),
	combout => \BCD_inst_B|inter_saida[2]~2_combout\);

-- Location: LCCOMB_X47_Y13_N26
\BCD_inst_A|inter_saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_A|inter_saida[2]~2_combout\ = (!\contador_inst|cont1\(0) & ((\contador_inst|cont1\(1) & (!\contador_inst|cont1\(3))) # (!\contador_inst|cont1\(1) & ((!\contador_inst|cont1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(0),
	datab => \contador_inst|cont1\(3),
	datac => \contador_inst|cont1\(1),
	datad => \contador_inst|cont1\(2),
	combout => \BCD_inst_A|inter_saida[2]~2_combout\);

-- Location: LCCOMB_X46_Y10_N24
\MUX4_1_inst|saida[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[2]~4_combout\ = (\Display_Control_inst|s\(0) & (((\Display_Control_inst|s\(1))) # (!\BCD_inst_B|inter_saida[2]~2_combout\))) # (!\Display_Control_inst|s\(0) & (((!\Display_Control_inst|s\(1) & !\BCD_inst_A|inter_saida[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|s\(0),
	datab => \BCD_inst_B|inter_saida[2]~2_combout\,
	datac => \Display_Control_inst|s\(1),
	datad => \BCD_inst_A|inter_saida[2]~2_combout\,
	combout => \MUX4_1_inst|saida[2]~4_combout\);

-- Location: LCCOMB_X46_Y10_N0
\MUX4_1_inst|saida[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[2]~5_combout\ = (\Display_Control_inst|s\(1) & ((\MUX4_1_inst|saida[2]~4_combout\ & ((!\BCD_inst_D|inter_saida[2]~2_combout\))) # (!\MUX4_1_inst|saida[2]~4_combout\ & (!\BCD_inst_C|inter_saida[2]~2_combout\)))) # 
-- (!\Display_Control_inst|s\(1) & (((\MUX4_1_inst|saida[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_C|inter_saida[2]~2_combout\,
	datab => \Display_Control_inst|s\(1),
	datac => \BCD_inst_D|inter_saida[2]~2_combout\,
	datad => \MUX4_1_inst|saida[2]~4_combout\,
	combout => \MUX4_1_inst|saida[2]~5_combout\);

-- Location: LCCOMB_X45_Y14_N8
\BCD_inst_B|inter_saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_B|inter_saida[3]~3_combout\ = (\contador_inst|cont2\(1) & ((\contador_inst|cont2\(3)) # ((\contador_inst|cont2\(2) & \contador_inst|cont2\(0))))) # (!\contador_inst|cont2\(1) & (\contador_inst|cont2\(2) $ (((\contador_inst|cont2\(0) & 
-- !\contador_inst|cont2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datab => \contador_inst|cont2\(2),
	datac => \contador_inst|cont2\(0),
	datad => \contador_inst|cont2\(3),
	combout => \BCD_inst_B|inter_saida[3]~3_combout\);

-- Location: LCCOMB_X47_Y14_N0
\BCD_inst_D|inter_saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_D|inter_saida[3]~3_combout\ = (\contador_inst|cont4\(1) & ((\contador_inst|cont4\(3)) # ((\contador_inst|cont4\(0) & \contador_inst|cont4\(2))))) # (!\contador_inst|cont4\(1) & (\contador_inst|cont4\(2) $ (((\contador_inst|cont4\(0) & 
-- !\contador_inst|cont4\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(2),
	datac => \contador_inst|cont4\(3),
	datad => \contador_inst|cont4\(1),
	combout => \BCD_inst_D|inter_saida[3]~3_combout\);

-- Location: LCCOMB_X47_Y13_N24
\BCD_inst_A|inter_saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_A|inter_saida[3]~3_combout\ = (\contador_inst|cont1\(1) & ((\contador_inst|cont1\(3)) # ((\contador_inst|cont1\(0) & \contador_inst|cont1\(2))))) # (!\contador_inst|cont1\(1) & (\contador_inst|cont1\(2) $ (((\contador_inst|cont1\(0) & 
-- !\contador_inst|cont1\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(0),
	datab => \contador_inst|cont1\(3),
	datac => \contador_inst|cont1\(1),
	datad => \contador_inst|cont1\(2),
	combout => \BCD_inst_A|inter_saida[3]~3_combout\);

-- Location: LCCOMB_X46_Y10_N18
\BCD_inst_C|inter_saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_C|inter_saida[3]~3_combout\ = (\contador_inst|cont3\(1) & ((\contador_inst|cont3\(3)) # ((\contador_inst|cont3\(2) & \contador_inst|cont3\(0))))) # (!\contador_inst|cont3\(1) & (\contador_inst|cont3\(2) $ (((!\contador_inst|cont3\(3) & 
-- \contador_inst|cont3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(3),
	datab => \contador_inst|cont3\(2),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(1),
	combout => \BCD_inst_C|inter_saida[3]~3_combout\);

-- Location: LCCOMB_X47_Y14_N18
\MUX4_1_inst|saida[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[3]~6_combout\ = (\Display_Control_inst|s\(0) & (\Display_Control_inst|s\(1))) # (!\Display_Control_inst|s\(0) & ((\Display_Control_inst|s\(1) & ((\BCD_inst_C|inter_saida[3]~3_combout\))) # (!\Display_Control_inst|s\(1) & 
-- (\BCD_inst_A|inter_saida[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|s\(0),
	datab => \Display_Control_inst|s\(1),
	datac => \BCD_inst_A|inter_saida[3]~3_combout\,
	datad => \BCD_inst_C|inter_saida[3]~3_combout\,
	combout => \MUX4_1_inst|saida[3]~6_combout\);

-- Location: LCCOMB_X46_Y15_N24
\MUX4_1_inst|saida[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[3]~7_combout\ = (\Display_Control_inst|s\(0) & ((\MUX4_1_inst|saida[3]~6_combout\ & ((\BCD_inst_D|inter_saida[3]~3_combout\))) # (!\MUX4_1_inst|saida[3]~6_combout\ & (\BCD_inst_B|inter_saida[3]~3_combout\)))) # 
-- (!\Display_Control_inst|s\(0) & (((\MUX4_1_inst|saida[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_B|inter_saida[3]~3_combout\,
	datab => \BCD_inst_D|inter_saida[3]~3_combout\,
	datac => \Display_Control_inst|s\(0),
	datad => \MUX4_1_inst|saida[3]~6_combout\,
	combout => \MUX4_1_inst|saida[3]~7_combout\);

-- Location: LCCOMB_X46_Y10_N4
\BCD_inst_C|inter_saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_C|inter_saida[4]~4_combout\ = (\contador_inst|cont3\(2) & (!\contador_inst|cont3\(3))) # (!\contador_inst|cont3\(2) & (((!\contador_inst|cont3\(3) & \contador_inst|cont3\(0))) # (!\contador_inst|cont3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(3),
	datab => \contador_inst|cont3\(2),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(1),
	combout => \BCD_inst_C|inter_saida[4]~4_combout\);

-- Location: LCCOMB_X45_Y14_N26
\BCD_inst_B|inter_saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_B|inter_saida[4]~4_combout\ = (\contador_inst|cont2\(2) & (((!\contador_inst|cont2\(3))))) # (!\contador_inst|cont2\(2) & (((\contador_inst|cont2\(0) & !\contador_inst|cont2\(3))) # (!\contador_inst|cont2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datab => \contador_inst|cont2\(2),
	datac => \contador_inst|cont2\(0),
	datad => \contador_inst|cont2\(3),
	combout => \BCD_inst_B|inter_saida[4]~4_combout\);

-- Location: LCCOMB_X47_Y13_N30
\BCD_inst_A|inter_saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_A|inter_saida[4]~4_combout\ = (\contador_inst|cont1\(2) & (((!\contador_inst|cont1\(3))))) # (!\contador_inst|cont1\(2) & (((\contador_inst|cont1\(0) & !\contador_inst|cont1\(3))) # (!\contador_inst|cont1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(0),
	datab => \contador_inst|cont1\(3),
	datac => \contador_inst|cont1\(1),
	datad => \contador_inst|cont1\(2),
	combout => \BCD_inst_A|inter_saida[4]~4_combout\);

-- Location: LCCOMB_X47_Y14_N26
\MUX4_1_inst|saida[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[4]~8_combout\ = (\Display_Control_inst|s\(1) & (((\Display_Control_inst|s\(0))))) # (!\Display_Control_inst|s\(1) & ((\Display_Control_inst|s\(0) & (!\BCD_inst_B|inter_saida[4]~4_combout\)) # (!\Display_Control_inst|s\(0) & 
-- ((!\BCD_inst_A|inter_saida[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_B|inter_saida[4]~4_combout\,
	datab => \Display_Control_inst|s\(1),
	datac => \Display_Control_inst|s\(0),
	datad => \BCD_inst_A|inter_saida[4]~4_combout\,
	combout => \MUX4_1_inst|saida[4]~8_combout\);

-- Location: LCCOMB_X47_Y14_N28
\BCD_inst_D|inter_saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_D|inter_saida[4]~4_combout\ = (\contador_inst|cont4\(2) & (((!\contador_inst|cont4\(3))))) # (!\contador_inst|cont4\(2) & (((\contador_inst|cont4\(0) & !\contador_inst|cont4\(3))) # (!\contador_inst|cont4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(2),
	datac => \contador_inst|cont4\(3),
	datad => \contador_inst|cont4\(1),
	combout => \BCD_inst_D|inter_saida[4]~4_combout\);

-- Location: LCCOMB_X47_Y14_N10
\MUX4_1_inst|saida[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[4]~9_combout\ = (\Display_Control_inst|s\(1) & ((\MUX4_1_inst|saida[4]~8_combout\ & ((!\BCD_inst_D|inter_saida[4]~4_combout\))) # (!\MUX4_1_inst|saida[4]~8_combout\ & (!\BCD_inst_C|inter_saida[4]~4_combout\)))) # 
-- (!\Display_Control_inst|s\(1) & (((\MUX4_1_inst|saida[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_C|inter_saida[4]~4_combout\,
	datab => \Display_Control_inst|s\(1),
	datac => \MUX4_1_inst|saida[4]~8_combout\,
	datad => \BCD_inst_D|inter_saida[4]~4_combout\,
	combout => \MUX4_1_inst|saida[4]~9_combout\);

-- Location: LCCOMB_X47_Y13_N28
\BCD_inst_D|inter_saida[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_D|inter_saida[5]~5_combout\ = (\contador_inst|cont4\(3) & (((\contador_inst|cont4\(2)) # (\contador_inst|cont4\(1))))) # (!\contador_inst|cont4\(3) & (\contador_inst|cont4\(2) & (\contador_inst|cont4\(0) $ (\contador_inst|cont4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(3),
	datac => \contador_inst|cont4\(2),
	datad => \contador_inst|cont4\(1),
	combout => \BCD_inst_D|inter_saida[5]~5_combout\);

-- Location: LCCOMB_X46_Y10_N30
\BCD_inst_C|inter_saida[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_C|inter_saida[5]~5_combout\ = (\contador_inst|cont3\(3) & ((\contador_inst|cont3\(2)) # ((\contador_inst|cont3\(1))))) # (!\contador_inst|cont3\(3) & (\contador_inst|cont3\(2) & (\contador_inst|cont3\(0) $ (\contador_inst|cont3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(3),
	datab => \contador_inst|cont3\(2),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(1),
	combout => \BCD_inst_C|inter_saida[5]~5_combout\);

-- Location: LCCOMB_X47_Y14_N6
\BCD_inst_A|inter_saida[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_A|inter_saida[5]~5_combout\ = (\contador_inst|cont1\(3) & ((\contador_inst|cont1\(2)) # ((\contador_inst|cont1\(1))))) # (!\contador_inst|cont1\(3) & (\contador_inst|cont1\(2) & (\contador_inst|cont1\(0) $ (\contador_inst|cont1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(3),
	datab => \contador_inst|cont1\(2),
	datac => \contador_inst|cont1\(0),
	datad => \contador_inst|cont1\(1),
	combout => \BCD_inst_A|inter_saida[5]~5_combout\);

-- Location: LCCOMB_X47_Y14_N16
\MUX4_1_inst|saida[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[5]~10_combout\ = (\Display_Control_inst|s\(1) & ((\BCD_inst_C|inter_saida[5]~5_combout\) # ((\Display_Control_inst|s\(0))))) # (!\Display_Control_inst|s\(1) & (((!\Display_Control_inst|s\(0) & \BCD_inst_A|inter_saida[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_C|inter_saida[5]~5_combout\,
	datab => \Display_Control_inst|s\(1),
	datac => \Display_Control_inst|s\(0),
	datad => \BCD_inst_A|inter_saida[5]~5_combout\,
	combout => \MUX4_1_inst|saida[5]~10_combout\);

-- Location: LCCOMB_X47_Y14_N12
\BCD_inst_B|inter_saida[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_B|inter_saida[5]~5_combout\ = (\contador_inst|cont2\(2) & ((\contador_inst|cont2\(3)) # (\contador_inst|cont2\(1) $ (\contador_inst|cont2\(0))))) # (!\contador_inst|cont2\(2) & (\contador_inst|cont2\(3) & (\contador_inst|cont2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(2),
	datab => \contador_inst|cont2\(3),
	datac => \contador_inst|cont2\(1),
	datad => \contador_inst|cont2\(0),
	combout => \BCD_inst_B|inter_saida[5]~5_combout\);

-- Location: LCCOMB_X47_Y14_N2
\MUX4_1_inst|saida[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[5]~11_combout\ = (\MUX4_1_inst|saida[5]~10_combout\ & ((\BCD_inst_D|inter_saida[5]~5_combout\) # ((!\Display_Control_inst|s\(0))))) # (!\MUX4_1_inst|saida[5]~10_combout\ & (((\Display_Control_inst|s\(0) & 
-- \BCD_inst_B|inter_saida[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_D|inter_saida[5]~5_combout\,
	datab => \MUX4_1_inst|saida[5]~10_combout\,
	datac => \Display_Control_inst|s\(0),
	datad => \BCD_inst_B|inter_saida[5]~5_combout\,
	combout => \MUX4_1_inst|saida[5]~11_combout\);

-- Location: LCCOMB_X46_Y10_N28
\BCD_inst_C|inter_saida[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_C|inter_saida[6]~6_combout\ = (\contador_inst|cont3\(1) & (!\contador_inst|cont3\(3))) # (!\contador_inst|cont3\(1) & (\contador_inst|cont3\(2) $ (((\contador_inst|cont3\(3)) # (!\contador_inst|cont3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont3\(3),
	datab => \contador_inst|cont3\(2),
	datac => \contador_inst|cont3\(0),
	datad => \contador_inst|cont3\(1),
	combout => \BCD_inst_C|inter_saida[6]~6_combout\);

-- Location: LCCOMB_X47_Y13_N14
\BCD_inst_D|inter_saida[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_D|inter_saida[6]~6_combout\ = (\contador_inst|cont4\(1) & (((!\contador_inst|cont4\(3))))) # (!\contador_inst|cont4\(1) & (\contador_inst|cont4\(2) $ (((\contador_inst|cont4\(3)) # (!\contador_inst|cont4\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(3),
	datac => \contador_inst|cont4\(2),
	datad => \contador_inst|cont4\(1),
	combout => \BCD_inst_D|inter_saida[6]~6_combout\);

-- Location: LCCOMB_X45_Y14_N4
\BCD_inst_B|inter_saida[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_B|inter_saida[6]~6_combout\ = (\contador_inst|cont2\(1) & (((!\contador_inst|cont2\(3))))) # (!\contador_inst|cont2\(1) & (\contador_inst|cont2\(2) $ (((\contador_inst|cont2\(3)) # (!\contador_inst|cont2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont2\(1),
	datab => \contador_inst|cont2\(2),
	datac => \contador_inst|cont2\(0),
	datad => \contador_inst|cont2\(3),
	combout => \BCD_inst_B|inter_saida[6]~6_combout\);

-- Location: LCCOMB_X47_Y14_N8
\BCD_inst_A|inter_saida[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_inst_A|inter_saida[6]~6_combout\ = (\contador_inst|cont1\(1) & (!\contador_inst|cont1\(3))) # (!\contador_inst|cont1\(1) & (\contador_inst|cont1\(2) $ (((\contador_inst|cont1\(3)) # (!\contador_inst|cont1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont1\(3),
	datab => \contador_inst|cont1\(2),
	datac => \contador_inst|cont1\(0),
	datad => \contador_inst|cont1\(1),
	combout => \BCD_inst_A|inter_saida[6]~6_combout\);

-- Location: LCCOMB_X47_Y14_N22
\MUX4_1_inst|saida[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[6]~12_combout\ = (\Display_Control_inst|s\(0) & (((\Display_Control_inst|s\(1))) # (!\BCD_inst_B|inter_saida[6]~6_combout\))) # (!\Display_Control_inst|s\(0) & (((!\BCD_inst_A|inter_saida[6]~6_combout\ & !\Display_Control_inst|s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display_Control_inst|s\(0),
	datab => \BCD_inst_B|inter_saida[6]~6_combout\,
	datac => \BCD_inst_A|inter_saida[6]~6_combout\,
	datad => \Display_Control_inst|s\(1),
	combout => \MUX4_1_inst|saida[6]~12_combout\);

-- Location: LCCOMB_X47_Y13_N16
\MUX4_1_inst|saida[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX4_1_inst|saida[6]~13_combout\ = (\Display_Control_inst|s\(1) & ((\MUX4_1_inst|saida[6]~12_combout\ & ((!\BCD_inst_D|inter_saida[6]~6_combout\))) # (!\MUX4_1_inst|saida[6]~12_combout\ & (!\BCD_inst_C|inter_saida[6]~6_combout\)))) # 
-- (!\Display_Control_inst|s\(1) & (((\MUX4_1_inst|saida[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_inst_C|inter_saida[6]~6_combout\,
	datab => \BCD_inst_D|inter_saida[6]~6_combout\,
	datac => \Display_Control_inst|s\(1),
	datad => \MUX4_1_inst|saida[6]~12_combout\,
	combout => \MUX4_1_inst|saida[6]~13_combout\);

ww_saida_display(0) <= \saida_display[0]~output_o\;

ww_saida_display(1) <= \saida_display[1]~output_o\;

ww_saida_display(2) <= \saida_display[2]~output_o\;

ww_saida_display(3) <= \saida_display[3]~output_o\;

ww_saida_mux_7bit(0) <= \saida_mux_7bit[0]~output_o\;

ww_saida_mux_7bit(1) <= \saida_mux_7bit[1]~output_o\;

ww_saida_mux_7bit(2) <= \saida_mux_7bit[2]~output_o\;

ww_saida_mux_7bit(3) <= \saida_mux_7bit[3]~output_o\;

ww_saida_mux_7bit(4) <= \saida_mux_7bit[4]~output_o\;

ww_saida_mux_7bit(5) <= \saida_mux_7bit[5]~output_o\;

ww_saida_mux_7bit(6) <= \saida_mux_7bit[6]~output_o\;

ww_saida_contador(0) <= \saida_contador[0]~output_o\;

ww_saida_contador(1) <= \saida_contador[1]~output_o\;

ww_saida_contador(2) <= \saida_contador[2]~output_o\;

ww_saida_contador(3) <= \saida_contador[3]~output_o\;

ww_saida_contador(4) <= \saida_contador[4]~output_o\;

ww_saida_contador(5) <= \saida_contador[5]~output_o\;

ww_saida_contador(6) <= \saida_contador[6]~output_o\;

ww_saida_contador(7) <= \saida_contador[7]~output_o\;

ww_saida_contador(8) <= \saida_contador[8]~output_o\;

ww_saida_contador(9) <= \saida_contador[9]~output_o\;

ww_saida_contador(10) <= \saida_contador[10]~output_o\;

ww_saida_contador(11) <= \saida_contador[11]~output_o\;

ww_saida_contador(12) <= \saida_contador[12]~output_o\;

ww_saida_contador(13) <= \saida_contador[13]~output_o\;

ww_saida_contador(14) <= \saida_contador[14]~output_o\;

ww_saida_contador(15) <= \saida_contador[15]~output_o\;

ww_saida_contador(16) <= \saida_contador[16]~output_o\;

ww_saida_contador(17) <= \saida_contador[17]~output_o\;

ww_saida_contador(18) <= \saida_contador[18]~output_o\;

ww_saida_contador(19) <= \saida_contador[19]~output_o\;

ww_saida_contador(20) <= \saida_contador[20]~output_o\;

ww_saida_contador(21) <= \saida_contador[21]~output_o\;

ww_saida_contador(22) <= \saida_contador[22]~output_o\;

ww_saida_contador(23) <= \saida_contador[23]~output_o\;

ww_saida_contador(24) <= \saida_contador[24]~output_o\;

ww_saida_contador(25) <= \saida_contador[25]~output_o\;

ww_saida_contador(26) <= \saida_contador[26]~output_o\;

ww_saida_contador(27) <= \saida_contador[27]~output_o\;
END structure;


