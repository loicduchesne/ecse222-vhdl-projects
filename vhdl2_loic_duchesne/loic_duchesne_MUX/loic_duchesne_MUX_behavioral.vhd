library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity loic_duchesne_MUX_behavioral is
	Port (A : in std_logic;
		B : in std_logic;
		S : in std_logic;
		Y : out std_logic);
end loic_duchesne_MUX_behavioral;

architecture BEHAV of loic_duchesne_MUX_behavioral is
begin
	with S select
		Y <= A when '0',
			  B when '1',
			  'X' when others;
end BEHAV;