library ieee; use ieee.std_logic_1164.all;
use work.fulladder_package.all;

entity adder3b is
	port(Aa3b, Ba3b: in std_logic_vector(2 downto 0);
	     Cin3b: in std_logic;
	     Sa3b: out std_logic_vector(3 downto 0));
end adder3b;

architecture main of adder3b is
	signal Co1Ci2: std_logic;
	signal Co2Ci3: std_logic;

begin

	FA0: fulladder port map(Afa=>Aa3b(0), Bfa=>Ba3b(0), Cin=>Cin3b, Sum=>Sa3b(0), Cout=>Co1Ci2);
	FA1: fulladder port map(Afa=>Aa3b(1), Bfa=>Ba3b(1), Cin=>Co1Ci2, Sum=>Sa3b(1), Cout=>Co2Ci3);
	FA2: fulladder port map(Afa=>Aa3b(2), Bfa=>Ba3b(2), Cin=>Co2Ci3, Sum=>Sa3b(2), Cout=>Sa3b(3));

end main;		  
-----------------------------------------------------------------
-- ADDER 3 BITS
library ieee; use ieee.std_logic_1164.all;
package adder3b_package is
	component adder3b
		port(Aa3b, Ba3b: in std_logic_vector(2 downto 0);
			  Cin3b: in std_logic;
			  Sa3b: out std_logic_vector(3 downto 0));
	end component;
end adder3b_package;	