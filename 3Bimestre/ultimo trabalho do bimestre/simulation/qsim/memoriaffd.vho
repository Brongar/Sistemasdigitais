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

-- DATE "11/05/2023 23:59:02"

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
SIGNAL \Saida[0]~output_o\ : std_logic;
SIGNAL \Saida[1]~output_o\ : std_logic;
SIGNAL \Saida[2]~output_o\ : std_logic;
SIGNAL \Saida[3]~output_o\ : std_logic;
SIGNAL \Saida[4]~output_o\ : std_logic;
SIGNAL \Saida[5]~output_o\ : std_logic;
SIGNAL \Saida[6]~output_o\ : std_logic;
SIGNAL \Saida[7]~output_o\ : std_logic;
SIGNAL \ler~input_o\ : std_logic;
SIGNAL \enderecoY~input_o\ : std_logic;
SIGNAL \enderecoX~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \escrever~input_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \flipflop01|cond~combout\ : std_logic;
SIGNAL \flipflop01|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \flipflop10|cond~combout\ : std_logic;
SIGNAL \flipflop10|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \Saida~0_combout\ : std_logic;
SIGNAL \flipflop00|cond~combout\ : std_logic;
SIGNAL \flipflop00|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|cond~combout\ : std_logic;
SIGNAL \flipflop11|flipflop_0|sq~0_combout\ : std_logic;
SIGNAL \Saida~1_combout\ : std_logic;
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
SIGNAL \flipflop10|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \Saida~6_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_2|sq~0_combout\ : std_logic;
SIGNAL \Saida~7_combout\ : std_logic;
SIGNAL \Saida~8_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \flipflop10|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \Saida~9_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_3|sq~0_combout\ : std_logic;
SIGNAL \Saida~10_combout\ : std_logic;
SIGNAL \Saida~11_combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \flipflop10|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \Saida~12_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_4|sq~0_combout\ : std_logic;
SIGNAL \Saida~13_combout\ : std_logic;
SIGNAL \Saida~14_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \flipflop10|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \Saida~15_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_5|sq~0_combout\ : std_logic;
SIGNAL \Saida~16_combout\ : std_logic;
SIGNAL \Saida~17_combout\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \flipflop10|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \Saida~18_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_6|sq~0_combout\ : std_logic;
SIGNAL \Saida~19_combout\ : std_logic;
SIGNAL \Saida~20_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \flipflop10|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \flipflop01|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \Saida~21_combout\ : std_logic;
SIGNAL \flipflop00|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \flipflop11|flipflop_7|sq~0_combout\ : std_logic;
SIGNAL \Saida~22_combout\ : std_logic;
SIGNAL \Saida~23_combout\ : std_logic;

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

\ler~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ler,
	o => \ler~input_o\);

\enderecoY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoY,
	o => \enderecoY~input_o\);

\enderecoX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enderecoX,
	o => \enderecoX~input_o\);

\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

\escrever~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_escrever,
	o => \escrever~input_o\);

