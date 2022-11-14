-- Structural 2-to-1 Multiplexer
-- Authors: Loic Duchesne & Yassine Mimet

--*copied from vhdl2 lab into this library

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity loic_duchesne_MUX_structural is
	Port (A : in std_logic;
		B : in std_logic;
		S : in std_logic;
		Y : out std_logic);
end loic_duchesne_MUX_structural;

architecture STRUCT of loic_duchesne_MUX_structural is
begin
	Y <= (B and S) or ((not S) and A);
end STRUCT;