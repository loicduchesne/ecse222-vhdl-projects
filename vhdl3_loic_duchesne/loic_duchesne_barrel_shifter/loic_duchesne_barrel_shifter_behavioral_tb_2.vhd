library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity loic_duchesne_barrel_shifter_behavioral_tb_2 is
end loic_duchesne_barrel_shifter_behavioral_tb_2;
architecture tb of loic_duchesne_barrel_shifter_behavioral_tb_2 is                                                 
-- signals                                                   
signal X: std_logic_vector (3 downto 0);
signal sel: std_logic_vector (1 downto 0);
signal Y: std_logic_vector (3 downto 0);

component loic_duchesne_barrel_shifter_behavioral
	Port (X: in std_logic_vector (3 downto 0);
			sel: in std_logic_vector (1 downto 0);
			Y: out std_logic_vector (3 downto 0));
end component;

begin
	i1 : loic_duchesne_barrel_shifter_behavioral port map (X, sel, Y);

generate_test: process
begin
	--Setting X to "1011"
	X <= "1011";
	
	for j in 0 to 4 loop
	sel <= std_logic_vector(to_unsigned(j, 2));
	wait for 10 ns;
	end loop;
	wait;
end process generate_test;
end tb;
