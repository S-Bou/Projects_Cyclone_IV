library ieee; use ieee.std_logic_1164.all;

entity comparator4b is
	port(Ac4b, Bc4b: in std_logic_vector(3 downto 0);
	     Sc2b: out std_logic_vector(1 downto 0));
end comparator4b;

architecture main of comparator4b is
begin
	Sc2b <= "00" when Ac4b = Bc4b else
	        "01" when Ac4b < Bc4b else
			  "10";
end main;			  
-----------------------------------------------------------------
-- COMPARATOR 4 Bits
library ieee; use ieee.std_logic_1164.all;
package comparator4b_package is
	component comparator4b
		port(Ac4b, Bc4b: in std_logic_vector(3 downto 0);
			  Sc2b: out std_logic_vector(1 downto 0));
	end component;
end comparator4b_package;