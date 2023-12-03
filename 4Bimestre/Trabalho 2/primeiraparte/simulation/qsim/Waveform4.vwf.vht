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
-- Generated on "11/27/2023 21:04:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DIVISOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DIVISOR_vhd_vec_tst IS
END DIVISOR_vhd_vec_tst;
ARCHITECTURE DIVISOR_arch OF DIVISOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_in : STD_LOGIC;
SIGNAL clock_out : STD_LOGIC;
COMPONENT DIVISOR
	PORT (
	clock_in : IN STD_LOGIC;
	clock_out : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DIVISOR
	PORT MAP (
-- list connections between master ports and signals
	clock_in => clock_in,
	clock_out => clock_out
	);

-- clock_in
t_prcs_clock_in: PROCESS
BEGIN
	clock_in <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clock_in <= '0';
		WAIT FOR 10000 ps;
		clock_in <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clock_in <= '0';
WAIT;
END PROCESS t_prcs_clock_in;
END DIVISOR_arch;
