-- Behavioral one-digit BCD adder
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_adder_behavioral is
	port (A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(3 downto 0);
			C: out std_logic);
end bcd_adder_behavioral;

architecture behav of bcd_adder_behavioral is
	signal Z : std_logic_vector(4 downto 0);
	signal output : std_logic_vector(4 downto 0);
	signal adjust : std_logic;
begin
		Z <= ('0' & A) + B;
		adjust <= '1' when Z>9 else '0';
		output <= Z when (adjust='0') else Z + 6;
		
		S <= output(3) & output(2) & output(1) & output(0);
		C <= adjust;

end behav;