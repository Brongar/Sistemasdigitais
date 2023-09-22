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

-- DATE "09/22/2023 11:05:53"

-- 
-- Device: Altera EP4CE22E22C6 Package TQFP144
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
	A : IN std_logic_vector(1 DOWNTO 0);
	B : IN std_logic_vector(1 DOWNTO 0);
	saida_aMaiorb : BUFFER std_logic;
	saida_aEqualsb : BUFFER std_logic;
	saida_aMenorb : BUFFER std_logic
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
SIGNAL ww_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_saida_aMaiorb : std_logic;
SIGNAL ww_saida_aEqualsb : std_logic;
SIGNAL ww_saida_aMenorb : std_logic;
SIGNAL \saida_aMaiorb~output_o\ : std_logic;
SIGNAL \saida_aEqualsb~output_o\ : std_logic;
SIGNAL \saida_aMenorb~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mux0|Mux0~0_combout\ : std_logic;
SIGNAL \Mux1|Mux0~0_combout\ : std_logic;
SIGNAL \Mux2|Mux0~0_combout\ : std_logic;
SIGNAL \Mux1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
saida_aMaiorb <= ww_saida_aMaiorb;
saida_aEqualsb <= ww_saida_aEqualsb;
saida_aMenorb <= ww_saida_aMenorb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Mux1|ALT_INV_Mux0~0_combout\ <= NOT \Mux1|Mux0~0_combout\;

\saida_aMaiorb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida_aMaiorb~output_o\);

\saida_aEqualsb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida_aEqualsb~output_o\);

\saida_aMenorb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida_aMenorb~output_o\);

\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\Mux0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0|Mux0~0_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\))) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # ((!\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux0|Mux0~0_combout\);

\Mux1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1|Mux0~0_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[1]~input_o\)) # (!\A[0]~input_o\))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux1|Mux0~0_combout\);

\Mux2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2|Mux0~0_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & !\A[0]~input_o\)) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (!\A[0]~input_o\ & !\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux2|Mux0~0_combout\);

ww_saida_aMaiorb <= \saida_aMaiorb~output_o\;

ww_saida_aEqualsb <= \saida_aEqualsb~output_o\;

ww_saida_aMenorb <= \saida_aMenorb~output_o\;
END structure;


