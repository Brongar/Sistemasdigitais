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

-- DATE "09/19/2023 20:59:56"

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

ENTITY 	Vhdl1 IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	aMaiorB : BUFFER std_logic;
	aEqualsB : BUFFER std_logic
	);
END Vhdl1;

ARCHITECTURE structure OF Vhdl1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_aMaiorB : std_logic;
SIGNAL ww_aEqualsB : std_logic;
SIGNAL \aMaiorB~output_o\ : std_logic;
SIGNAL \aEqualsB~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \aMaiorB~0_combout\ : std_logic;
SIGNAL \aEqualsB~0_combout\ : std_logic;
SIGNAL \ALT_INV_aEqualsB~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
aMaiorB <= ww_aMaiorB;
aEqualsB <= ww_aEqualsB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_aEqualsB~0_combout\ <= NOT \aEqualsB~0_combout\;

\aMaiorB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aMaiorB~0_combout\,
	devoe => ww_devoe,
	o => \aMaiorB~output_o\);

\aEqualsB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_aEqualsB~0_combout\,
	devoe => ww_devoe,
	o => \aEqualsB~output_o\);

\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

\aMaiorB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aMaiorB~0_combout\ = (\A~input_o\ & (((\B~input_o\ & !\D~input_o\)) # (!\C~input_o\))) # (!\A~input_o\ & (\B~input_o\ & (!\D~input_o\ & !\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \C~input_o\,
	combout => \aMaiorB~0_combout\);

\aEqualsB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aEqualsB~0_combout\ = (\A~input_o\ & ((\B~input_o\ $ (\D~input_o\)) # (!\C~input_o\))) # (!\A~input_o\ & ((\C~input_o\) # (\B~input_o\ $ (\D~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \C~input_o\,
	datac => \B~input_o\,
	datad => \D~input_o\,
	combout => \aEqualsB~0_combout\);

ww_aMaiorB <= \aMaiorB~output_o\;

ww_aEqualsB <= \aEqualsB~output_o\;
END structure;


