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
-- Generated on "11/02/2023 18:32:20"
                                                             
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
SIGNAL Clock8 : STD_LOGIC;
SIGNAL D8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SX : STD_LOGIC;
SIGNAL SY : STD_LOGIC;
SIGNAL W : STD_LOGIC;
COMPONENT conjuntoff
	PORT (
	Clock8 : IN STD_LOGIC;
	D8 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Q8 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SX : IN STD_LOGIC;
	SY : IN STD_LOGIC;
	W : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : conjuntoff
	PORT MAP (
-- list connections between master ports and signals
	Clock8 => Clock8,
	D8 => D8,
	Q8 => Q8,
	SX => SX,
	SY => SY,
	W => W
	);
-- D8[7]
t_prcs_D8_7: PROCESS
BEGIN
	D8(7) <= '0';
WAIT;
END PROCESS t_prcs_D8_7;
-- D8[6]
t_prcs_D8_6: PROCESS
BEGIN
	D8(6) <= '0';
WAIT;
END PROCESS t_prcs_D8_6;
-- D8[5]
t_prcs_D8_5: PROCESS
BEGIN
	D8(5) <= '0';
WAIT;
END PROCESS t_prcs_D8_5;
-- D8[4]
t_prcs_D8_4: PROCESS
BEGIN
	D8(4) <= '0';
WAIT;
END PROCESS t_prcs_D8_4;
-- D8[3]
t_prcs_D8_3: PROCESS
BEGIN
	D8(3) <= '0';
	WAIT FOR 640000 ps;
	D8(3) <= '1';
WAIT;
END PROCESS t_prcs_D8_3;
-- D8[2]
t_prcs_D8_2: PROCESS
BEGIN
	D8(2) <= '0';
	WAIT FOR 320000 ps;
	D8(2) <= '1';
	WAIT FOR 320000 ps;
	D8(2) <= '0';
	WAIT FOR 320000 ps;
	D8(2) <= '1';
WAIT;
END PROCESS t_prcs_D8_2;
-- D8[1]
t_prcs_D8_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		D8(1) <= '0';
		WAIT FOR 160000 ps;
		D8(1) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	D8(1) <= '0';
WAIT;
END PROCESS t_prcs_D8_1;
-- D8[0]
t_prcs_D8_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		D8(0) <= '0';
		WAIT FOR 80000 ps;
		D8(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	D8(0) <= '0';
WAIT;
END PROCESS t_prcs_D8_0;

-- Clock8
t_prcs_Clock8: PROCESS
BEGIN
LOOP
	Clock8 <= '0';
	WAIT FOR 10000 ps;
	Clock8 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock8;

-- SX
t_prcs_SX: PROCESS
BEGIN
	SX <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		SX <= '0';
		WAIT FOR 20000 ps;
		SX <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	SX <= '0';
WAIT;
END PROCESS t_prcs_SX;

-- SY
t_prcs_SY: PROCESS
BEGIN
	SY <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 12
	LOOP
		SY <= '0';
		WAIT FOR 40000 ps;
		SY <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_SY;

-- W
t_prcs_W: PROCESS
BEGIN
	W <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 5
	LOOP
		W <= '0';
		WAIT FOR 80000 ps;
		W <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	W <= '0';
	WAIT FOR 80000 ps;
	W <= '1';
WAIT;
END PROCESS t_prcs_W;
END conjuntoff_arch;
