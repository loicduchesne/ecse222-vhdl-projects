library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_structural_tb is
end full_adder_structural_tb;
architecture tb of full_adder_structural_tb is                                                 
-- signals                                                   
signal a: std_logic;
signal b: std_logic;
signal c_in: std_logic;
signal s: std_logic;
signal c_out: std_logic;

component full_adder
	port (a: in std_logic;
			b: in std_logic;
			c_in: in std_logic;
			s: out std_logic;
			c_out: out std_logic);
end component;

begin
	fa : full_adder port map (a, b, c_in, s, c_out);

generate_test: process
begin
	for i in std_logic range '0' to '1' loop
	a <= i;
		for j in std_logic range '0' to '1' loop
			b <= j;
				for k in std_logic range '0' to '1' loop
				c_in <= k;
			wait for 10 ns;

	end loop;
	end loop;
	end loop;
	wait;
end process generate_test;
end tb;
