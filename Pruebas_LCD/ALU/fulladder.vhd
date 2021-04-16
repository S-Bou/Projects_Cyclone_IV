library ieee; use ieee.std_logic_1164.all;
use work.halfadder_package.all;

entity fulladder is
	port(Afa, Bfa, Cin: in std_logic;
	     Sum, Cout: out std_logic);
end fulladder;

architecture main of fulladder is

	signal Fs1S: std_logic;
	signal Fs2C: std_logic;
	signal Ss2C: std_logic;
	
	component halfadder
	   port(Aha, Bha: in std_logic;
           s1, s2: out std_logic);
   end component;			  

begin
	HA1: halfadder port map(Aha=>Afa, Bha=>Bfa, s1=>Fs1S, s2=>Fs2C);
	HA2: halfadder port map(Aha=>Fs1S, Bha=>Cin, s1=>Sum, s2=>Ss2C);
	Cout <= Fs2C or Ss2C;
end main;	
	
library ieee; use ieee.std_logic_1164.all;
package fulladder_package is
	component fulladder
		port(Afa, Bfa, Cin: in std_logic;
			  Sum, Cout: out std_logic);
	end component;
end fulladder_package;