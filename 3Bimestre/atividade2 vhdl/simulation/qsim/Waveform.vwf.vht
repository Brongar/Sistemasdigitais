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
-- Generated on "09/18/2023 21:47:57"
                                                             
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
SIGNAL IN1 : STD_LOGIC;
SIGNAL IN2 : STD_LOGIC;
SIGNAL OUT1 : STD_LOGIC;
COMPONENT Vhdl1
	PORT (
	IN1 : IN STD_LOGIC;
	IN2 : IN STD_LOGIC;
	OUT1 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Vhdl1
	PORT MAP (
-- list connections between master ports and signals
	IN1 => IN1,
	IN2 => IN2,
	OUT1 => OUT1
	);

-- IN2
t_prcs_IN2: PROCESS
BEGIN
LOOP
	IN2 <= '0';
	WAIT FOR 20000 ps;
	IN2 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_IN2;

-- IN1
t_prcs_IN1: PROCESS
BEGIN
LOOP
	IN1 <= '0';
	WAIT FOR 10000 ps;
	IN1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_IN1;
END Vhdl1_arch;