\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\flipflop01|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|cond~combout\ = (\escrever~input_o\ & (\enderecoY~input_o\ & (\Clock~input_o\ & !\enderecoX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escrever~input_o\,
	datab => \enderecoY~input_o\,
	datac => \Clock~input_o\,
	datad => \enderecoX~input_o\,
	combout => \flipflop01|cond~combout\);

\flipflop01|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_0|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[0]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_0|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_0|sq~0_combout\,
	combout => \flipflop01|flipflop_0|sq~0_combout\);

\flipflop10|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|cond~combout\ = (\escrever~input_o\ & (\enderecoX~input_o\ & (\Clock~input_o\ & !\enderecoY~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escrever~input_o\,
	datab => \enderecoX~input_o\,
	datac => \Clock~input_o\,
	datad => \enderecoY~input_o\,
	combout => \flipflop10|cond~combout\);

\flipflop10|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_0|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[0]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_0|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_0|sq~0_combout\,
	combout => \flipflop10|flipflop_0|sq~0_combout\);

\Saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~0_combout\ = (\enderecoY~input_o\ & (!\enderecoX~input_o\ & (!\flipflop01|flipflop_0|sq~0_combout\))) # (!\enderecoY~input_o\ & (\enderecoX~input_o\ & ((!\flipflop10|flipflop_0|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoY~input_o\,
	datab => \enderecoX~input_o\,
	datac => \flipflop01|flipflop_0|sq~0_combout\,
	datad => \flipflop10|flipflop_0|sq~0_combout\,
	combout => \Saida~0_combout\);

\flipflop00|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|cond~combout\ = (\escrever~input_o\ & (\Clock~input_o\ & (!\enderecoX~input_o\ & !\enderecoY~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escrever~input_o\,
	datab => \Clock~input_o\,
	datac => \enderecoX~input_o\,
	datad => \enderecoY~input_o\,
	combout => \flipflop00|cond~combout\);

\flipflop00|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_0|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[0]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_0|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_0|sq~0_combout\,
	combout => \flipflop00|flipflop_0|sq~0_combout\);

\flipflop11|cond\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|cond~combout\ = (\escrever~input_o\ & (\enderecoX~input_o\ & (\enderecoY~input_o\ & \Clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \escrever~input_o\,
	datab => \enderecoX~input_o\,
	datac => \enderecoY~input_o\,
	datad => \Clock~input_o\,
	combout => \flipflop11|cond~combout\);

\flipflop11|flipflop_0|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_0|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[0]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_0|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_0|sq~0_combout\,
	combout => \flipflop11|flipflop_0|sq~0_combout\);

\Saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~1_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_0|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_0|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_0|sq~0_combout\,
	datad => \flipflop11|flipflop_0|sq~0_combout\,
	combout => \Saida~1_combout\);

\Saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~2_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~0_combout\) # (\Saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~0_combout\,
	datac => \Saida~1_combout\,
	datad => \escrever~input_o\,
	combout => \Saida~2_combout\);

\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

\flipflop10|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_1|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[1]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_1|sq~0_combout\,
	combout => \flipflop10|flipflop_1|sq~0_combout\);

\flipflop01|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_1|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[1]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_1|sq~0_combout\,
	combout => \flipflop01|flipflop_1|sq~0_combout\);

\Saida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~3_combout\ = (\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop10|flipflop_1|sq~0_combout\))) # (!\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop01|flipflop_1|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop10|flipflop_1|sq~0_combout\,
	datad => \flipflop01|flipflop_1|sq~0_combout\,
	combout => \Saida~3_combout\);

\flipflop00|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_1|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[1]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_1|sq~0_combout\,
	combout => \flipflop00|flipflop_1|sq~0_combout\);

\flipflop11|flipflop_1|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_1|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[1]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_1|sq~0_combout\,
	combout => \flipflop11|flipflop_1|sq~0_combout\);

\Saida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~4_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_1|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_1|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_1|sq~0_combout\,
	datad => \flipflop11|flipflop_1|sq~0_combout\,
	combout => \Saida~4_combout\);

\Saida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~5_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~3_combout\) # (\Saida~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~3_combout\,
	datac => \Saida~4_combout\,
	datad => \escrever~input_o\,
	combout => \Saida~5_combout\);

\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

\flipflop10|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_2|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[2]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_2|sq~0_combout\,
	combout => \flipflop10|flipflop_2|sq~0_combout\);

\flipflop01|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_2|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[2]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_2|sq~0_combout\,
	combout => \flipflop01|flipflop_2|sq~0_combout\);

\Saida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~6_combout\ = (\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop10|flipflop_2|sq~0_combout\))) # (!\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop01|flipflop_2|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop10|flipflop_2|sq~0_combout\,
	datad => \flipflop01|flipflop_2|sq~0_combout\,
	combout => \Saida~6_combout\);

\flipflop00|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_2|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[2]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_2|sq~0_combout\,
	combout => \flipflop00|flipflop_2|sq~0_combout\);

\flipflop11|flipflop_2|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_2|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[2]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_2|sq~0_combout\,
	combout => \flipflop11|flipflop_2|sq~0_combout\);

\Saida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~7_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_2|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_2|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_2|sq~0_combout\,
	datad => \flipflop11|flipflop_2|sq~0_combout\,
	combout => \Saida~7_combout\);

