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

-- DATE "12/02/2023 21:53:07"

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
	saida_teste : OUT std_logic_vector(3 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- saida_teste[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_teste[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_teste[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_teste[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_top	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_top	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botao_seletor	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_saida_teste : std_logic_vector(3 DOWNTO 0);
SIGNAL \botao_seletor~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|clock_saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_top~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_top~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida_teste[0]~output_o\ : std_logic;
SIGNAL \saida_teste[1]~output_o\ : std_logic;
SIGNAL \saida_teste[2]~output_o\ : std_logic;
SIGNAL \saida_teste[3]~output_o\ : std_logic;
SIGNAL \botao_seletor~input_o\ : std_logic;
SIGNAL \botao_seletor~inputclkctrl_outclk\ : std_logic;
SIGNAL \control_inst|estado_atual.D~feeder_combout\ : std_logic;
SIGNAL \reset_top~input_o\ : std_logic;
SIGNAL \reset_top~inputclkctrl_outclk\ : std_logic;
SIGNAL \control_inst|estado_atual.D~q\ : std_logic;
SIGNAL \control_inst|estado_atual.RESET_estado~feeder_combout\ : std_logic;
SIGNAL \control_inst|estado_atual.RESET_estado~q\ : std_logic;
SIGNAL \control_inst|proximo_estado.A~combout\ : std_logic;
SIGNAL \control_inst|estado_atual.A~feeder_combout\ : std_logic;
SIGNAL \control_inst|estado_atual.A~q\ : std_logic;
SIGNAL \control_inst|estado_atual.B~feeder_combout\ : std_logic;
SIGNAL \control_inst|estado_atual.B~q\ : std_logic;
SIGNAL \control_inst|estado_atual.C~feeder_combout\ : std_logic;
SIGNAL \control_inst|estado_atual.C~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|Equal0~2_combout\ : std_logic;
SIGNAL \clock_top~input_o\ : std_logic;
SIGNAL \clock_top~inputclkctrl_outclk\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~15\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~16_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~17\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~18_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~23\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~28_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~29\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~31\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~32_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~37\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~12_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~39\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~14_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~41\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~15_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~43\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~44_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~45\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~13_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~12_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~13\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~14_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~12_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~15_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~16_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~17_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~13_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~49\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~50_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~14_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11_cout\ : std_logic;
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
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~23\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~24_combout\ : std_logic;
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
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~feeder_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~0_combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~combout\ : std_logic;
SIGNAL \control_inst|MUX_inst|clock_saida~clkctrl_outclk\ : std_logic;
SIGNAL \contador_inst|Add0~0_combout\ : std_logic;
SIGNAL \contador_inst|Add0~1\ : std_logic;
SIGNAL \contador_inst|Add0~2_combout\ : std_logic;
SIGNAL \contador_inst|cont4~1_combout\ : std_logic;
SIGNAL \contador_inst|Add0~3\ : std_logic;
SIGNAL \contador_inst|Add0~4_combout\ : std_logic;
SIGNAL \contador_inst|Add0~5\ : std_logic;
SIGNAL \contador_inst|Add0~6_combout\ : std_logic;
SIGNAL \contador_inst|cont4~2_combout\ : std_logic;
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
SIGNAL \contador_inst|Equal0~8_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~9_combout\ : std_logic;
SIGNAL \contador_inst|Add0~17\ : std_logic;
SIGNAL \contador_inst|Add0~18_combout\ : std_logic;
SIGNAL \contador_inst|Add0~19\ : std_logic;
SIGNAL \contador_inst|Add0~20_combout\ : std_logic;
SIGNAL \contador_inst|Add0~21\ : std_logic;
SIGNAL \contador_inst|Add0~22_combout\ : std_logic;
SIGNAL \contador_inst|Add0~23\ : std_logic;
SIGNAL \contador_inst|Add0~24_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~6_combout\ : std_logic;
SIGNAL \contador_inst|Add0~25\ : std_logic;
SIGNAL \contador_inst|Add0~26_combout\ : std_logic;
SIGNAL \contador_inst|Add0~27\ : std_logic;
SIGNAL \contador_inst|Add0~28_combout\ : std_logic;
SIGNAL \contador_inst|Add0~29\ : std_logic;
SIGNAL \contador_inst|Add0~30_combout\ : std_logic;
SIGNAL \contador_inst|Add0~31\ : std_logic;
SIGNAL \contador_inst|Add0~32_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~5_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~7_combout\ : std_logic;
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
SIGNAL \contador_inst|Equal0~1_combout\ : std_logic;
SIGNAL \contador_inst|Add0~57\ : std_logic;
SIGNAL \contador_inst|Add0~58_combout\ : std_logic;
SIGNAL \contador_inst|Add0~59\ : std_logic;
SIGNAL \contador_inst|Add0~60_combout\ : std_logic;
SIGNAL \contador_inst|Add0~61\ : std_logic;
SIGNAL \contador_inst|Add0~62_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~0_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~3_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~2_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~4_combout\ : std_logic;
SIGNAL \contador_inst|Equal0~10_combout\ : std_logic;
SIGNAL \contador_inst|cont4~0_combout\ : std_logic;
SIGNAL \contador_inst|cont4\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_reset_top~inputclkctrl_outclk\ : std_logic;

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
saida_teste <= ww_saida_teste;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\botao_seletor~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \botao_seletor~input_o\);

\control_inst|MUX_inst|clock_saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \control_inst|MUX_inst|clock_saida~combout\);

\reset_top~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_top~input_o\);

\clock_top~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_top~input_o\);
\ALT_INV_reset_top~inputclkctrl_outclk\ <= NOT \reset_top~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y7_N9
\saida_teste[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador_inst|cont4\(0),
	devoe => ww_devoe,
	o => \saida_teste[0]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\saida_teste[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador_inst|cont4\(1),
	devoe => ww_devoe,
	o => \saida_teste[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\saida_teste[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador_inst|cont4\(2),
	devoe => ww_devoe,
	o => \saida_teste[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\saida_teste[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador_inst|cont4\(3),
	devoe => ww_devoe,
	o => \saida_teste[3]~output_o\);

-- Location: IOIBUF_X0_Y16_N15
\botao_seletor~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botao_seletor,
	o => \botao_seletor~input_o\);

-- Location: CLKCTRL_G4
\botao_seletor~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \botao_seletor~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \botao_seletor~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y15_N28
\control_inst|estado_atual.D~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|estado_atual.D~feeder_combout\ = \control_inst|estado_atual.C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|estado_atual.C~q\,
	combout => \control_inst|estado_atual.D~feeder_combout\);

-- Location: IOIBUF_X0_Y16_N22
\reset_top~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_top,
	o => \reset_top~input_o\);

-- Location: CLKCTRL_G0
\reset_top~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_top~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_top~inputclkctrl_outclk\);

-- Location: FF_X1_Y15_N29
\control_inst|estado_atual.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	d => \control_inst|estado_atual.D~feeder_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.D~q\);

-- Location: LCCOMB_X1_Y15_N16
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

-- Location: FF_X1_Y15_N17
\control_inst|estado_atual.RESET_estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~inputclkctrl_outclk\,
	d => \control_inst|estado_atual.RESET_estado~feeder_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.RESET_estado~q\);

