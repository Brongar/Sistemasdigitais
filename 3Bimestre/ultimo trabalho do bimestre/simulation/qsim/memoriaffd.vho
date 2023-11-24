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

-- DATE "11/14/2023 13:45:50"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	final IS
    PORT (
	D : IN std_logic_vector(7 DOWNTO 0);
	Clock : IN std_logic;
	enderecoX : IN std_logic;
	enderecoY : IN std_logic;
	escrever : IN std_logic;
	ler : IN std_logic;
	Saida : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- Saida[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[2]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ler	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoY	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enderecoX	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- escrever	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_enderecoX : std_logic;
SIGNAL ww_enderecoY : std_logic;
SIGNAL ww_escrever : std_logic;
SIGNAL ww_ler : std_logic;
SIGNAL ww_Saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \flipflop01|cond~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flipflop00|cond~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flipflop11|cond~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flipflop10|cond~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Saida[0]~output_o\ : std_logic;
SIGNAL \Saida[1]~output_o\ : std_logic;
SIGNAL \Saida[2]~output_o\ : std_logic;
SIGNAL \Saida[3]~output_o\ : std_logic;
SIGNAL \Saida[4]~output_o\ : std_logic;
SIGNAL \Saida[5]~output_o\ : std_logic;
SIGNAL \Saida[6]~output_o\ : std_logic;
SIGNAL \Saida[7]~output_o\ : std_logic;
SIGNAL \enderecoY~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \escrever~input_o\ : std_logic;
SIGNAL \enderecoX~input_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \flipflop10|cond~combout\ : std_logic;
SIGNAL \flipflop10|cond~clkctrl_outclk\ : std_logic;
SIGNAL \flipflop10|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|cond~combout\ : std_logic;
SIGNAL \flipflop01|cond~clkctrl_outclk\ : std_logic;
SIGNAL \flipflop01|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \Saida~0_combout\ : std_logic;
SIGNAL \flipflop11|cond~combout\ : std_logic;
SIGNAL \flipflop11|cond~clkctrl_outclk\ : std_logic;
SIGNAL \flipflop11|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \flipflop00|cond~combout\ : std_logic;
SIGNAL \flipflop00|cond~clkctrl_outclk\ : std_logic;
SIGNAL \flipflop00|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \Saida~1_combout\ : std_logic;
SIGNAL \ler~input_o\ : std_logic;
SIGNAL \Saida~2_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \flipflop10|flipflop_1|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_1|sq~0_combout\ : std_logic;
SIGNAL \Saida~3_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_1|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_1|sq~0_combout\ : std_logic;
SIGNAL \Saida~4_combout\ : std_logic;
SIGNAL \Saida~5_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \flipflop11|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \Saida~7_combout\ : std_logic;
SIGNAL \flipflop10|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \Saida~6_combout\ : std_logic;
SIGNAL \Saida~8_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \flipflop00|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \Saida~10_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \flipflop10|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \Saida~9_combout\ : std_logic;
SIGNAL \Saida~11_combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \flipflop10|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \Saida~12_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \Saida~13_combout\ : std_logic;
SIGNAL \Saida~14_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \flipflop00|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \Saida~16_combout\ : std_logic;
SIGNAL \flipflop10|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \Saida~15_combout\ : std_logic;
SIGNAL \Saida~17_combout\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \flipflop00|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \Saida~19_combout\ : std_logic;
SIGNAL \flipflop10|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \Saida~18_combout\ : std_logic;
SIGNAL \Saida~20_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \flipflop01|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \flipflop10|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \Saida~21_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \Saida~22_combout\ : std_logic;
SIGNAL \Saida~23_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_D <= D;
ww_Clock <= Clock;
ww_enderecoX <= enderecoX;
ww_enderecoY <= enderecoY;
ww_escrever <= escrever;
ww_ler <= ler;
Saida <= ww_Saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\flipflop01|cond~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \flipflop01|cond~combout\);

\flipflop00|cond~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \flipflop00|cond~combout\);

\flipflop11|cond~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \flipflop11|cond~combout\);

