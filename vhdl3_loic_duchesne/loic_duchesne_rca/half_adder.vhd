-- Structural Half-Adder
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity half_adder is
	port (a: in std_logic;
			b: in std_logic;
			s: out std_logic;
			c: out std_logic);
end half_adder;

architecture struct of half_adder is
begin
	s <= a XOR b;
	c <= a AND b;
	
end struct;