-- Location: LCCOMB_X1_Y15_N10
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

-- Location: LCCOMB_X1_Y15_N30
\control_inst|estado_atual.A~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|estado_atual.A~feeder_combout\ = \control_inst|proximo_estado.A~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|proximo_estado.A~combout\,
	combout => \control_inst|estado_atual.A~feeder_combout\);

-- Location: FF_X1_Y15_N31
\control_inst|estado_atual.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~inputclkctrl_outclk\,
	d => \control_inst|estado_atual.A~feeder_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.A~q\);

-- Location: LCCOMB_X1_Y15_N6
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

-- Location: FF_X1_Y15_N7
\control_inst|estado_atual.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	d => \control_inst|estado_atual.B~feeder_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.B~q\);

-- Location: LCCOMB_X1_Y15_N18
\control_inst|estado_atual.C~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|estado_atual.C~feeder_combout\ = \control_inst|estado_atual.B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|estado_atual.B~q\,
	combout => \control_inst|estado_atual.C~feeder_combout\);

-- Location: FF_X1_Y15_N19
\control_inst|estado_atual.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \botao_seletor~input_o\,
	d => \control_inst|estado_atual.C~feeder_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|estado_atual.C~q\);

-- Location: LCCOMB_X1_Y15_N26
\control_inst|MUX_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|Equal0~2_combout\ = (\control_inst|estado_atual.C~q\) # ((\control_inst|estado_atual.D~q\) # (\control_inst|estado_atual.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|estado_atual.C~q\,
	datac => \control_inst|estado_atual.D~q\,
	datad => \control_inst|estado_atual.B~q\,
	combout => \control_inst|MUX_inst|Equal0~2_combout\);

-- Location: IOIBUF_X0_Y16_N8
\clock_top~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_top,
	o => \clock_top~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X3_Y13_N6
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~0_combout\ = \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0) $ (VCC)
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\ = CARRY(\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0),
	datad => VCC,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~0_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\);

-- Location: FF_X3_Y13_N7
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0));

-- Location: LCCOMB_X3_Y13_N8
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~2_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~1\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~2_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\);

-- Location: FF_X3_Y13_N9
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1));

-- Location: LCCOMB_X1_Y13_N6
\control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\ $ (((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1) & \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0),
	datac => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\,
	combout => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~0_combout\);

-- Location: FF_X1_Y13_N7
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

-- Location: LCCOMB_X1_Y15_N12
\control_inst|MUX_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|Equal0~1_combout\ = (\control_inst|estado_atual.C~q\) # ((\control_inst|estado_atual.D~q\) # (!\control_inst|estado_atual.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|estado_atual.C~q\,
	datac => \control_inst|estado_atual.D~q\,
	datad => \control_inst|estado_atual.B~q\,
	combout => \control_inst|MUX_inst|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y13_N10
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~4_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~3\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~4_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\);

-- Location: FF_X3_Y13_N11
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2));