\flipflop10|cond~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \flipflop10|cond~combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y28_N9
\Saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~2_combout\,
	devoe => ww_devoe,
	o => \Saida[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\Saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~5_combout\,
	devoe => ww_devoe,
	o => \Saida[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~8_combout\,
	devoe => ww_devoe,
	o => \Saida[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\Saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~11_combout\,
	devoe => ww_devoe,
	o => \Saida[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~14_combout\,
	devoe => ww_devoe,
	o => \Saida[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\Saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~17_combout\,
	devoe => ww_devoe,
	o => \Saida[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\Saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~20_combout\,
	devoe => ww_devoe,
	o => \Saida[6]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Saida~23_combout\,
	devoe => ww_devoe,
	o => \Saida[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N22
\enderecoY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoY,
	o => \enderecoY~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\escrever~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escrever,
	o => \escrever~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\enderecoX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoX,
	o => \enderecoX~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: LCCOMB_X52_Y17_N2
\flipflop10|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|cond~combout\ = (!\enderecoY~input_o\ & (\escrever~input_o\ & (\enderecoX~input_o\ & \Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \escrever~input_o\,
	datac => \enderecoX~input_o\,
	datad => \Clock~input_o\,
	combout => \flipflop10|cond~combout\);

-- Location: CLKCTRL_G6
\flipflop10|cond~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \flipflop10|cond~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \flipflop10|cond~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y24_N4
\flipflop10|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_0|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (!\D[0]~input_o\)) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((\flipflop10|flipflop_0|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \flipflop10|flipflop_0|sq~0_combout\,
	datad => \flipflop10|cond~clkctrl_outclk\,
	combout => \flipflop10|flipflop_0|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N6
\flipflop01|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|cond~combout\ = (\enderecoY~input_o\ & (\escrever~input_o\ & (!\enderecoX~input_o\ & \Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \escrever~input_o\,
	datac => \enderecoX~input_o\,
	datad => \Clock~input_o\,
	combout => \flipflop01|cond~combout\);

-- Location: CLKCTRL_G9
\flipflop01|cond~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \flipflop01|cond~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \flipflop01|cond~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y24_N2
\flipflop01|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_0|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((!\D[0]~input_o\))) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (\flipflop01|flipflop_0|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop01|flipflop_0|sq~0_combout\,
	datac => \D[0]~input_o\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_0|sq~0_combout\);

-- Location: LCCOMB_X3_Y24_N24
\Saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~0_combout\ = (\enderecoY~input_o\ & (((!\enderecoX~input_o\ & !\flipflop01|flipflop_0|sq~0_combout\)))) # (!\enderecoY~input_o\ & (!\flipflop10|flipflop_0|sq~0_combout\ & (\enderecoX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop10|flipflop_0|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop01|flipflop_0|sq~0_combout\,
	combout => \Saida~0_combout\);

-- Location: LCCOMB_X52_Y17_N24
\flipflop11|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|cond~combout\ = (\enderecoY~input_o\ & (\escrever~input_o\ & (\enderecoX~input_o\ & \Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \escrever~input_o\,
	datac => \enderecoX~input_o\,
	datad => \Clock~input_o\,
	combout => \flipflop11|cond~combout\);

-- Location: CLKCTRL_G8
\flipflop11|cond~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \flipflop11|cond~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \flipflop11|cond~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y24_N8
\flipflop11|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_0|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (!\D[0]~input_o\)) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((\flipflop11|flipflop_0|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \flipflop11|flipflop_0|sq~0_combout\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_0|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N26
\flipflop00|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|cond~combout\ = (!\enderecoY~input_o\ & (\escrever~input_o\ & (!\enderecoX~input_o\ & \Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \escrever~input_o\,
	datac => \enderecoX~input_o\,
	datad => \Clock~input_o\,
	combout => \flipflop00|cond~combout\);

-- Location: CLKCTRL_G7
\flipflop00|cond~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \flipflop00|cond~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \flipflop00|cond~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y24_N6
\flipflop00|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_0|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((!\D[0]~input_o\))) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (\flipflop00|flipflop_0|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop00|flipflop_0|sq~0_combout\,
	datab => \D[0]~input_o\,
	datac => \flipflop00|cond~clkctrl_outclk\,
	combout => \flipflop00|flipflop_0|sq~0_combout\);

-- Location: LCCOMB_X3_Y24_N18
\Saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~1_combout\ = (\enderecoX~input_o\ & (!\flipflop11|flipflop_0|sq~0_combout\ & ((\enderecoY~input_o\)))) # (!\enderecoX~input_o\ & (((!\flipflop00|flipflop_0|sq~0_combout\ & !\enderecoY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop11|flipflop_0|sq~0_combout\,
	datab => \flipflop00|flipflop_0|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \enderecoY~input_o\,
	combout => \Saida~1_combout\);

-- Location: IOIBUF_X0_Y16_N15
\ler~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ler,
	o => \ler~input_o\);

-- Location: LCCOMB_X3_Y24_N28
\Saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~2_combout\ = (!\escrever~input_o\ & (\ler~input_o\ & ((\Saida~0_combout\) # (\Saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Saida~0_combout\,
	datab => \Saida~1_combout\,
	datac => \escrever~input_o\,
	datad => \ler~input_o\,
	combout => \Saida~2_combout\);

-- Location: IOIBUF_X0_Y23_N15
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X3_Y24_N8
\flipflop10|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_1|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (!\D[1]~input_o\)) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((\flipflop10|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \flipflop10|flipflop_1|sq~0_combout\,
	datad => \flipflop10|cond~clkctrl_outclk\,
	combout => \flipflop10|flipflop_1|sq~0_combout\);

-- Location: LCCOMB_X3_Y24_N26
\flipflop01|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_1|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (!\D[1]~input_o\)) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((\flipflop01|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \flipflop01|flipflop_1|sq~0_combout\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_1|sq~0_combout\);

-- Location: LCCOMB_X3_Y24_N30
\Saida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~3_combout\ = (\enderecoX~input_o\ & (!\flipflop10|flipflop_1|sq~0_combout\ & ((!\enderecoY~input_o\)))) # (!\enderecoX~input_o\ & (((!\flipflop01|flipflop_1|sq~0_combout\ & \enderecoY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \flipflop10|flipflop_1|sq~0_combout\,
	datac => \flipflop01|flipflop_1|sq~0_combout\,
	datad => \enderecoY~input_o\,
	combout => \Saida~3_combout\);

-- Location: LCCOMB_X3_Y24_N20
\flipflop00|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_1|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (!\D[1]~input_o\)) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((\flipflop00|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \flipflop00|cond~clkctrl_outclk\,
	datad => \flipflop00|flipflop_1|sq~0_combout\,
	combout => \flipflop00|flipflop_1|sq~0_combout\);

-- Location: LCCOMB_X4_Y24_N24
\flipflop11|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_1|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (!\D[1]~input_o\)) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((\flipflop11|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \flipflop11|flipflop_1|sq~0_combout\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_1|sq~0_combout\);

-- Location: LCCOMB_X3_Y24_N16
\Saida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~4_combout\ = (\enderecoY~input_o\ & (((\enderecoX~input_o\ & !\flipflop11|flipflop_1|sq~0_combout\)))) # (!\enderecoY~input_o\ & (!\flipflop00|flipflop_1|sq~0_combout\ & (!\enderecoX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop00|flipflop_1|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop11|flipflop_1|sq~0_combout\,
	combout => \Saida~4_combout\);

-- Location: LCCOMB_X3_Y24_N10
\Saida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~5_combout\ = (!\escrever~input_o\ & (\ler~input_o\ & ((\Saida~3_combout\) # (\Saida~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escrever~input_o\,
	datab => \ler~input_o\,
	datac => \Saida~3_combout\,
	datad => \Saida~4_combout\,
	combout => \Saida~5_combout\);

-- Location: IOIBUF_X0_Y15_N8
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X3_Y22_N0
\flipflop11|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_2|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((!\D[2]~input_o\))) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (\flipflop11|flipflop_2|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop11|flipflop_2|sq~0_combout\,
	datac => \D[2]~input_o\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_2|sq~0_combout\);

-- Location: LCCOMB_X5_Y24_N4
\flipflop00|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_2|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (!\D[2]~input_o\)) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((\flipflop00|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \flipflop00|flipflop_2|sq~0_combout\,
	datad => \flipflop00|cond~clkctrl_outclk\,
	combout => \flipflop00|flipflop_2|sq~0_combout\);

-- Location: LCCOMB_X3_Y24_N22
\Saida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~7_combout\ = (\enderecoY~input_o\ & (!\flipflop11|flipflop_2|sq~0_combout\ & (\enderecoX~input_o\))) # (!\enderecoY~input_o\ & (((!\enderecoX~input_o\ & !\flipflop00|flipflop_2|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop11|flipflop_2|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop00|flipflop_2|sq~0_combout\,
	combout => \Saida~7_combout\);

-- Location: LCCOMB_X5_Y24_N8
\flipflop10|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_2|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (!\D[2]~input_o\)) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((\flipflop10|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \flipflop10|cond~clkctrl_outclk\,
	datad => \flipflop10|flipflop_2|sq~0_combout\,
	combout => \flipflop10|flipflop_2|sq~0_combout\);

-- Location: LCCOMB_X5_Y24_N18
\flipflop01|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_2|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (!\D[2]~input_o\)) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((\flipflop01|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \flipflop01|flipflop_2|sq~0_combout\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_2|sq~0_combout\);

-- Location: LCCOMB_X3_Y24_N12
\Saida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~6_combout\ = (\enderecoY~input_o\ & (((!\enderecoX~input_o\ & !\flipflop01|flipflop_2|sq~0_combout\)))) # (!\enderecoY~input_o\ & (!\flipflop10|flipflop_2|sq~0_combout\ & (\enderecoX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop10|flipflop_2|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop01|flipflop_2|sq~0_combout\,
	combout => \Saida~6_combout\);

-- Location: LCCOMB_X3_Y24_N0
\Saida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~8_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~7_combout\) # (\Saida~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Saida~7_combout\,
	datab => \ler~input_o\,
	datac => \escrever~input_o\,
	datad => \Saida~6_combout\,
	combout => \Saida~8_combout\);

-- Location: IOIBUF_X0_Y24_N22
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N4
\flipflop00|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_3|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (!\D[3]~input_o\)) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((\flipflop00|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \flipflop00|flipflop_3|sq~0_combout\,
	datad => \flipflop00|cond~clkctrl_outclk\,
	combout => \flipflop00|flipflop_3|sq~0_combout\);

-- Location: LCCOMB_X2_Y24_N18
\flipflop11|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_3|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((!\D[3]~input_o\))) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (\flipflop11|flipflop_3|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop11|flipflop_3|sq~0_combout\,
	datac => \D[3]~input_o\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_3|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N18
\Saida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~10_combout\ = (\enderecoY~input_o\ & (\enderecoX~input_o\ & ((!\flipflop11|flipflop_3|sq~0_combout\)))) # (!\enderecoY~input_o\ & (!\enderecoX~input_o\ & (!\flipflop00|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \enderecoX~input_o\,
	datac => \flipflop00|flipflop_3|sq~0_combout\,
	datad => \flipflop11|flipflop_3|sq~0_combout\,
	combout => \Saida~10_combout\);

-- Location: LCCOMB_X1_Y24_N26
\flipflop01|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_3|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (!\D[3]~input_o\)) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((\flipflop01|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \flipflop01|flipflop_3|sq~0_combout\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_3|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N8
\flipflop10|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_3|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (!\D[3]~input_o\)) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((\flipflop10|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \flipflop10|cond~clkctrl_outclk\,
	datad => \flipflop10|flipflop_3|sq~0_combout\,
	combout => \flipflop10|flipflop_3|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N24
\Saida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~9_combout\ = (\enderecoX~input_o\ & (((!\flipflop10|flipflop_3|sq~0_combout\ & !\enderecoY~input_o\)))) # (!\enderecoX~input_o\ & (!\flipflop01|flipflop_3|sq~0_combout\ & ((\enderecoY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop01|flipflop_3|sq~0_combout\,
	datab => \enderecoX~input_o\,
	datac => \flipflop10|flipflop_3|sq~0_combout\,
	datad => \enderecoY~input_o\,
	combout => \Saida~9_combout\);

-- Location: LCCOMB_X1_Y24_N20
\Saida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~11_combout\ = (!\escrever~input_o\ & (\ler~input_o\ & ((\Saida~10_combout\) # (\Saida~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escrever~input_o\,
	datab => \Saida~10_combout\,
	datac => \ler~input_o\,
	datad => \Saida~9_combout\,
	combout => \Saida~11_combout\);

-- Location: IOIBUF_X0_Y25_N8
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\flipflop10|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_4|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((!\D[4]~input_o\))) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (\flipflop10|flipflop_4|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop10|flipflop_4|sq~0_combout\,
	datab => \D[4]~input_o\,
	datac => \flipflop10|cond~clkctrl_outclk\,
	combout => \flipflop10|flipflop_4|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\flipflop01|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_4|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((!\D[4]~input_o\))) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (\flipflop01|flipflop_4|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop01|flipflop_4|sq~0_combout\,
	datac => \D[4]~input_o\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_4|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\Saida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~12_combout\ = (\enderecoY~input_o\ & (!\enderecoX~input_o\ & ((!\flipflop01|flipflop_4|sq~0_combout\)))) # (!\enderecoY~input_o\ & (\enderecoX~input_o\ & (!\flipflop10|flipflop_4|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \enderecoX~input_o\,
	datac => \flipflop10|flipflop_4|sq~0_combout\,
	datad => \flipflop01|flipflop_4|sq~0_combout\,
	combout => \Saida~12_combout\);

-- Location: LCCOMB_X1_Y25_N12
\flipflop11|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_4|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((!\D[4]~input_o\))) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (\flipflop11|flipflop_4|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop11|flipflop_4|sq~0_combout\,
	datab => \D[4]~input_o\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_4|sq~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\flipflop00|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_4|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((!\D[4]~input_o\))) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (\flipflop00|flipflop_4|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop00|flipflop_4|sq~0_combout\,
	datab => \D[4]~input_o\,
	datad => \flipflop00|cond~clkctrl_outclk\,
	combout => \flipflop00|flipflop_4|sq~0_combout\);

-- Location: LCCOMB_X1_Y25_N16
\Saida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~13_combout\ = (\enderecoY~input_o\ & (!\flipflop11|flipflop_4|sq~0_combout\ & (\enderecoX~input_o\))) # (!\enderecoY~input_o\ & (((!\enderecoX~input_o\ & !\flipflop00|flipflop_4|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop11|flipflop_4|sq~0_combout\,
	datab => \enderecoY~input_o\,
	datac => \enderecoX~input_o\,
	datad => \flipflop00|flipflop_4|sq~0_combout\,
	combout => \Saida~13_combout\);

-- Location: LCCOMB_X1_Y24_N16
\Saida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~14_combout\ = (!\escrever~input_o\ & (\ler~input_o\ & ((\Saida~12_combout\) # (\Saida~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escrever~input_o\,
	datab => \Saida~12_combout\,
	datac => \Saida~13_combout\,
	datad => \ler~input_o\,
	combout => \Saida~14_combout\);

-- Location: IOIBUF_X1_Y34_N1
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N30
\flipflop00|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_5|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (!\D[5]~input_o\)) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((\flipflop00|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datac => \flipflop00|flipflop_5|sq~0_combout\,
	datad => \flipflop00|cond~clkctrl_outclk\,
	combout => \flipflop00|flipflop_5|sq~0_combout\);

-- Location: LCCOMB_X3_Y25_N16
\flipflop11|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_5|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (!\D[5]~input_o\)) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((\flipflop11|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[5]~input_o\,
	datac => \flipflop11|flipflop_5|sq~0_combout\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_5|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\Saida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~16_combout\ = (\enderecoY~input_o\ & (\enderecoX~input_o\ & ((!\flipflop11|flipflop_5|sq~0_combout\)))) # (!\enderecoY~input_o\ & (!\enderecoX~input_o\ & (!\flipflop00|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \enderecoX~input_o\,
	datac => \flipflop00|flipflop_5|sq~0_combout\,
	datad => \flipflop11|flipflop_5|sq~0_combout\,
	combout => \Saida~16_combout\);

-- Location: LCCOMB_X1_Y24_N2
\flipflop10|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_5|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (!\D[5]~input_o\)) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((\flipflop10|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datab => \flipflop10|flipflop_5|sq~0_combout\,
	datac => \flipflop10|cond~clkctrl_outclk\,
	combout => \flipflop10|flipflop_5|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\flipflop01|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_5|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((!\D[5]~input_o\))) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (\flipflop01|flipflop_5|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flipflop01|flipflop_5|sq~0_combout\,
	datac => \D[5]~input_o\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_5|sq~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\Saida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~15_combout\ = (\enderecoY~input_o\ & (((!\enderecoX~input_o\ & !\flipflop01|flipflop_5|sq~0_combout\)))) # (!\enderecoY~input_o\ & (!\flipflop10|flipflop_5|sq~0_combout\ & (\enderecoX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop10|flipflop_5|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop01|flipflop_5|sq~0_combout\,
	combout => \Saida~15_combout\);

-- Location: LCCOMB_X1_Y24_N6
\Saida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~17_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~16_combout\) # (\Saida~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~16_combout\,
	datac => \escrever~input_o\,
	datad => \Saida~15_combout\,
	combout => \Saida~17_combout\);

-- Location: IOIBUF_X53_Y15_N8
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X52_Y15_N24
\flipflop00|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_6|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (!\D[6]~input_o\)) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((\flipflop00|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \flipflop00|flipflop_6|sq~0_combout\,
	datad => \flipflop00|cond~clkctrl_outclk\,
	combout => \flipflop00|flipflop_6|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N20
\flipflop11|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_6|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (!\D[6]~input_o\)) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((\flipflop11|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \flipflop11|flipflop_6|sq~0_combout\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_6|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N30
\Saida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~19_combout\ = (\enderecoY~input_o\ & (((\enderecoX~input_o\ & !\flipflop11|flipflop_6|sq~0_combout\)))) # (!\enderecoY~input_o\ & (!\flipflop00|flipflop_6|sq~0_combout\ & (!\enderecoX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop00|flipflop_6|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop11|flipflop_6|sq~0_combout\,
	combout => \Saida~19_combout\);

-- Location: LCCOMB_X52_Y17_N16
\flipflop10|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_6|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (!\D[6]~input_o\)) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((\flipflop10|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \flipflop10|flipflop_6|sq~0_combout\,
	datac => \flipflop10|cond~clkctrl_outclk\,
	combout => \flipflop10|flipflop_6|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N14
\flipflop01|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_6|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (!\D[6]~input_o\)) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((\flipflop01|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datac => \flipflop01|flipflop_6|sq~0_combout\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_6|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N0
\Saida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~18_combout\ = (\enderecoY~input_o\ & (((!\flipflop01|flipflop_6|sq~0_combout\ & !\enderecoX~input_o\)))) # (!\enderecoY~input_o\ & (!\flipflop10|flipflop_6|sq~0_combout\ & ((\enderecoX~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop10|flipflop_6|sq~0_combout\,
	datac => \flipflop01|flipflop_6|sq~0_combout\,
	datad => \enderecoX~input_o\,
	combout => \Saida~18_combout\);

-- Location: LCCOMB_X52_Y17_N8
\Saida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~20_combout\ = (!\escrever~input_o\ & (\ler~input_o\ & ((\Saida~19_combout\) # (\Saida~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Saida~19_combout\,
	datab => \Saida~18_combout\,
	datac => \escrever~input_o\,
	datad => \ler~input_o\,
	combout => \Saida~20_combout\);

-- Location: IOIBUF_X53_Y14_N8
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X52_Y17_N28
\flipflop01|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_7|sq~0_combout\ = (GLOBAL(\flipflop01|cond~clkctrl_outclk\) & ((!\D[7]~input_o\))) # (!GLOBAL(\flipflop01|cond~clkctrl_outclk\) & (\flipflop01|flipflop_7|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop01|flipflop_7|sq~0_combout\,
	datac => \D[7]~input_o\,
	datad => \flipflop01|cond~clkctrl_outclk\,
	combout => \flipflop01|flipflop_7|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N18
\flipflop10|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_7|sq~0_combout\ = (GLOBAL(\flipflop10|cond~clkctrl_outclk\) & ((!\D[7]~input_o\))) # (!GLOBAL(\flipflop10|cond~clkctrl_outclk\) & (\flipflop10|flipflop_7|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop10|flipflop_7|sq~0_combout\,
	datac => \flipflop10|cond~clkctrl_outclk\,
	datad => \D[7]~input_o\,
	combout => \flipflop10|flipflop_7|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N12
\Saida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~21_combout\ = (\enderecoY~input_o\ & (!\flipflop01|flipflop_7|sq~0_combout\ & (!\enderecoX~input_o\))) # (!\enderecoY~input_o\ & (((\enderecoX~input_o\ & !\flipflop10|flipflop_7|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop01|flipflop_7|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop10|flipflop_7|sq~0_combout\,
	combout => \Saida~21_combout\);

-- Location: LCCOMB_X52_Y17_N4
\flipflop11|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_7|sq~0_combout\ = (GLOBAL(\flipflop11|cond~clkctrl_outclk\) & (!\D[7]~input_o\)) # (!GLOBAL(\flipflop11|cond~clkctrl_outclk\) & ((\flipflop11|flipflop_7|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[7]~input_o\,
	datac => \flipflop11|flipflop_7|sq~0_combout\,
	datad => \flipflop11|cond~clkctrl_outclk\,
	combout => \flipflop11|flipflop_7|sq~0_combout\);

-- Location: LCCOMB_X51_Y15_N24
\flipflop00|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_7|sq~0_combout\ = (GLOBAL(\flipflop00|cond~clkctrl_outclk\) & ((!\D[7]~input_o\))) # (!GLOBAL(\flipflop00|cond~clkctrl_outclk\) & (\flipflop00|flipflop_7|sq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flipflop00|flipflop_7|sq~0_combout\,
	datac => \D[7]~input_o\,
	datad => \flipflop00|cond~clkctrl_outclk\,
	combout => \flipflop00|flipflop_7|sq~0_combout\);

-- Location: LCCOMB_X52_Y17_N22
\Saida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~22_combout\ = (\enderecoY~input_o\ & (!\flipflop11|flipflop_7|sq~0_combout\ & (\enderecoX~input_o\))) # (!\enderecoY~input_o\ & (((!\enderecoX~input_o\ & !\flipflop00|flipflop_7|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \flipflop11|flipflop_7|sq~0_combout\,
	datac => \enderecoX~input_o\,
	datad => \flipflop00|flipflop_7|sq~0_combout\,
	combout => \Saida~22_combout\);

-- Location: LCCOMB_X52_Y17_N10
\Saida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~23_combout\ = (!\escrever~input_o\ & (\ler~input_o\ & ((\Saida~21_combout\) # (\Saida~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Saida~21_combout\,
	datab => \escrever~input_o\,
	datac => \Saida~22_combout\,
	datad => \ler~input_o\,
	combout => \Saida~23_combout\);

ww_Saida(0) <= \Saida[0]~output_o\;

ww_Saida(1) <= \Saida[1]~output_o\;

ww_Saida(2) <= \Saida[2]~output_o\;

ww_Saida(3) <= \Saida[3]~output_o\;

ww_Saida(4) <= \Saida[4]~output_o\;

ww_Saida(5) <= \Saida[5]~output_o\;

ww_Saida(6) <= \Saida[6]~output_o\;

ww_Saida(7) <= \Saida[7]~output_o\;
END structure;


