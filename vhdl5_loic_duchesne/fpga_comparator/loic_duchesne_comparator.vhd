-- Comparator Circuit
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity loic_duchesne_comparator is
	port (A, B: in std_logic_vector(3 downto 0);
			AgtBplusOne: out std_logic;
			AgteBplusOne: out std_logic;
			AltBplusOne: out std_logic;
			AlteBplusOne: out std_logic;
			AeqBplusOne: out std_logic;
			overflow: out std_logic);
end loic_duchesne_comparator;

architecture struct of loic_duchesne_comparator is
begin
	process (A, B)
	begin
	-- Initial conditions
		AgtBplusOne <= '0';
		AgteBplusOne <= '0';
		AltBplusOne <= '0';
		AlteBplusOne <= '0';
		AeqBplusOne <= '0';
		overflow <= '0';
	
	-- Logic
	
		if to_integer(unsigned(B)) + 1 >= 16 then
			overflow <= '1';
		else
			if to_integer(unsigned(B)) + 1 < to_integer(unsigned(A)) then
				AgtBplusOne <= '1';
				AgteBplusOne <= '1';
			elsif to_integer(unsigned(B)) + 1 > to_integer(unsigned(A)) then
				AltBplusOne <= '1';
				AlteBplusOne <= '1';
			else
				AeqBplusOne <= '1';
				AgteBplusOne <= '1';
				AlteBplusOne <= '1';
			end if;
		end if;
	end process;
end struct;