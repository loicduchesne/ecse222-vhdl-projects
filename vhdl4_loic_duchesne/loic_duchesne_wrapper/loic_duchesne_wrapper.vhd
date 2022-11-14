-- Wrapper circuit for a seven segment decoder
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;

entity loic_duchesne_wrapper is
	port (A, B: in std_logic_vector(3 downto 0);
			decoded_A: out std_logic_vector(6 downto 0);
			decoded_B: out std_logic_vector(6 downto 0);
			decoded_AplusB: out std_logic_vector(13 downto 0));
end loic_duchesne_wrapper;

architecture struct of loic_duchesne_wrapper is
	signal bcd_s_out : std_logic_vector(3 downto 0);
	signal c_out : std_logic;
	signal bcd_c : std_logic_vector(3 downto 0);
	signal bcd_decoded_s, bcd_decoded_c : std_logic_vector(6 downto 0);
	
begin
	-- A & B seven segment display
	-- *Note: A & B decimal value is capped at 9.
	seven_segment_decoder0: entity work.seven_segment_decoder port map (A, decoded_A);
	seven_segment_decoder1: entity work.seven_segment_decoder port map (B, decoded_B);
	
	-- AplusB seven segment display
	bcd_adder_main : entity work.bcd_adder_structural port map (A, B, bcd_s_out, c_out);

	bcd_c <= '0' & '0' & '0' & c_out;
	
	seven_segment_decoder2: entity work.seven_segment_decoder port map (bcd_s_out, bcd_decoded_s);
	seven_segment_decoder3: entity work.seven_segment_decoder port map (bcd_c, bcd_decoded_c);
	
	decoded_AplusB <= bcd_decoded_c & bcd_decoded_s;
	
end struct;