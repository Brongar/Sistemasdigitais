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

-- DATE "11/27/2023 21:04:49"

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

ENTITY 	DIVISOR IS
    PORT (
	clock_in : IN std_logic;
	clock_out : BUFFER std_logic
	);
END DIVISOR;

ARCHITECTURE structure OF DIVISOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_in : std_logic;
SIGNAL ww_clock_out : std_logic;
SIGNAL \clock_out~output_o\ : std_logic;
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \counter[0]~3_combout\ : std_logic;
SIGNAL \counter[2]~2_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \clock_out~0_combout\ : std_logic;
SIGNAL \clock_out~1_combout\ : std_logic;
SIGNAL \clock_out~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock_in <= clock_in;
clock_out <= ww_clock_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_out~reg0_q\,
	devoe => ww_devoe,
	o => \clock_out~output_o\);

\clock_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_in,
	o => \clock_in~input_o\);

\counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~3_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	combout => \counter[0]~3_combout\);

\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	d => \counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

\counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~2_combout\ = counter(2) $ (((counter(1) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datac => counter(1),
	datad => counter(0),
	combout => \counter[2]~2_combout\);

\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	d => \counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (counter(3) & ((counter(1) $ (counter(2))) # (!counter(0)))) # (!counter(3) & (counter(1) & (counter(2) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(2),
	datad => counter(0),
	combout => \counter~1_combout\);

\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (counter(1) & (((!counter(0))))) # (!counter(1) & (counter(0) & ((counter(2)) # (!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \counter~0_combout\);

\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

\clock_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_out~0_combout\ = (counter(2)) # (!counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	combout => \clock_out~0_combout\);

\clock_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_out~1_combout\ = \clock_out~reg0_q\ $ (((counter(0) & (!counter(1) & !\clock_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_out~reg0_q\,
	datab => counter(0),
	datac => counter(1),
	datad => \clock_out~0_combout\,
	combout => \clock_out~1_combout\);

\clock_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~input_o\,
	d => \clock_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_out~reg0_q\);

ww_clock_out <= \clock_out~output_o\;
END structure;


