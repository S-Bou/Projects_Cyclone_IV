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
	HA1: halfadder port map(Bm4b(0) and Am4b(2), Bm4b(1) and Am4b(1), sig1, sig2);
	FA0: fulladder port map(sig1, Bm4b(2) and Am4b(0), sig0, Pm8b(2), sig3);
	FA1: fulladder port map(Bm4b(1) and Am4b(2), Bm4b(2) and Am4b(1), sig2, sig4, sig6);
	FA2: fulladder port map(sig6, Bm4b(2) and Am4b(2), sig5, Pm8b(4), Pm8b(5));
	HA2: halfadder port map(sig3, sig4, Pm8b(3), sig5);

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