-- Location: LCCOMB_X3_Y13_N12
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~6_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~5\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~6_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\);

-- Location: FF_X3_Y13_N13
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3));

-- Location: LCCOMB_X3_Y13_N14
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~8_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~7\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~8_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\);

-- Location: FF_X3_Y13_N15
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4));

-- Location: LCCOMB_X3_Y13_N16
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~10_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~9\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~10_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\);

-- Location: FF_X3_Y13_N17
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5));

-- Location: LCCOMB_X4_Y13_N8
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1) & \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0),
	datad => VCC,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\);

-- Location: LCCOMB_X4_Y13_N10
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~1_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\);

-- Location: LCCOMB_X4_Y13_N12
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~3_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5_cout\);

-- Location: LCCOMB_X4_Y13_N14
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5_cout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~5_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7_cout\);

-- Location: LCCOMB_X4_Y13_N16
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~7_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9_cout\);

-- Location: LCCOMB_X4_Y13_N18
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9_cout\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9_cout\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9_cout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~9_cout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~11\);

-- Location: LCCOMB_X4_Y13_N22
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

-- Location: LCCOMB_X4_Y13_N24
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

-- Location: FF_X4_Y13_N25
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

-- Location: LCCOMB_X4_Y13_N26
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

-- Location: FF_X4_Y13_N27
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

-- Location: LCCOMB_X4_Y13_N28
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\ = CARRY((\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & !\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~19\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~21\);

-- Location: LCCOMB_X4_Y13_N4
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~20_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~8_combout\);

-- Location: FF_X4_Y13_N5
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[11]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11));

-- Location: LCCOMB_X4_Y13_N30
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

-- Location: LCCOMB_X5_Y12_N10
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~22_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~7_combout\);

-- Location: FF_X5_Y12_N11
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[12]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12));

-- Location: LCCOMB_X4_Y12_N0
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

-- Location: LCCOMB_X5_Y12_N2
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~24_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~6_combout\);

-- Location: FF_X5_Y12_N3
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[13]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13));

-- Location: LCCOMB_X4_Y12_N2
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~25\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~27\);

-- Location: LCCOMB_X5_Y12_N4
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~26_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~5_combout\);

-- Location: FF_X5_Y12_N5
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[14]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14));

-- Location: LCCOMB_X4_Y12_N4
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

-- Location: FF_X4_Y12_N5
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

-- Location: LCCOMB_X4_Y12_N6
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

-- Location: LCCOMB_X5_Y12_N28
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~30_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~4_combout\);

-- Location: FF_X5_Y12_N29
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[16]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16));

-- Location: LCCOMB_X5_Y12_N12
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14) & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(15),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(16),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(14),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(13),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y13_N0
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4) & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y13_N4
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~8_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2) & \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~8_combout\);

-- Location: LCCOMB_X4_Y13_N6
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(10) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(11) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(12) & 
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
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y12_N24
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\ & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\ & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~8_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~0_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~8_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y12_N8
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

-- Location: FF_X4_Y12_N9
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

-- Location: LCCOMB_X4_Y12_N10
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18) & 
-- ((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\ = CARRY((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~33\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~35\);

-- Location: LCCOMB_X5_Y12_N22
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~34_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~10_combout\);

-- Location: FF_X5_Y12_N23
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[18]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18));

-- Location: LCCOMB_X4_Y12_N12
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

-- Location: LCCOMB_X4_Y12_N24
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~36_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~11_combout\);

-- Location: FF_X4_Y12_N25
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[19]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19));

-- Location: LCCOMB_X4_Y12_N14
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

-- Location: LCCOMB_X4_Y12_N30
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~12_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~38_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~12_combout\);

-- Location: FF_X4_Y12_N31
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20));

-- Location: LCCOMB_X4_Y12_N16
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

-- Location: LCCOMB_X4_Y12_N28
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~14_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~40_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~14_combout\);

-- Location: FF_X4_Y12_N29
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21));

-- Location: LCCOMB_X4_Y12_N18
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

-- Location: LCCOMB_X4_Y12_N26
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~15_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~42_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~15_combout\);

-- Location: FF_X4_Y12_N27
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22));

-- Location: LCCOMB_X4_Y12_N20
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

-- Location: FF_X4_Y12_N21
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

-- Location: LCCOMB_X4_Y12_N22
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

-- Location: LCCOMB_X5_Y12_N26
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~13_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\)) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~46_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~13_combout\);

-- Location: FF_X5_Y12_N27
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24));

