-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/13/2022 18:38:39"
                                                            
-- Vhdl Test Bench template for design  :  loic_duchesne_MUX_structural
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY loic_duchesne_MUX_testbench IS
END loic_duchesne_MUX_testbench;
ARCHITECTURE loic_duchesne_MUX_structural_arch OF loic_duchesne_MUX_testbench IS
-- constants                                                 
-- signals                                                   
SIGNAL A : std_logic;
SIGNAL B : std_logic;
SIGNAL S : std_logic;
SIGNAL Y : std_logic;
COMPONENT loic_duchesne_MUX_structural
	PORT (
	A : IN std_logic;
	B : IN std_logic;
	S : IN std_logic;
	Y : OUT std_logic
	);
END COMPONENT;
BEGIN
	i1 : loic_duchesne_MUX_structural
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	S => S,
	Y => Y
	);                              
generate_test: PROCESS
BEGIN
	FOR i IN std_logic range '0' to '1' LOOP
	A <= i;
		FOR j IN std_logic range '0' to '1' LOOP
			B <= j;
				FOR k IN std_logic range '0' to '1' LOOP
				S <= k;
				WAIT FOR 10 ns;
	END LOOP;
	END LOOP;
	END LOOP;
	WAIT;
END PROCESS generate_test;
END loic_duchesne_MUX_structural_arch;
