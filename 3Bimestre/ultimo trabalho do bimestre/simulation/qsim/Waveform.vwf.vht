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
-- Generated on "11/01/2023 22:00:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          flipflop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY flipflop_vhd_vec_tst IS
END flipflop_vhd_vec_tst;
ARCHITECTURE flipflop_arch OF flipflop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c2 : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Q_n : STD_LOGIC;
COMPONENT flipflop
	PORT (
	c2 : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Q_n : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : flipflop
	PORT MAP (
-- list connections between master ports and signals
	c2 => c2,
	D => D,
	Q => Q,
	Q_n => Q_n
	);

-- D
t_prcs_D: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		D <= '0';
		WAIT FOR 40000 ps;
		D <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;

-- c2
t_prcs_c2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		c2 <= '0';
		WAIT FOR 80000 ps;
		c2 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	c2 <= '0';
WAIT;
END PROCESS t_prcs_c2;
END flipflop_arch;