-- Location: LCCOMB_X5_Y12_N18
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20) & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(18),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(21),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(20),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(19),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y12_N30
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23) & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22) & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(24),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(23),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(22),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~4_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y13_N0
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9_combout\ = (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\ & (((!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\) # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Add0~10_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter~9_combout\);

-- Location: FF_X4_Y13_N1
\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter[6]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6));

-- Location: LCCOMB_X4_Y13_N20
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

-- Location: FF_X4_Y13_N21
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

-- Location: FF_X4_Y13_N23
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

-- Location: LCCOMB_X4_Y13_N2
\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\ = (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6) & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17) & 
-- !\control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(8),
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(6),
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(17),
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|counter\(7),
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y12_N0
\control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\ $ (((\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\ & (\control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~3_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~5_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|DIVISOR_25MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~0_combout\);

-- Location: FF_X5_Y12_N1
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

-- Location: LCCOMB_X1_Y15_N22
\control_inst|MUX_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|Equal0~0_combout\ = ((\control_inst|estado_atual.B~q\) # (\control_inst|estado_atual.D~q\)) # (!\control_inst|estado_atual.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|estado_atual.C~q\,
	datac => \control_inst|estado_atual.B~q\,
	datad => \control_inst|estado_atual.D~q\,
	combout => \control_inst|MUX_inst|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y13_N18
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~11\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\);

-- Location: FF_X3_Y13_N19
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6));

-- Location: LCCOMB_X3_Y13_N2
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3) & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~0_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y13_N20
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~13\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\);

-- Location: LCCOMB_X2_Y12_N0
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~14_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~11_combout\);

-- Location: FF_X2_Y12_N1
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[7]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7));

-- Location: LCCOMB_X3_Y13_N22
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~15\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~16_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\);

-- Location: FF_X3_Y13_N23
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[8]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8));

-- Location: LCCOMB_X3_Y13_N24
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~17\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~18_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\);

-- Location: FF_X3_Y13_N25
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[9]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(9));

-- Location: LCCOMB_X3_Y13_N26
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~19\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~20_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\);

-- Location: FF_X3_Y13_N27
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[10]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10));

-- Location: LCCOMB_X3_Y13_N28
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~21\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\);

-- Location: FF_X3_Y13_N29
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11));

-- Location: LCCOMB_X3_Y13_N30
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~23\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\);

-- Location: LCCOMB_X2_Y12_N28
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~24_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~10_combout\);

-- Location: FF_X2_Y12_N29
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[12]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12));

-- Location: LCCOMB_X3_Y12_N0
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~25\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\);

-- Location: LCCOMB_X2_Y12_N6
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~26_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~9_combout\);

-- Location: FF_X2_Y12_N7
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[13]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13));

-- Location: LCCOMB_X3_Y12_N2
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~27\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\);

-- Location: LCCOMB_X2_Y12_N22
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~28_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~8_combout\);

-- Location: FF_X2_Y12_N23
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[14]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14));

-- Location: LCCOMB_X3_Y12_N4
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~29\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\);

-- Location: LCCOMB_X2_Y12_N8
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~30_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~7_combout\);

-- Location: FF_X2_Y12_N9
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[15]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15));

-- Location: LCCOMB_X3_Y12_N6
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~31\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\);

-- Location: FF_X3_Y12_N7
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16));

-- Location: LCCOMB_X3_Y12_N8
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~33\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\);

-- Location: LCCOMB_X3_Y12_N10
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~35\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\);

-- Location: FF_X3_Y12_N11
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18));

-- Location: LCCOMB_X3_Y12_N12
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~37\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\);

-- Location: LCCOMB_X2_Y12_N10
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~12_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~38_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~12_combout\);

-- Location: FF_X2_Y12_N11
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19));

-- Location: LCCOMB_X3_Y12_N14
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~39\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\);

-- Location: LCCOMB_X3_Y12_N26
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~15_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~40_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~15_combout\);

-- Location: FF_X3_Y12_N27
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20));

-- Location: LCCOMB_X3_Y12_N16
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~41\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\);

-- Location: LCCOMB_X3_Y12_N28
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~16_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~42_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~16_combout\);

-- Location: FF_X3_Y12_N29
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21));

-- Location: LCCOMB_X3_Y12_N18
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~43\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\);

-- Location: LCCOMB_X3_Y12_N30
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~17_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~44_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~17_combout\);

-- Location: FF_X3_Y12_N31
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22));

-- Location: LCCOMB_X3_Y12_N20
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23) & 
-- ((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\) # (GND)))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\ = CARRY((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~45\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\);

-- Location: LCCOMB_X2_Y12_N14
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~13_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~46_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~13_combout\);

-- Location: FF_X2_Y12_N15
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23));

-- Location: LCCOMB_X3_Y12_N22
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24) & 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~49\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~47\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~49\);

-- Location: FF_X3_Y12_N23
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24));

-- Location: LCCOMB_X3_Y12_N24
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~50_combout\ = \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~49\ $ (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25),
	cin => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~49\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~50_combout\);

-- Location: LCCOMB_X2_Y12_N2
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~14_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~50_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # 
-- (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~50_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~14_combout\);

-- Location: FF_X2_Y12_N3
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25));

-- Location: LCCOMB_X2_Y12_N26
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23) & !\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(25),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(23),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(24),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y12_N20
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11) & 
-- !\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(13),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(12),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(11),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(10),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y12_N4
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\ = (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(18) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(7) & (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(8) & 
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
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y12_N24
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22) & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(19),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(21),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(22),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(20),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y12_N16
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\ & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\ & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~6_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~3_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~4_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~5_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y12_N12
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Add0~34_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter~6_combout\);

-- Location: FF_X2_Y12_N13
\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter[17]\ : dffeas
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
	q => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17));

