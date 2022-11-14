-- Structural one-digit BCD adder
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;

entity bcd_adder_structural is
	port (A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			S: out std_logic_vector(3 downto 0);
			C: out std_logic);
end bcd_adder_structural;

architecture struct of bcd_adder_structural is
	signal rca0_output, rca1_output : std_logic_vector(4 downto 0);
	signal rca1_A_input, rca1_B_input : std_logic_vector(3 downto 0);
	signal output_carry : std_logic;
begin
	rca0: entity work.rca_structural port map(A, B, rca0_output);
	
	rca1_A_input <= rca0_output(3) & rca0_output(2) & rca0_output(1) & rca0_output(0);
	
	output_carry <= rca0_output(4) OR (rca0_output(2) AND rca0_output(3)) OR (rca0_output(1) AND rca0_output(3));
	
	rca1_B_input <= '0' & output_carry & output_carry & '0';
	
	rca1: entity work.rca_structural port map(rca1_A_input, rca1_B_input, rca1_output);
	
	S <= rca1_output(3) & rca1_output(2) & rca1_output(1) & rca1_output(0);
	C <= output_carry;

end struct;