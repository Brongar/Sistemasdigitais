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
-- Generated on "11/02/2023 16:38:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          conjuntoff
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY conjuntoff_vhd_vec_tst IS
END conjuntoff_vhd_vec_tst;
ARCHITECTURE conjuntoff_arch OF conjuntoff_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL d0 : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL d4 : STD_LOGIC;
SIGNAL d5 : STD_LOGIC;
SIGNAL d6 : STD_LOGIC;
SIGNAL d7 : STD_LOGIC;
COMPONENT conjuntoff
	PORT (
	D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	d0 : OUT STD_LOGIC;
	d1 : OUT STD_LOGIC;
	d2 : OUT STD_LOGIC;
	d3 : OUT STD_LOGIC;
	d4 : OUT STD_LOGIC;
	d5 : OUT STD_LOGIC;
	d6 : OUT STD_LOGIC;
	d7 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : conjuntoff
	PORT MAP (
-- list connections between master ports and signals
	D => D,
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	d5 => d5,
	d6 => d6,
	d7 => d7
	);
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 25000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 20000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 10000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 20000 ps;
	D(7) <= '0';
	WAIT FOR 20000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 10000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 30000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 20000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 20000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 25000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 20000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 10000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 20000 ps;
	D(7) <= '1';
	WAIT FOR 25000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 10000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 10000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 25000 ps;
	D(7) <= '0';
	WAIT FOR 10000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 20000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 15000 ps;
	D(7) <= '1';
	WAIT FOR 5000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 15000 ps;
	D(7) <= '0';
	WAIT FOR 5000 ps;
	D(7) <= '1';
	WAIT FOR 10000 ps;
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 20000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 30000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 20000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 25000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 20000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 20000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 20000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 25000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 25000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 10000 ps;
	D(6) <= '1';
	WAIT FOR 20000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 5000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 10000 ps;
	D(6) <= '0';
	WAIT FOR 5000 ps;
	D(6) <= '1';
	WAIT FOR 15000 ps;
	D(6) <= '0';
	WAIT FOR 15000 ps;
	D(6) <= '1';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 40000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 25000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 20000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 25000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 15000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 30000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 20000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 15000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 15000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 20000 ps;
	D(5) <= '1';
	WAIT FOR 20000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 20000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 25000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 35000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 20000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 20000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 25000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 10000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 15000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 5000 ps;
	D(5) <= '1';
	WAIT FOR 5000 ps;
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '0';
	WAIT FOR 15000 ps;
	D(4) <= '1';
	WAIT FOR 15000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 15000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 15000 ps;
	D(4) <= '1';
	WAIT FOR 20000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 15000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 15000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 30000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 15000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 15000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 20000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 20000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 25000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 25000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 10000 ps;
	D(4) <= '0';
	WAIT FOR 25000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 50000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 25000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 5000 ps;
	D(4) <= '1';
	WAIT FOR 5000 ps;
	D(4) <= '0';
	WAIT FOR 15000 ps;
	D(4) <= '1';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 25000 ps;
	D(3) <= '1';
	WAIT FOR 25000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 40000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 20000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 20000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 20000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 15000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
	WAIT FOR 5000 ps;
	D(3) <= '0';
	WAIT FOR 15000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 25000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 5000 ps;
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '1';
	WAIT FOR 20000 ps;
	D(2) <= '0';
	WAIT FOR 20000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 20000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 20000 ps;
	D(2) <= '0';
	WAIT FOR 20000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 15000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 25000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 20000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 30000 ps;
	D(2) <= '1';
	WAIT FOR 15000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 15000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
	WAIT FOR 15000 ps;
	D(2) <= '1';
	WAIT FOR 15000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 15000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 25000 ps;
	D(2) <= '0';
	WAIT FOR 15000 ps;
	D(2) <= '1';
	WAIT FOR 20000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 15000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 20000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 15000 ps;
	D(2) <= '1';
	WAIT FOR 25000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 15000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 15000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 15000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 25000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 30000 ps;
	D(2) <= '0';
	WAIT FOR 25000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 25000 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 20000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 5000 ps;
	D(2) <= '1';
	WAIT FOR 5000 ps;
	D(2) <= '0';
	WAIT FOR 15000 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 30000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 20000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 25000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 20000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 20000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 20000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 20000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 30000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 25000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 15000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 10000 ps;
	D(1) <= '0';
	WAIT FOR 15000 ps;
	D(1) <= '1';
	WAIT FOR 5000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 20000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
	WAIT FOR 20000 ps;
	D(1) <= '0';
	WAIT FOR 5000 ps;
	D(1) <= '1';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 15000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 50000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 20000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 20000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 15000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 15000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 15000 ps;
	D(0) <= '1';
	WAIT FOR 20000 ps;
	D(0) <= '0';
	WAIT FOR 20000 ps;
	D(0) <= '1';
	WAIT FOR 30000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 20000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 15000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 15000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 20000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 10000 ps;
	D(0) <= '0';
	WAIT FOR 20000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 5000 ps;
	D(0) <= '1';
	WAIT FOR 5000 ps;
	D(0) <= '0';
	WAIT FOR 10000 ps;
	D(0) <= '1';
	WAIT FOR 25000 ps;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
END conjuntoff_arch;
