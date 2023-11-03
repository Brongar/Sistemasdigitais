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
-- Generated on "11/02/2023 23:14:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          final
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY final_vhd_vec_tst IS
END final_vhd_vec_tst;
ARCHITECTURE final_arch OF final_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enderecoX : STD_LOGIC;
SIGNAL enderecoY : STD_LOGIC;
SIGNAL escrever : STD_LOGIC;
SIGNAL ler : STD_LOGIC;
SIGNAL Saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT final
	PORT (
	Clock : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	enderecoX : IN STD_LOGIC;
	enderecoY : IN STD_LOGIC;
	escrever : IN STD_LOGIC;
	ler : IN STD_LOGIC;
	Saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : final
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	D => D,
	enderecoX => enderecoX,
	enderecoY => enderecoY,
	escrever => escrever,
	ler => ler,
	Saida => Saida
	);
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '0';
	WAIT FOR 640000 ps;
	D(4) <= '1';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 320000 ps;
	D(3) <= '1';
	WAIT FOR 320000 ps;
	D(3) <= '0';
	WAIT FOR 320000 ps;
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		D(2) <= '0';
		WAIT FOR 160000 ps;
		D(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		D(1) <= '0';
		WAIT FOR 80000 ps;
		D(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		D(0) <= '0';
		WAIT FOR 40000 ps;
		D(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- enderecoX
t_prcs_enderecoX: PROCESS
BEGIN
	enderecoX <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		enderecoX <= '0';
		WAIT FOR 10000 ps;
		enderecoX <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	enderecoX <= '0';
WAIT;
END PROCESS t_prcs_enderecoX;

-- enderecoY
t_prcs_enderecoY: PROCESS
BEGIN
LOOP
	enderecoY <= '0';
	WAIT FOR 20000 ps;
	enderecoY <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_enderecoY;

-- escrever
t_prcs_escrever: PROCESS
BEGIN
LOOP
	escrever <= '0';
	WAIT FOR 5000 ps;
	escrever <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_escrever;

-- ler
t_prcs_ler: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ler <= '0';
		WAIT FOR 40000 ps;
		ler <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ler <= '0';
WAIT;
END PROCESS t_prcs_ler;
END final_arch;
