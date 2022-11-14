-- Structural 4-bit Ripple-Carry Adder
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;

entity rca_structural is
	port (A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(4 downto 0));
end rca_structural;

architecture struct of rca_structural is
	signal sig0, sig1, sig2 : std_logic;
begin
	-- Half-Adder
	ha0: entity work.half_adder port map(B(0), A(0), S(0), sig0);
	-- Full-Adders
	fa0: entity work.full_adder port map ( B(1), A(1), sig0, S(1), sig1);
	fa1: entity work.full_adder port map ( B(2), A(2), sig1, S(2), sig2);
	fa2: entity work.full_adder port map ( B(3), A(3), sig2, S(3), S(4));

end struct;