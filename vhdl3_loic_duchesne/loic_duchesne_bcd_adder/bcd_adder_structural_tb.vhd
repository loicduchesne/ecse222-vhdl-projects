library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_adder_structural_tb is
end bcd_adder_structural_tb;
architecture tb of bcd_adder_structural_tb is                                                 
-- signals                                                   
signal A: std_logic_vector(3 downto 0);
signal B: std_logic_vector(3 downto 0);
signal S: std_logic_vector(3 downto 0);
signal C: std_logic;

component bcd_adder_structural
	port (A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(3 downto 0);
			C: out std_logic);
end component;

begin
	bcd : bcd_adder_structural port map (A, B, S, C);

generate_test: process
begin
	for i in 0 to 16 loop
	A <= std_logic_vector(to_unsigned(i, 4));
		for j in 0 to 16 loop
			B <= std_logic_vector(to_unsigned(j, 4));
			wait for 10 ns;

	end loop;
	end loop;
	wait;
end process generate_test;
end tb;
