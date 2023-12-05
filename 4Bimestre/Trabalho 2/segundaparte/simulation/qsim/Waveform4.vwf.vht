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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/04/2023 19:24:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          toplevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY toplevel_vhd_vec_tst IS
END toplevel_vhd_vec_tst;
ARCHITECTURE toplevel_arch OF toplevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL botao_seletor : STD_LOGIC;
SIGNAL clock_top : STD_LOGIC;
SIGNAL reset_top : STD_LOGIC;
SIGNAL saida_contador : STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL saida_display : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saida_mux_7bit : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT toplevel
	PORT (
	botao_seletor : IN STD_LOGIC;
	clock_top : IN STD_LOGIC;
	reset_top : IN STD_LOGIC;
	saida_contador : BUFFER STD_LOGIC_VECTOR(27 DOWNTO 0);
	saida_display : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	saida_mux_7bit : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : toplevel
	PORT MAP (
-- list connections between master ports and signals
	botao_seletor => botao_seletor,
	clock_top => clock_top,
	reset_top => reset_top,
	saida_contador => saida_contador,
	saida_display => saida_display,
	saida_mux_7bit => saida_mux_7bit
	);

-- botao_seletor
t_prcs_botao_seletor: PROCESS
BEGIN
	botao_seletor <= '0';
WAIT;
END PROCESS t_prcs_botao_seletor;

-- clock_top
t_prcs_clock_top: PROCESS
BEGIN
LOOP
	clock_top <= '0';
	WAIT FOR 1000 ps;
	clock_top <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_top;

-- reset_top
t_prcs_reset_top: PROCESS
BEGIN
	reset_top <= '0';
WAIT;
END PROCESS t_prcs_reset_top;
END toplevel_arch;
