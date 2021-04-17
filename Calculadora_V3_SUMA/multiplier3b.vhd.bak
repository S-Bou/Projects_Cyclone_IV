library ieee; use ieee.std_logic_1164.all;
use work.halfadder_package.all;
use work.fulladder_package.all;

entity multiplier3b is
	port (Am3b, Bm3b: in std_logic_vector(2 downto 0);
	      Pm6b: out std_logic_vector(5 downto 0));
end multiplier3b;

architecture main of multiplier3b is
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
	
	Pm6b(0) <= Bm3b(0) and Am3b(0);
	HA0: halfadder port map(Bm3b(0) and Am3b(1), Bm3b(1) and Am3b(0), Pm6b(1), sig0);
	HA1: halfadder port map(Bm3b(0) and Am3b(2), Bm3b(1) and Am3b(1), sig1, sig2);
	FA0: fulladder port map(sig1, Bm3b(2) and Am3b(0), sig0, Pm6b(2), sig3);
	FA1: fulladder port map(Bm3b(1) and Am3b(2), Bm3b(2) and Am3b(1), sig2, sig4, sig6);
	FA2: fulladder port map(sig6, Bm3b(2) and Am3b(2), sig5, Pm6b(4), Pm6b(5));
	HA2: halfadder port map(sig3, sig4, Pm6b(3), sig5);

end main;			