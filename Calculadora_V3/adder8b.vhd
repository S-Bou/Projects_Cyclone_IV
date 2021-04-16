library ieee; use ieee.std_logic_1164.all;
use work.fulladder_package.all;

entity adder8b is
	port(Aa8b, Ba8b: in std_logic_vector(3 downto 0);
	     Cin8b: in std_logic;
	     Sa8b: out std_logic_vector(3 downto 0));
end adder8b;

architecture main of adder8b is
	signal Co1Ci2: std_logic;
	signal Co2Ci3: std_logic;
	signal Co3Ci4: std_logic;
	signal Co4Ci5: std_logic;
	signal Co5Ci6: std_logic;
	signal Co6Ci7: std_logic;
	signal Co7Ci8: std_logic;

	

	--component fulladder
		--port(Afa, Bfa, Cin: in std_logic;
	        --Sum, Cout: out std_logic);
	--end component;
begin

-- G1: for i in 0 to 7 generate
--		FAi: fulladder port map(Afa=>Aa8b(i), Bfa=>Ba8b(i), Cin=>Cin8b, Sum=>Sa8b(i), Cout=>Co1Ci2);
-- end generate;

--	FA0: fulladder port map(Afa=>Aa3b(0), Bfa=>Ba3b(0), Cin=>Cin3b, Sum=>Sa3b(0), Cout=>Co1Ci2);
--	FA1: fulladder port map(Afa=>Aa3b(1), Bfa=>Ba3b(1), Cin=>Co1Ci2, Sum=>Sa3b(1), Cout=>Co2Ci3);
--	FA2: fulladder port map(Afa=>Aa3b(2), Bfa=>Ba3b(2), Cin=>Co2Ci3, Sum=>Sa3b(2), Cout=>Sa3b(3));

	
	FA0: fulladder port map(Afa=>Aa8b(0), Bfa=>Ba8b(0), Cin=>Cin8b,  Sum=>Sa8b(0), Cout=>Co1Ci2);
	FA1: fulladder port map(Afa=>Aa8b(1), Bfa=>Ba8b(1), Cin=>Co1Ci2, Sum=>Sa8b(1), Cout=>Co2Ci3);
	FA2: fulladder port map(Afa=>Aa8b(2), Bfa=>Ba8b(2), Cin=>Co2Ci3, Sum=>Sa8b(2), Cout=>Sa8b(3));
	--FA3: fulladder port map(Afa=>Aa8b(3), Bfa=>Ba8b(3), Cin=>Co3Ci4, Sum=>Sa8b(3), Cout=>Sa8b(3));
--	FA4: fulladder port map(Afa=>Aa8b(4), Bfa=>Ba8b(4), Cin=>Co4Ci5, Sum=>Sa8b(4), Cout=>Co5Ci6);
--	FA5: fulladder port map(Afa=>Aa8b(5), Bfa=>Ba8b(5), Cin=>Co5Ci6, Sum=>Sa8b(5), Cout=>Co6Ci7);
--	FA6: fulladder port map(Afa=>Aa8b(6), Bfa=>Ba8b(6), Cin=>Co6Ci7, Sum=>Sa8b(6), Cout=>Sa8b(7));
	--FA7: fulladder port map(Afa=>Aa8b(7), Bfa=>Ba8b(7), Cin=>Co7Ci8, Sum=>Sa8b(7), Cout=>Sa8b(7));
	

	
end main;		  

-----------------------------------------------------------------
-- ADDER 8 BITS
library ieee; use ieee.std_logic_1164.all;
package adder8b_package is
	component adder8b
	port(Aa8b, Ba8b: in std_logic_vector(3 downto 0);
	     Cin8b: in std_logic;
	     Sa8b: out std_logic_vector(3 downto 0));
	end component;
end adder8b_package;
-- OTRA FORMA

-- G1: for i in 0 to 1 generate
--		FAi: fulladder port map(Afa=>Aa3b(i), Bfa=>Ba3b(i), Cin=>Cin3b, Sum=>Sa3b(i), Cout=>Co1Ci2);
-- end generate;	
--  	FA2: fulladder port map(Afa=>Aa3b(2), Bfa=>Ba3b(2), Cin=>Co2Ci3, Sum=>Sa3b(2), Cout=>Sa3b(3));