-- Behavioral 4-bit Ripple-Carry Adder
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rca_behavioral is
	port (A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(4 downto 0));
end rca_behavioral;

architecture behav of rca_behavioral is
	signal sig: integer;
begin
		sig <= to_integer(unsigned(A)) + to_integer(unsigned(B));
		S <= std_logic_vector(to_unsigned(sig, 5));

end behav;