\Saida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~8_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~6_combout\) # (\Saida~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~6_combout\,
	datac => \Saida~7_combout\,
	datad => \escrever~input_o\,
	combout => \Saida~8_combout\);

\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

\flipflop10|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_3|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[3]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_3|sq~0_combout\,
	combout => \flipflop10|flipflop_3|sq~0_combout\);

\flipflop01|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_3|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[3]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_3|sq~0_combout\,
	combout => \flipflop01|flipflop_3|sq~0_combout\);

\Saida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~9_combout\ = (\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop10|flipflop_3|sq~0_combout\))) # (!\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop01|flipflop_3|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop10|flipflop_3|sq~0_combout\,
	datad => \flipflop01|flipflop_3|sq~0_combout\,
	combout => \Saida~9_combout\);

\flipflop00|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_3|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[3]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_3|sq~0_combout\,
	combout => \flipflop00|flipflop_3|sq~0_combout\);

\flipflop11|flipflop_3|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_3|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[3]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_3|sq~0_combout\,
	combout => \flipflop11|flipflop_3|sq~0_combout\);

\Saida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~10_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_3|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_3|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_3|sq~0_combout\,
	datad => \flipflop11|flipflop_3|sq~0_combout\,
	combout => \Saida~10_combout\);

\Saida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~11_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~9_combout\) # (\Saida~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~9_combout\,
	datac => \Saida~10_combout\,
	datad => \escrever~input_o\,
	combout => \Saida~11_combout\);

\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

\flipflop10|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_4|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[4]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_4|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_4|sq~0_combout\,
	combout => \flipflop10|flipflop_4|sq~0_combout\);

\flipflop01|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_4|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[4]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_4|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_4|sq~0_combout\,
	combout => \flipflop01|flipflop_4|sq~0_combout\);

\Saida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~12_combout\ = (\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop10|flipflop_4|sq~0_combout\))) # (!\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop01|flipflop_4|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop10|flipflop_4|sq~0_combout\,
	datad => \flipflop01|flipflop_4|sq~0_combout\,
	combout => \Saida~12_combout\);

\flipflop00|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_4|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[4]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_4|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_4|sq~0_combout\,
	combout => \flipflop00|flipflop_4|sq~0_combout\);

\flipflop11|flipflop_4|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_4|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[4]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_4|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[4]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_4|sq~0_combout\,
	combout => \flipflop11|flipflop_4|sq~0_combout\);

\Saida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~13_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_4|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_4|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_4|sq~0_combout\,
	datad => \flipflop11|flipflop_4|sq~0_combout\,
	combout => \Saida~13_combout\);

\Saida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~14_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~12_combout\) # (\Saida~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~12_combout\,
	datac => \Saida~13_combout\,
	datad => \escrever~input_o\,
	combout => \Saida~14_combout\);

\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

\flipflop10|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_5|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[5]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_5|sq~0_combout\,
	combout => \flipflop10|flipflop_5|sq~0_combout\);

\flipflop01|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_5|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[5]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_5|sq~0_combout\,
	combout => \flipflop01|flipflop_5|sq~0_combout\);

\Saida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~15_combout\ = (\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop10|flipflop_5|sq~0_combout\))) # (!\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop01|flipflop_5|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop10|flipflop_5|sq~0_combout\,
	datad => \flipflop01|flipflop_5|sq~0_combout\,
	combout => \Saida~15_combout\);

\flipflop00|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_5|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[5]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_5|sq~0_combout\,
	combout => \flipflop00|flipflop_5|sq~0_combout\);

\flipflop11|flipflop_5|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_5|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[5]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_5|sq~0_combout\,
	combout => \flipflop11|flipflop_5|sq~0_combout\);

\Saida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~16_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_5|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_5|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_5|sq~0_combout\,
	datad => \flipflop11|flipflop_5|sq~0_combout\,
	combout => \Saida~16_combout\);

\Saida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~17_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~15_combout\) # (\Saida~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~15_combout\,
	datac => \Saida~16_combout\,
	datad => \escrever~input_o\,
	combout => \Saida~17_combout\);

\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

