-- Behavioral 4-bit Circular Barrel Shifter
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity loic_duchesne_barrel_shifter_behavioral is
	Port (X: in std_logic_vector (3 downto 0);
			sel: in std_logic_vector (1 downto 0);
			Y: out std_logic_vector (3 downto 0));
end loic_duchesne_barrel_shifter_behavioral;

architecture behav of loic_duchesne_barrel_shifter_behavioral is
begin
	with sel select
			--Y[3]   Y[2]   Y[1]   Y[0]
		Y <= X(3) & X(2) & X(1) & X(0) when "00",
			  X(2) & X(1) & X(0) & X(3) when "01",
			  X(1) & X(0) & X(3) & X(2) when "10",
			  X(0) & X(3) & X(2) & X(1) when "11",
			  "XXXX" when others;
end behav;