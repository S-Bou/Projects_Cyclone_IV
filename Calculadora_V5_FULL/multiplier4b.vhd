library ieee; use ieee.std_logic_1164.all;
use work.halfadder_package.all;
use work.fulladder_package.all;

entity multiplier4b is
	port (Am4b, Bm4b: in std_logic_vector(3 downto 0);
	      Pm8b: out std_logic_vector(7 downto 0));
end multiplier4b;

architecture main of multiplier4b is
	signal sig0: std_logic;
	signal sig1: std_logic;
	signal sig2: std_logic;
	signal sig3: std_logic;
	signal sig4: std_logic;
	signal sig5: std_logic;
	signal sig6: std_logic;
	signal sig7: std_logic;	
	signal sig8: std_logic;
	signal sig9: std_logic;
	signal sig10: std_logic;
	signal sig11: std_logic;
	signal sig12: std_logic;
	signal sig13: std_logic;
	signal sig14: std_logic;
	signal sig15: std_logic;
	signal sig16: std_logic;
	
	component halfadder
	   port(Aha, Bha: in std_logic;
           s1, s2: out std_logic);
	end component; 
	
	component fulladder
		port(Afa, Bfa, Cin: in std_logic;
			  Sum, Cout: out std_logic);
	end component; 	
begin
	
	Pm8b(0) <= Bm4b(0) and Am4b(0);
	HA0: halfadder port map(Bm4b(0) and Am4b(1), Bm4b(1) and Am4b(0), Pm8b(1), sig0);
	HA1: halfadder port map(Bm4b(1) and Am4b(3), sig2, sig4, sig3);
	HA2: halfadder port map(sig6, Bm4b(2) and Am4b(0), Pm8b(2), sig9);
	HA3: halfadder port map(sig13, Bm4b(3) and Am4b(0), Pm8b(3), sig16);
	
	FA0: fulladder port map(Bm4b(1) and Am4b(1), Bm4b(0) and Am4b(2), sig0, sig6, sig1);
	FA1: fulladder port map(Bm4b(1) and Am4b(2), Bm4b(0) and Am4b(3), sig1, sig5, sig2);
	FA2: fulladder port map(sig5, Bm4b(2) and Am4b(1), sig9, sig13, sig8);
	FA3: fulladder port map(sig4, Bm4b(2) and Am4b(2), sig8, sig12, sig7);
	FA4: fulladder port map(sig3, Bm4b(2) and Am4b(3), sig7, sig11, sig10);
	FA5: fulladder port map(sig12, Bm4b(3) and Am4b(1), sig16, Pm8b(4), sig15);
	FA6: fulladder port map(sig11, Bm4b(3) and Am4b(2), sig15, Pm8b(5), sig14);
	FA7: fulladder port map(sig10, Bm4b(3) and Am4b(3), sig14, Pm8b(6), Pm8b(7));
	
end main;		

-----------------------------------------------------------------
-- MULTIPLIER 4 Bits
library ieee; use ieee.std_logic_1164.all;
package multiplier4b_package is
	component multiplier4b
		port (Am4b, Bm4b: in std_logic_vector(3 downto 0);
				Pm8b: out std_logic_vector(7 downto 0));
	end component;
end multiplier4b_package;		