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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
-- CREATED		"Tue Sep 13 18:28:07 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY loic_duchesne_comp IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC
	);
END loic_duchesne_comp;

ARCHITECTURE bdf_type OF loic_duchesne_comp IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= NOT(A(0) XOR B(0));


SYNTHESIZED_WIRE_1 <= NOT(A(1) XOR B(1));


SYNTHESIZED_WIRE_2 <= NOT(A(2) XOR B(2));


SYNTHESIZED_WIRE_3 <= NOT(A(3) XOR B(3));


AeqB <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_3;


END bdf_type;