-- Location: LCCOMB_X2_Y12_N30
\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15) & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14) & 
-- !\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(17),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(15),
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(14),
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(16),
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y12_N18
\control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\ $ (((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\ & (\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~2_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~7_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~0_combout\);

-- Location: FF_X2_Y12_N19
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

-- Location: LCCOMB_X1_Y15_N24
\control_inst|MUX_inst|clock_saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|clock_saida~2_combout\ = (\control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\ & ((\control_inst|estado_atual.D~q\) # ((\control_inst|estado_atual.B~q\ & \control_inst|estado_atual.C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|clock_out~q\,
	datab => \control_inst|estado_atual.D~q\,
	datac => \control_inst|estado_atual.B~q\,
	datad => \control_inst|estado_atual.C~q\,
	combout => \control_inst|MUX_inst|clock_saida~2_combout\);

-- Location: LCCOMB_X1_Y15_N20
\control_inst|MUX_inst|clock_saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|clock_saida~1_combout\ = (\control_inst|MUX_inst|Equal0~0_combout\ & ((!\control_inst|MUX_inst|clock_saida~2_combout\))) # (!\control_inst|MUX_inst|Equal0~0_combout\ & (!\control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_25MHz_inst|clock_out~q\,
	datac => \control_inst|MUX_inst|Equal0~0_combout\,
	datad => \control_inst|MUX_inst|clock_saida~2_combout\,
	combout => \control_inst|MUX_inst|clock_saida~1_combout\);

-- Location: LCCOMB_X1_Y13_N10
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1) & \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(1),
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(0),
	datad => VCC,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\);

-- Location: LCCOMB_X1_Y13_N12
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(2),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~1_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\);

-- Location: LCCOMB_X1_Y13_N14
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(3),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~3_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\);

-- Location: LCCOMB_X1_Y13_N16
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(4),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~5_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\);

