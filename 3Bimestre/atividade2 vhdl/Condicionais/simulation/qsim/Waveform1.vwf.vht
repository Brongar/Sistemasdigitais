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
-- Generated on "09/21/2023 18:26:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Condicionais
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Condicionais_vhd_vec_tst IS
END Condicionais_vhd_vec_tst;
ARCHITECTURE Condicionais_arch OF Condicionais_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL aEqualsB : STD_LOGIC;
SIGNAL aMaiorB : STD_LOGIC;
SIGNAL aMenorB : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Condicionais
	PORT (
	A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	aEqualsB : OUT STD_LOGIC;
	aMaiorB : OUT STD_LOGIC;
	aMenorB : OUT STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Condicionais
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	aEqualsB => aEqualsB,
	aMaiorB => aMaiorB,
	aMenorB => aMenorB,
	B => B
	);
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A(1) <= '0';
		WAIT FOR 80000 ps;
		A(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A(0) <= '0';
		WAIT FOR 40000 ps;
		A(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
LOOP
	B(1) <= '0';
	WAIT FOR 20000 ps;
	B(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
LOOP
	B(0) <= '0';
	WAIT FOR 10000 ps;
	B(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_0;
END Condicionais_arch;
