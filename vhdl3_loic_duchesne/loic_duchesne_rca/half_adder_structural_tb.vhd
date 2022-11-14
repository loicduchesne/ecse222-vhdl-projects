library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity half_adder_structural_tb is
end half_adder_structural_tb;
architecture tb of half_adder_structural_tb is                                                 
-- signals                                                   
signal a: std_logic;
signal b: std_logic;
signal s: std_logic;
signal c: std_logic;

component half_adder
	port (a: in std_logic;
			b: in std_logic;
			s: out std_logic;
			c: out std_logic);
end component;

begin
	ha : half_adder port map (a, b, s, c);

generate_test: process
begin
	for i in std_logic range '0' to '1' loop
	a <= i;
		for j in std_logic range '0' to '1' loop
			b <= j;
			wait for 10 ns;

	end loop;
	end loop;
	wait;
end process generate_test;
end tb;