-- Location: LCCOMB_X1_Y13_N18
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\ = CARRY((\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(5),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~7_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\);

-- Location: LCCOMB_X1_Y13_N20
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11_cout\ = CARRY((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\) # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_50MHz_inst|counter\(6),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~9_cout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11_cout\);

-- Location: LCCOMB_X1_Y13_N22
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11_cout\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11_cout\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~11_cout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~13\);

-- Location: LCCOMB_X1_Y13_N4
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\ & (((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~12_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~3_combout\);

-- Location: FF_X1_Y13_N5
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

-- Location: LCCOMB_X1_Y13_N24
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

-- Location: FF_X1_Y13_N25
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

-- Location: LCCOMB_X1_Y13_N26
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

-- Location: LCCOMB_X1_Y13_N0
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16_combout\ & (((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~16_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~2_combout\);

-- Location: FF_X1_Y13_N1
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

-- Location: LCCOMB_X1_Y13_N28
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

-- Location: LCCOMB_X1_Y13_N8
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18_combout\ & (((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~18_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~1_combout\);

-- Location: FF_X1_Y13_N9
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

-- Location: LCCOMB_X1_Y13_N30
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

-- Location: FF_X1_Y13_N31
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

-- Location: LCCOMB_X1_Y12_N0
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

-- Location: LCCOMB_X1_Y12_N2
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

-- Location: FF_X1_Y12_N3
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

-- Location: LCCOMB_X1_Y12_N4
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

-- Location: FF_X1_Y12_N5
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

-- Location: LCCOMB_X1_Y12_N6
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~27\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~29\);

-- Location: LCCOMB_X1_Y12_N24
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~28_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~4_combout\);

-- Location: FF_X1_Y12_N25
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

-- Location: LCCOMB_X1_Y12_N8
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

-- Location: FF_X1_Y12_N9
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

-- Location: LCCOMB_X1_Y12_N10
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

-- Location: FF_X1_Y12_N11
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

-- Location: LCCOMB_X1_Y12_N12
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

-- Location: FF_X1_Y12_N13
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

-- Location: LCCOMB_X1_Y12_N14
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\ $ (GND))) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & 
-- (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\ & VCC))
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\ = CARRY((\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & !\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19),
	datad => VCC,
	cin => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~35\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\,
	cout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~37\);

-- Location: LCCOMB_X1_Y12_N28
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\ & (((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~36_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~6_combout\);

-- Location: FF_X1_Y12_N29
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

-- Location: LCCOMB_X1_Y12_N16
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

-- Location: LCCOMB_X1_Y12_N30
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~38_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~7_combout\);

-- Location: FF_X1_Y12_N31
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

-- Location: LCCOMB_X1_Y12_N18
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

-- Location: FF_X1_Y12_N19
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

-- Location: LCCOMB_X1_Y12_N20
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

-- Location: FF_X1_Y12_N21
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

-- Location: LCCOMB_X1_Y12_N22
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

-- Location: LCCOMB_X1_Y12_N26
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44_combout\ & (((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~44_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~5_combout\);

-- Location: FF_X1_Y12_N27
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

-- Location: LCCOMB_X2_Y13_N16
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\ = (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9) & 
-- !\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(8),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(7),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(9),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(14),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y13_N22
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\ = (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17) & 
-- !\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(18),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(15),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(17),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(16),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y13_N2
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21) & 
-- !\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(20),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(19),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(21),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(22),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y13_N12
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(23) & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\ & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(23),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~1_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~2_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~3_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y13_N20
\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\ & (((!\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\) # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\)) 
-- # (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Add0~22_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter~0_combout\);

-- Location: FF_X2_Y13_N21
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

-- Location: LCCOMB_X2_Y13_N18
\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\ = (\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11) & (!\control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13) & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(12),
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(11),
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(13),
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|counter\(10),
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y13_N26
\control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\ = \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\ $ (((\control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\ & (\control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\ & 
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_50MHz_inst|Equal0~1_combout\,
	datab => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~0_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|Equal0~4_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\);

-- Location: LCCOMB_X2_Y13_N24
\control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~feeder_combout\ = \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~0_combout\,
	combout => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~feeder_combout\);

-- Location: FF_X2_Y13_N25
\control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_top~inputclkctrl_outclk\,
	d => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\);

-- Location: LCCOMB_X2_Y13_N28
\control_inst|MUX_inst|clock_saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|clock_saida~0_combout\ = (\control_inst|MUX_inst|Equal0~1_combout\ & (\control_inst|MUX_inst|clock_saida~1_combout\)) # (!\control_inst|MUX_inst|Equal0~1_combout\ & ((!\control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|Equal0~1_combout\,
	datac => \control_inst|MUX_inst|clock_saida~1_combout\,
	datad => \control_inst|MUX_inst|DIVISOR_10MHz_inst|clock_out~q\,
	combout => \control_inst|MUX_inst|clock_saida~0_combout\);

-- Location: LCCOMB_X2_Y13_N30
\control_inst|MUX_inst|clock_saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \control_inst|MUX_inst|clock_saida~combout\ = LCELL((\control_inst|MUX_inst|Equal0~2_combout\ & ((!\control_inst|MUX_inst|clock_saida~0_combout\))) # (!\control_inst|MUX_inst|Equal0~2_combout\ & (\control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_inst|MUX_inst|Equal0~2_combout\,
	datac => \control_inst|MUX_inst|DIVISOR_5MHz_inst|clock_out~q\,
	datad => \control_inst|MUX_inst|clock_saida~0_combout\,
	combout => \control_inst|MUX_inst|clock_saida~combout\);

-- Location: CLKCTRL_G1
\control_inst|MUX_inst|clock_saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control_inst|MUX_inst|clock_saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y7_N0
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

-- Location: LCCOMB_X51_Y7_N2
\contador_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~2_combout\ = (\contador_inst|cont4\(1) & (!\contador_inst|Add0~1\)) # (!\contador_inst|cont4\(1) & ((\contador_inst|Add0~1\) # (GND)))
-- \contador_inst|Add0~3\ = CARRY((!\contador_inst|Add0~1\) # (!\contador_inst|cont4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(1),
	datad => VCC,
	cin => \contador_inst|Add0~1\,
	combout => \contador_inst|Add0~2_combout\,
	cout => \contador_inst|Add0~3\);

-- Location: LCCOMB_X50_Y7_N6
\contador_inst|cont4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4~1_combout\ = (\contador_inst|Add0~2_combout\ & !\contador_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Add0~2_combout\,
	datad => \contador_inst|Equal0~10_combout\,
	combout => \contador_inst|cont4~1_combout\);

-- Location: FF_X51_Y7_N7
\contador_inst|cont4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	asdata => \contador_inst|cont4~1_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(1));

-- Location: LCCOMB_X51_Y7_N4
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

-- Location: FF_X51_Y7_N5
\contador_inst|cont4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~4_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(2));

-- Location: LCCOMB_X51_Y7_N6
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

-- Location: LCCOMB_X50_Y7_N16
\contador_inst|cont4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4~2_combout\ = (\contador_inst|Add0~6_combout\ & !\contador_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Add0~6_combout\,
	datad => \contador_inst|Equal0~10_combout\,
	combout => \contador_inst|cont4~2_combout\);

-- Location: FF_X51_Y7_N3
\contador_inst|cont4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	asdata => \contador_inst|cont4~2_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(3));

-- Location: LCCOMB_X51_Y7_N8
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

-- Location: FF_X51_Y7_N9
\contador_inst|cont4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~8_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(4));

-- Location: LCCOMB_X51_Y7_N10
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

-- Location: FF_X51_Y7_N11
\contador_inst|cont4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~10_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(5));

-- Location: LCCOMB_X51_Y7_N12
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

-- Location: FF_X51_Y7_N13
\contador_inst|cont4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~12_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(6));

-- Location: LCCOMB_X51_Y7_N14
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

-- Location: FF_X51_Y7_N15
\contador_inst|cont4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~14_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(7));

-- Location: LCCOMB_X51_Y7_N16
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

-- Location: FF_X51_Y7_N17
\contador_inst|cont4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~16_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(8));