\flipflop10|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_6|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[6]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_6|sq~0_combout\,
	combout => \flipflop10|flipflop_6|sq~0_combout\);

\flipflop01|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_6|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[6]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_6|sq~0_combout\,
	combout => \flipflop01|flipflop_6|sq~0_combout\);

\Saida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~18_combout\ = (\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop10|flipflop_6|sq~0_combout\))) # (!\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop01|flipflop_6|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop10|flipflop_6|sq~0_combout\,
	datad => \flipflop01|flipflop_6|sq~0_combout\,
	combout => \Saida~18_combout\);

\flipflop00|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_6|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[6]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_6|sq~0_combout\,
	combout => \flipflop00|flipflop_6|sq~0_combout\);

\flipflop11|flipflop_6|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_6|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[6]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[6]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_6|sq~0_combout\,
	combout => \flipflop11|flipflop_6|sq~0_combout\);

\Saida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~19_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_6|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_6|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_6|sq~0_combout\,
	datad => \flipflop11|flipflop_6|sq~0_combout\,
	combout => \Saida~19_combout\);

\Saida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~20_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~18_combout\) # (\Saida~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~18_combout\,
	datac => \Saida~19_combout\,
	datad => \escrever~input_o\,
	combout => \Saida~20_combout\);

\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

\flipflop10|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop10|flipflop_7|sq~0_combout\ = (\flipflop10|cond~combout\ & (!\D[7]~input_o\)) # (!\flipflop10|cond~combout\ & ((\flipflop10|flipflop_7|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \flipflop10|cond~combout\,
	datad => \flipflop10|flipflop_7|sq~0_combout\,
	combout => \flipflop10|flipflop_7|sq~0_combout\);

\flipflop01|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop01|flipflop_7|sq~0_combout\ = (\flipflop01|cond~combout\ & (!\D[7]~input_o\)) # (!\flipflop01|cond~combout\ & ((\flipflop01|flipflop_7|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \flipflop01|cond~combout\,
	datad => \flipflop01|flipflop_7|sq~0_combout\,
	combout => \flipflop01|flipflop_7|sq~0_combout\);

\Saida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~21_combout\ = (\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop10|flipflop_7|sq~0_combout\))) # (!\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop01|flipflop_7|sq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop10|flipflop_7|sq~0_combout\,
	datad => \flipflop01|flipflop_7|sq~0_combout\,
	combout => \Saida~21_combout\);

\flipflop00|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop00|flipflop_7|sq~0_combout\ = (\flipflop00|cond~combout\ & (!\D[7]~input_o\)) # (!\flipflop00|cond~combout\ & ((\flipflop00|flipflop_7|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \flipflop00|cond~combout\,
	datad => \flipflop00|flipflop_7|sq~0_combout\,
	combout => \flipflop00|flipflop_7|sq~0_combout\);

\flipflop11|flipflop_7|sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flipflop11|flipflop_7|sq~0_combout\ = (\flipflop11|cond~combout\ & (!\D[7]~input_o\)) # (!\flipflop11|cond~combout\ & ((\flipflop11|flipflop_7|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[7]~input_o\,
	datab => \flipflop11|cond~combout\,
	datad => \flipflop11|flipflop_7|sq~0_combout\,
	combout => \flipflop11|flipflop_7|sq~0_combout\);

\Saida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~22_combout\ = (\enderecoX~input_o\ & (\enderecoY~input_o\ & ((!\flipflop11|flipflop_7|sq~0_combout\)))) # (!\enderecoX~input_o\ & (!\enderecoY~input_o\ & (!\flipflop00|flipflop_7|sq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoX~input_o\,
	datab => \enderecoY~input_o\,
	datac => \flipflop00|flipflop_7|sq~0_combout\,
	datad => \flipflop11|flipflop_7|sq~0_combout\,
	combout => \Saida~22_combout\);

\Saida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Saida~23_combout\ = (\ler~input_o\ & (!\escrever~input_o\ & ((\Saida~21_combout\) # (\Saida~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ler~input_o\,
	datab => \Saida~21_combout\,
	datac => \Saida~22_combout\,
	datad => \escrever~input_o\,
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


