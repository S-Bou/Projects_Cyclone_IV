library ieee; use ieee.std_logic_1164.all;
use work.fulladder_package.all;

entity adder4b is
	port(Aa4b, Ba4b: in std_logic_vector(3 downto 0);
	     Cin4b: in std_logic;
	     Sa8b: out std_logic_vector(7 downto 0));
end adder4b;

architecture main of adder4b is
	signal Co1Ci2: std_logic;
	signal Co2Ci3: std_logic;
	signal Co3Ci4: std_logic;	

begin

	FA0: fulladder port map(Afa=>Aa4b(0), Bfa=>Ba4b(0), Cin=>Cin4b,  Sum=>Sa8b(0), Cout=>Co1Ci2);
	FA1: fulladder port map(Afa=>Aa4b(1), Bfa=>Ba4b(1), Cin=>Co1Ci2, Sum=>Sa8b(1), Cout=>Co2Ci3);
	FA2: fulladder port map(Afa=>Aa4b(2), Bfa=>Ba4b(2), Cin=>Co2Ci3, Sum=>Sa8b(2), Cout=>Co3Ci4);
	FA4: fulladder port map(Afa=>Aa4b(3), Bfa=>Ba4b(3), Cin=>Co3Ci4, Sum=>Sa8b(3), Cout=>Sa8b(4));	

end main;		  
-----------------------------------------------------------------
-- ADDER 4 BITS
library ieee; use ieee.std_logic_1164.all;
package adder4b_package is
	component adder4b
		port(Aa4b, Ba4b: in std_logic_vector(3 downto 0);
			  Cin4b: in std_logic;
			  Sa8b: out std_logic_vector(7 downto 0));
	end component;
end adder4b_package;	