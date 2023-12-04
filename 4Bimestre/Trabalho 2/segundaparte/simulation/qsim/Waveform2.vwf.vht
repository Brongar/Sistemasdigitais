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
-- Generated on "12/02/2023 18:09:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controle
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controle_vhd_vec_tst IS
END controle_vhd_vec_tst;
ARCHITECTURE controle_arch OF controle_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL reset : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL seletor : STD_LOGIC;
COMPONENT controle
	PORT (
	reset : IN STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	seletor : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controle
	PORT MAP (
-- list connections between master ports and signals
	reset => reset,
	saida => saida,
	seletor => seletor
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 480000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- seletor
t_prcs_seletor: PROCESS
BEGIN
LOOP
	seletor <= '0';
	WAIT FOR 20000 ps;
	seletor <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_seletor;
END controle_arch;
