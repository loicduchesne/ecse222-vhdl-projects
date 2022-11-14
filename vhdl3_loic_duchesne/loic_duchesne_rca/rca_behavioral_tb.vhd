library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rca_behavioral_tb is
end rca_behavioral_tb;
architecture tb of rca_behavioral_tb is                                                 
-- signals                                                   
signal A: std_logic_vector(3 downto 0);
signal B: std_logic_vector(3 downto 0);
signal S: std_logic_vector(4 downto 0);

component rca_behavioral
	port (A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(4 downto 0));
end component;

begin
	rca : rca_behavioral port map (A, B, S);

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
