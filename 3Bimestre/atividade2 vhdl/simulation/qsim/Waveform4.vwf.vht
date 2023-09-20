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
-- Generated on "09/19/2023 20:59:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Vhdl1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Vhdl1_vhd_vec_tst IS
END Vhdl1_vhd_vec_tst;
ARCHITECTURE Vhdl1_arch OF Vhdl1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL aEqualsB : STD_LOGIC;
SIGNAL aMaiorB : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
COMPONENT Vhdl1
	PORT (
	A : IN STD_LOGIC;
	aEqualsB : BUFFER STD_LOGIC;
	aMaiorB : BUFFER STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	D : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Vhdl1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	aEqualsB => aEqualsB,
	aMaiorB => aMaiorB,
	B => B,
	C => C,
	D => D
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A <= '0';
		WAIT FOR 80000 ps;
		A <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		B <= '0';
		WAIT FOR 40000 ps;
		B <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
LOOP
	C <= '0';
	WAIT FOR 20000 ps;
	C <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C;

-- D
t_prcs_D: PROCESS
BEGIN
LOOP
	D <= '0';
	WAIT FOR 10000 ps;
	D <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_D;
END Vhdl1_arch;
