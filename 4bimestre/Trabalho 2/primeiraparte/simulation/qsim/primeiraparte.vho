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

-- DATE "11/27/2023 15:08:52"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	primeiraparte IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	saida : OUT std_logic_vector(1 DOWNTO 0)
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
SIGNAL ww_saida : std_logic_vector(1 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock_ajustado|counter[0]~3_combout\ : std_logic;
SIGNAL \clock_ajustado|counter[2]~1_combout\ : std_logic;
SIGNAL \clock_ajustado|counter~2_combout\ : std_logic;
SIGNAL \clock_ajustado|counter~0_combout\ : std_logic;
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
SIGNAL \clock_ajustado|ALT_INV_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_estado_atual.RESET_estado~q\ : std_logic;
SIGNAL \clock_ajustado|ALT_INV_clock_out~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.C~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.D~q\ : std_logic;
SIGNAL \ALT_INV_estado_atual.B~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\clock_ajustado|ALT_INV_counter\(3) <= NOT \clock_ajustado|counter\(3);
\clock_ajustado|ALT_INV_counter\(2) <= NOT \clock_ajustado|counter\(2);
\clock_ajustado|ALT_INV_counter\(0) <= NOT \clock_ajustado|counter\(0);
\clock_ajustado|ALT_INV_counter\(1) <= NOT \clock_ajustado|counter\(1);
\ALT_INV_estado_atual.RESET_estado~q\ <= NOT \estado_atual.RESET_estado~q\;
\clock_ajustado|ALT_INV_clock_out~q\ <= NOT \clock_ajustado|clock_out~q\;
\ALT_INV_estado_atual.C~q\ <= NOT \estado_atual.C~q\;
\ALT_INV_estado_atual.D~q\ <= NOT \estado_atual.D~q\;
\ALT_INV_estado_atual.B~q\ <= NOT \estado_atual.B~q\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~3_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\clock_ajustado|counter[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter[0]~3_combout\ = !\clock_ajustado|counter\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|ALT_INV_counter\(0),
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

\clock_ajustado|counter[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter[2]~1_combout\ = !\clock_ajustado|counter\(2) $ (((!\clock_ajustado|counter\(1)) # (!\clock_ajustado|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|ALT_INV_counter\(1),
	datab => \clock_ajustado|ALT_INV_counter\(0),
	datac => \clock_ajustado|ALT_INV_counter\(2),
	combout => \clock_ajustado|counter[2]~1_combout\);

\clock_ajustado|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clock_ajustado|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_ajustado|counter\(2));

\clock_ajustado|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter~2_combout\ = (!\clock_ajustado|counter\(1) & (\clock_ajustado|counter\(3) & ((!\clock_ajustado|counter\(0)) # (\clock_ajustado|counter\(2))))) # (\clock_ajustado|counter\(1) & (!\clock_ajustado|counter\(3) $ 
-- (((!\clock_ajustado|counter\(0)) # (!\clock_ajustado|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111011110000000011101111000000001110111100000000111011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|ALT_INV_counter\(1),
	datab => \clock_ajustado|ALT_INV_counter\(0),
	datac => \clock_ajustado|ALT_INV_counter\(2),
	datad => \clock_ajustado|ALT_INV_counter\(3),
	combout => \clock_ajustado|counter~2_combout\);

\clock_ajustado|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \clock_ajustado|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_ajustado|counter\(3));

\clock_ajustado|counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_ajustado|counter~0_combout\ = (!\clock_ajustado|counter\(1) & (\clock_ajustado|counter\(0) & ((!\clock_ajustado|counter\(3)) # (\clock_ajustado|counter\(2))))) # (\clock_ajustado|counter\(1) & (!\clock_ajustado|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001000110011001100100011001100110010001100110011001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|ALT_INV_counter\(1),
	datab => \clock_ajustado|ALT_INV_counter\(0),
	datac => \clock_ajustado|ALT_INV_counter\(2),
	datad => \clock_ajustado|ALT_INV_counter\(3),
	combout => \clock_ajustado|counter~0_combout\);

\clock_ajustado|counter[1]\ : dffeas
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
	q => \clock_ajustado|counter\(1));

\clock_ajustado|clock_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_ajustado|clock_out~0_combout\ = ( \clock_ajustado|counter\(3) & ( !\clock_ajustado|clock_out~q\ $ ((((!\clock_ajustado|counter\(0)) # (\clock_ajustado|counter\(2))) # (\clock_ajustado|counter\(1)))) ) ) # ( !\clock_ajustado|counter\(3) & ( 
-- \clock_ajustado|clock_out~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010110010101010101010101010101010101100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_ajustado|ALT_INV_clock_out~q\,
	datab => \clock_ajustado|ALT_INV_counter\(1),
	datac => \clock_ajustado|ALT_INV_counter\(0),
	datad => \clock_ajustado|ALT_INV_counter\(2),
	datae => \clock_ajustado|ALT_INV_counter\(3),
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

\reset~input\ : cyclonev_io_ibuf
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

\proximo_estado.A\ : cyclonev_lcell_comb
-- Equation(s):
-- \proximo_estado.A~combout\ = (!\estado_atual.RESET_estado~q\) # (\estado_atual.D~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.D~q\,
	datab => \ALT_INV_estado_atual.RESET_estado~q\,
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

\saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\estado_atual.D~q\) # (\estado_atual.B~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.B~q\,
	datab => \ALT_INV_estado_atual.D~q\,
	combout => \saida~3_combout\);

\saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\estado_atual.C~q\) # (\estado_atual.D~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado_atual.D~q\,
	datab => \ALT_INV_estado_atual.C~q\,
	combout => \saida~4_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;
END structure;


