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
-- Generated on "11/05/2023 22:47:21"
                                                             
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
	Saida : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
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
	WAIT FOR 17091 ps;
	D(7) <= '1';
	WAIT FOR 22753 ps;
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
	WAIT FOR 561 ps;
	D(6) <= '1';
	WAIT FOR 16456 ps;
	D(6) <= '0';
	WAIT FOR 74 ps;
	D(6) <= '1';
	WAIT FOR 32989 ps;
	D(6) <= '0';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
	WAIT FOR 561 ps;
	D(5) <= '1';
	WAIT FOR 10000 ps;
	D(5) <= '0';
	WAIT FOR 6530 ps;
	D(5) <= '1';
	WAIT FOR 22753 ps;
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '0';
	WAIT FOR 561 ps;
	D(4) <= '1';
	WAIT FOR 16456 ps;
	D(4) <= '0';
	WAIT FOR 74 ps;
	D(4) <= '1';
	WAIT FOR 12753 ps;
	D(4) <= '0';
	WAIT FOR 10000 ps;
	D(4) <= '1';
	WAIT FOR 10236 ps;
	D(4) <= '0';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 561 ps;
	D(3) <= '1';
	WAIT FOR 10000 ps;
	D(3) <= '0';
	WAIT FOR 6530 ps;
	D(3) <= '1';
	WAIT FOR 12753 ps;
	D(3) <= '0';
	WAIT FOR 10000 ps;
	D(3) <= '1';
	WAIT FOR 10236 ps;
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 561 ps;
	D(2) <= '1';
	WAIT FOR 10000 ps;
	D(2) <= '0';
	WAIT FOR 6530 ps;
	D(2) <= '1';
	WAIT FOR 12753 ps;
	D(2) <= '0';
	WAIT FOR 10000 ps;
	D(2) <= '1';
	WAIT FOR 10236 ps;
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
	WAIT FOR 17091 ps;
	D(1) <= '1';
	WAIT FOR 12753 ps;
	D(1) <= '0';
	WAIT FOR 10000 ps;
	D(1) <= '1';
	WAIT FOR 10236 ps;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
	WAIT FOR 561 ps;
	D(0) <= '1';
	WAIT FOR 16456 ps;
	D(0) <= '0';
	WAIT FOR 74 ps;
	D(0) <= '1';
	WAIT FOR 32989 ps;
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
	enderecoX <= '0';
	WAIT FOR 40148 ps;
	enderecoX <= '1';
	WAIT FOR 19652 ps;
	enderecoX <= '0';
WAIT;
END PROCESS t_prcs_enderecoX;

-- enderecoY
t_prcs_enderecoY: PROCESS
BEGIN
	enderecoY <= '0';
WAIT;
END PROCESS t_prcs_enderecoY;

-- escrever
t_prcs_escrever: PROCESS
BEGIN
	escrever <= '0';
	WAIT FOR 15670 ps;
	escrever <= '1';
	WAIT FOR 13315 ps;
	escrever <= '0';
	WAIT FOR 15211 ps;
	escrever <= '1';
	WAIT FOR 8244 ps;
	escrever <= '0';
WAIT;
END PROCESS t_prcs_escrever;

-- ler
t_prcs_ler: PROCESS
BEGIN
	ler <= '0';
	WAIT FOR 299 ps;
	ler <= '1';
	WAIT FOR 14661 ps;
	ler <= '0';
	WAIT FOR 19080 ps;
	ler <= '1';
	WAIT FOR 7360 ps;
	ler <= '0';
	WAIT FOR 12070 ps;
	ler <= '1';
	WAIT FOR 12659 ps;
	ler <= '0';
WAIT;
END PROCESS t_prcs_ler;
END final_arch;
