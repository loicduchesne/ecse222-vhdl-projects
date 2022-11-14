-- Structural Full-Adder
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;

entity full_adder is
	port (a: in std_logic;
			b: in std_logic;
			c_in: in std_logic;
			s: out std_logic;
			c_out: out std_logic);
end full_adder;

architecture struct of full_adder is
	signal sig0, sig1, sig2 : std_logic;
begin
	ha0: entity work.half_adder port map ( a, b, sig0, sig1);
	ha1: entity work.half_adder port map ( c_in, sig0, s, sig2);
	c_out <= sig1 OR sig2;
	
end struct;