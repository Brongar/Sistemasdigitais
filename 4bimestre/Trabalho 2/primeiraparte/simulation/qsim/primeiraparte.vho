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

-- DATE "11/27/2023 16:13:55"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	primeiraparte IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	led1 : BUFFER std_logic;
	led2 : BUFFER std_logic
	);
END primeiraparte;

ARCHITECTURE structure OF primeiraparte IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock_ajustado|counter[0]~3_combout\ : std_logic;
SIGNAL \clock_ajustado|counter[2]~2_combout\ : std_logic;
SIGNAL \clock_ajustado|counter~1_combout\ : std_logic;
SIGNAL \clock_ajustado|counter~0_combout\ : std_logic;
SIGNAL \clock_ajustado|Equal0~0_combout\ : std_logic;
SIGNAL \clock_ajustado|clock_out~0_combout\ : std_logic;
SIGNAL \clock_ajustado|clock_out~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado_atual.C~q\ : std_logic;
SIGNAL \estado_atual.D~q\ : std_logic;
SIGNAL \estado_atual.RESET_estado~q\ : std_logic;
SIGNAL \proximo_estado.A~combout\ : std_logic;
SIGNAL \estado_atual.A~q\ : std_logic;
SIGNAL \estado_atual.B~q\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \clock_ajustado|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
led1 <= ww_led1;
led2 <= ww_led2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~3_combout\,
	devoe => ww_devoe,
	o => \led1~output_o\);

\led2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => \led2~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\clock_ajustado|counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter[0]~3_combout\ = !\clock_ajustado|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|counter\(0),
	combout => \clock_ajustado|counter[0]~3_combout\);

\clock_ajustado|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clock_ajustado|counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_ajustado|counter\(0));

\clock_ajustado|counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter[2]~2_combout\ = \clock_ajustado|counter\(2) $ (((\clock_ajustado|counter\(1) & \clock_ajustado|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_ajustado|counter\(2),
	datac => \clock_ajustado|counter\(1),
	datad => \clock_ajustado|counter\(0),
	combout => \clock_ajustado|counter[2]~2_combout\);

\clock_ajustado|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clock_ajustado|counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_ajustado|counter\(2));

\clock_ajustado|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter~1_combout\ = (\clock_ajustado|counter\(1) & (((!\clock_ajustado|counter\(0))))) # (!\clock_ajustado|counter\(1) & (\clock_ajustado|counter\(0) & ((\clock_ajustado|counter\(2)) # (!\clock_ajustado|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|counter\(2),
	datab => \clock_ajustado|counter\(3),
	datac => \clock_ajustado|counter\(1),
	datad => \clock_ajustado|counter\(0),
	combout => \clock_ajustado|counter~1_combout\);

\clock_ajustado|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clock_ajustado|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_ajustado|counter\(1));

\clock_ajustado|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter~0_combout\ = (\clock_ajustado|counter\(3) & ((\clock_ajustado|counter\(1) $ (\clock_ajustado|counter\(2))) # (!\clock_ajustado|counter\(0)))) # (!\clock_ajustado|counter\(3) & (\clock_ajustado|counter\(1) & 
-- (\clock_ajustado|counter\(2) & \clock_ajustado|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|counter\(3),
	datab => \clock_ajustado|counter\(1),
	datac => \clock_ajustado|counter\(2),
	datad => \clock_ajustado|counter\(0),
	combout => \clock_ajustado|counter~0_combout\);

\clock_ajustado|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clock_ajustado|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_ajustado|counter\(3));

\clock_ajustado|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_ajustado|Equal0~0_combout\ = (\clock_ajustado|counter\(0) & (\clock_ajustado|counter\(3) & (!\clock_ajustado|counter\(1) & !\clock_ajustado|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|counter\(0),
	datab => \clock_ajustado|counter\(3),
	datac => \clock_ajustado|counter\(1),
	datad => \clock_ajustado|counter\(2),
	combout => \clock_ajustado|Equal0~0_combout\);

\clock_ajustado|clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_ajustado|clock_out~0_combout\ = \clock_ajustado|clock_out~q\ $ (\clock_ajustado|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_ajustado|clock_out~q\,
	datad => \clock_ajustado|Equal0~0_combout\,
	combout => \clock_ajustado|clock_out~0_combout\);

\clock_ajustado|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clock_ajustado|clock_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_ajustado|clock_out~q\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\estado_atual.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_ajustado|clock_out~q\,
	d => \estado_atual.B~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.C~q\);

\estado_atual.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_ajustado|clock_out~q\,
	d => \estado_atual.C~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.D~q\);

\estado_atual.RESET_estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_ajustado|clock_out~q\,
	d => VCC,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.RESET_estado~q\);

\proximo_estado.A\ : cycloneive_lcell_comb
-- Equation(s):
-- \proximo_estado.A~combout\ = (\estado_atual.D~q\) # (!\estado_atual.RESET_estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.D~q\,
	datad => \estado_atual.RESET_estado~q\,
	combout => \proximo_estado.A~combout\);

\estado_atual.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_ajustado|clock_out~q\,
	d => \proximo_estado.A~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.A~q\);

\estado_atual.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_ajustado|clock_out~q\,
	d => \estado_atual.A~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.B~q\);

\saida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\estado_atual.B~q\) # (\estado_atual.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.B~q\,
	datab => \estado_atual.D~q\,
	combout => \saida~3_combout\);

\saida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\estado_atual.D~q\) # (\estado_atual.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.D~q\,
	datab => \estado_atual.C~q\,
	combout => \saida~4_combout\);

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;
END structure;