-- Location: LCCOMB_X50_Y7_N26
\contador_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~8_combout\ = (!\contador_inst|cont4\(5) & (!\contador_inst|cont4\(6) & (!\contador_inst|cont4\(7) & !\contador_inst|cont4\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(5),
	datab => \contador_inst|cont4\(6),
	datac => \contador_inst|cont4\(7),
	datad => \contador_inst|cont4\(8),
	combout => \contador_inst|Equal0~8_combout\);

-- Location: LCCOMB_X50_Y7_N24
\contador_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~9_combout\ = (!\contador_inst|cont4\(4) & (\contador_inst|cont4\(3) & (\contador_inst|cont4\(1) & !\contador_inst|cont4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(4),
	datab => \contador_inst|cont4\(3),
	datac => \contador_inst|cont4\(1),
	datad => \contador_inst|cont4\(2),
	combout => \contador_inst|Equal0~9_combout\);

-- Location: LCCOMB_X51_Y7_N18
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

-- Location: FF_X51_Y7_N19
\contador_inst|cont4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~18_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(9));

-- Location: LCCOMB_X51_Y7_N20
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

-- Location: FF_X51_Y7_N21
\contador_inst|cont4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~20_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(10));

-- Location: LCCOMB_X51_Y7_N22
\contador_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~22_combout\ = (\contador_inst|cont4\(11) & (!\contador_inst|Add0~21\)) # (!\contador_inst|cont4\(11) & ((\contador_inst|Add0~21\) # (GND)))
-- \contador_inst|Add0~23\ = CARRY((!\contador_inst|Add0~21\) # (!\contador_inst|cont4\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(11),
	datad => VCC,
	cin => \contador_inst|Add0~21\,
	combout => \contador_inst|Add0~22_combout\,
	cout => \contador_inst|Add0~23\);

-- Location: FF_X51_Y7_N23
\contador_inst|cont4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~22_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(11));

-- Location: LCCOMB_X51_Y7_N24
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

-- Location: FF_X51_Y7_N25
\contador_inst|cont4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~24_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(12));

-- Location: LCCOMB_X50_Y7_N30
\contador_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~6_combout\ = (!\contador_inst|cont4\(12) & !\contador_inst|cont4\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador_inst|cont4\(12),
	datad => \contador_inst|cont4\(11),
	combout => \contador_inst|Equal0~6_combout\);

-- Location: LCCOMB_X51_Y7_N26
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

-- Location: FF_X51_Y7_N27
\contador_inst|cont4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~26_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(13));

-- Location: LCCOMB_X51_Y7_N28
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

-- Location: FF_X51_Y7_N29
\contador_inst|cont4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~28_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(14));

-- Location: LCCOMB_X51_Y7_N30
\contador_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Add0~30_combout\ = (\contador_inst|cont4\(15) & (!\contador_inst|Add0~29\)) # (!\contador_inst|cont4\(15) & ((\contador_inst|Add0~29\) # (GND)))
-- \contador_inst|Add0~31\ = CARRY((!\contador_inst|Add0~29\) # (!\contador_inst|cont4\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(15),
	datad => VCC,
	cin => \contador_inst|Add0~29\,
	combout => \contador_inst|Add0~30_combout\,
	cout => \contador_inst|Add0~31\);

-- Location: FF_X51_Y7_N31
\contador_inst|cont4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~30_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(15));

-- Location: LCCOMB_X51_Y6_N0
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

-- Location: FF_X51_Y6_N1
\contador_inst|cont4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~32_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(16));

-- Location: LCCOMB_X50_Y7_N12
\contador_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~5_combout\ = (!\contador_inst|cont4\(13) & (!\contador_inst|cont4\(14) & (!\contador_inst|cont4\(15) & !\contador_inst|cont4\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(13),
	datab => \contador_inst|cont4\(14),
	datac => \contador_inst|cont4\(15),
	datad => \contador_inst|cont4\(16),
	combout => \contador_inst|Equal0~5_combout\);

-- Location: LCCOMB_X50_Y7_N8
\contador_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~7_combout\ = (\contador_inst|Equal0~6_combout\ & (!\contador_inst|cont4\(9) & (!\contador_inst|cont4\(10) & \contador_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal0~6_combout\,
	datab => \contador_inst|cont4\(9),
	datac => \contador_inst|cont4\(10),
	datad => \contador_inst|Equal0~5_combout\,
	combout => \contador_inst|Equal0~7_combout\);

-- Location: LCCOMB_X51_Y6_N2
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

-- Location: FF_X51_Y6_N3
\contador_inst|cont4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~34_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(17));

-- Location: LCCOMB_X51_Y6_N4
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

-- Location: FF_X51_Y6_N5
\contador_inst|cont4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~36_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(18));

-- Location: LCCOMB_X51_Y6_N6
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

-- Location: FF_X51_Y6_N7
\contador_inst|cont4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~38_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(19));

-- Location: LCCOMB_X51_Y6_N8
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

-- Location: FF_X51_Y6_N9
\contador_inst|cont4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~40_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(20));

-- Location: LCCOMB_X51_Y6_N10
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

-- Location: FF_X51_Y6_N11
\contador_inst|cont4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~42_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(21));

