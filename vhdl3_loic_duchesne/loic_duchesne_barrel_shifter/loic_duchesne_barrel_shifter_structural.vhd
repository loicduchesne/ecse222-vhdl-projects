-- Structural 4-bit Circular Barrel Shifter
-- Authors: Loic Duchesne & Yassine Mimet

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;

entity loic_duchesne_barrel_shifter_structural is
	Port (X: in std_logic_vector (3 downto 0);
			sel: in std_logic_vector (1 downto 0);
			Y: out std_logic_vector (3 downto 0));
end loic_duchesne_barrel_shifter_structural;

architecture struct of loic_duchesne_barrel_shifter_structural is
	signal sig0, sig1, sig2, sig3 : std_logic;
begin

--leftmost layer
mux0: entity work.loic_duchesne_MUX_structural port map ( X(0), X(2), sel(1), sig0);
mux1: entity work.loic_duchesne_MUX_structural port map ( X(1), X(3), sel(1), sig1);
mux2: entity work.loic_duchesne_MUX_structural port map ( X(2), X(0), sel(1), sig2);
mux3: entity work.loic_duchesne_MUX_structural port map ( X(3), X(1), sel(1), sig3);
--rightmost layer
mux4: entity work.loic_duchesne_MUX_structural port map ( sig0, sig3, sel(0), Y(0));
mux5: entity work.loic_duchesne_MUX_structural port map ( sig1, sig0, sel(0), Y(1));
mux6: entity work.loic_duchesne_MUX_structural port map ( sig2, sig1, sel(0), Y(2));
mux7: entity work.loic_duchesne_MUX_structural port map ( sig3, sig2, sel(0), Y(3));
end struct;