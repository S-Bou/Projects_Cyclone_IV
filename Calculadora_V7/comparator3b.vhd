library ieee; use ieee.std_logic_1164.all;

entity comparator3b is
	port(Ac3b, Bc3b: in std_logic_vector(2 downto 0);
	     Sc2b: out std_logic_vector(1 downto 0));
end comparator3b;

architecture main of comparator3b is
begin
	Sc2b <= "00" when Ac3b = Bc3b else
	        "01" when Ac3b < Bc3b else
			  "10";
end main;			  