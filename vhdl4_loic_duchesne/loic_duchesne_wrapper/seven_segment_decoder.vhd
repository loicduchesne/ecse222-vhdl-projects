-- Seven segment decoder

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;

entity seven_segment_decoder is
	port (code: in std_logic_vector(3 downto 0);
			segments_out: out std_logic_vector(6 downto 0));
end seven_segment_decoder;

architecture decoder of seven_segment_decoder is
begin
with code select
	segments_out <=
	"1000000" when "0000", -- 0
	"1111001" when "0001", -- 1
	"0100100" when "0010", -- 2
	"0110000" when "0011", -- 3
	"0011001" when "0100", -- 4
	"0010010" when "0101", -- 5
	"0000010" when "0110", -- 6
	"1111000" when "0111", -- 7
	"0000000" when "1000", -- 8
	"0010000" when "1001", -- 9
	"1111111" when others;
end decoder;