-- Location: LCCOMB_X51_Y6_N12
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

-- Location: FF_X51_Y6_N13
\contador_inst|cont4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~44_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(22));

-- Location: LCCOMB_X51_Y6_N14
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

-- Location: FF_X51_Y6_N15
\contador_inst|cont4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~46_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(23));

-- Location: LCCOMB_X51_Y6_N16
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

-- Location: FF_X51_Y6_N17
\contador_inst|cont4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~48_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(24));

-- Location: LCCOMB_X51_Y6_N18
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

-- Location: FF_X51_Y6_N19
\contador_inst|cont4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~50_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(25));

-- Location: LCCOMB_X51_Y6_N20
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

-- Location: FF_X51_Y6_N21
\contador_inst|cont4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~52_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(26));

-- Location: LCCOMB_X51_Y6_N22
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

-- Location: FF_X51_Y6_N23
\contador_inst|cont4[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~54_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(27));

-- Location: LCCOMB_X51_Y6_N24
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

-- Location: FF_X51_Y6_N25
\contador_inst|cont4[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~56_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(28));

-- Location: LCCOMB_X50_Y6_N0
\contador_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~1_combout\ = (!\contador_inst|cont4\(25) & (!\contador_inst|cont4\(28) & (!\contador_inst|cont4\(26) & !\contador_inst|cont4\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(25),
	datab => \contador_inst|cont4\(28),
	datac => \contador_inst|cont4\(26),
	datad => \contador_inst|cont4\(27),
	combout => \contador_inst|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y6_N26
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

-- Location: FF_X51_Y6_N27
\contador_inst|cont4[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~58_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(29));

-- Location: LCCOMB_X51_Y6_N28
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

-- Location: FF_X51_Y6_N29
\contador_inst|cont4[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~60_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(30));

-- Location: LCCOMB_X51_Y6_N30
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

-- Location: FF_X51_Y6_N31
\contador_inst|cont4[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	d => \contador_inst|Add0~62_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(31));

-- Location: LCCOMB_X50_Y7_N4
\contador_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~0_combout\ = (!\contador_inst|cont4\(0) & (!\contador_inst|cont4\(30) & (!\contador_inst|cont4\(29) & !\contador_inst|cont4\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(0),
	datab => \contador_inst|cont4\(30),
	datac => \contador_inst|cont4\(29),
	datad => \contador_inst|cont4\(31),
	combout => \contador_inst|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y6_N8
\contador_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~3_combout\ = (!\contador_inst|cont4\(18) & (!\contador_inst|cont4\(20) & (!\contador_inst|cont4\(19) & !\contador_inst|cont4\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(18),
	datab => \contador_inst|cont4\(20),
	datac => \contador_inst|cont4\(19),
	datad => \contador_inst|cont4\(17),
	combout => \contador_inst|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y6_N18
\contador_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~2_combout\ = (!\contador_inst|cont4\(21) & (!\contador_inst|cont4\(23) & (!\contador_inst|cont4\(22) & !\contador_inst|cont4\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|cont4\(21),
	datab => \contador_inst|cont4\(23),
	datac => \contador_inst|cont4\(22),
	datad => \contador_inst|cont4\(24),
	combout => \contador_inst|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y7_N10
\contador_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~4_combout\ = (\contador_inst|Equal0~1_combout\ & (\contador_inst|Equal0~0_combout\ & (\contador_inst|Equal0~3_combout\ & \contador_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal0~1_combout\,
	datab => \contador_inst|Equal0~0_combout\,
	datac => \contador_inst|Equal0~3_combout\,
	datad => \contador_inst|Equal0~2_combout\,
	combout => \contador_inst|Equal0~4_combout\);

-- Location: LCCOMB_X50_Y7_N2
\contador_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|Equal0~10_combout\ = (\contador_inst|Equal0~8_combout\ & (\contador_inst|Equal0~9_combout\ & (\contador_inst|Equal0~7_combout\ & \contador_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_inst|Equal0~8_combout\,
	datab => \contador_inst|Equal0~9_combout\,
	datac => \contador_inst|Equal0~7_combout\,
	datad => \contador_inst|Equal0~4_combout\,
	combout => \contador_inst|Equal0~10_combout\);

-- Location: LCCOMB_X50_Y7_N0
\contador_inst|cont4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador_inst|cont4~0_combout\ = (\contador_inst|Add0~0_combout\ & !\contador_inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador_inst|Add0~0_combout\,
	datad => \contador_inst|Equal0~10_combout\,
	combout => \contador_inst|cont4~0_combout\);

-- Location: FF_X51_Y7_N1
\contador_inst|cont4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \control_inst|MUX_inst|clock_saida~clkctrl_outclk\,
	asdata => \contador_inst|cont4~0_combout\,
	clrn => \ALT_INV_reset_top~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_inst|cont4\(0));

ww_saida_teste(0) <= \saida_teste[0]~output_o\;

ww_saida_teste(1) <= \saida_teste[1]~output_o\;

ww_saida_teste(2) <= \saida_teste[2]~output_o\;

ww_saida_teste(3) <= \saida_teste[3]~output_o\;
END structure;


