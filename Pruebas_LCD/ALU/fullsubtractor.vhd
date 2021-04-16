library ieee; use ieee.std_logic_1164.all;
use work.halfsubtractor_package.all;

entity fullsubtractor is
	port(Afs, Bfs, Bin: in std_logic;
	     Diff, Bout: out std_logic);
end fullsubtractor;

architecture main of fullsubtractor is

	signal Fs1S: std_logic;
	signal Fs2C: std_logic;
	signal Ss2C: std_logic;
	
	component halfsubtractor
	   port(Ahs, Bhs: in std_logic;
           s1, s2: out std_logic);
   end component;			  

begin
	HS1: halfsubtractor port map(Ahs=>Afs, Bhs=>Bfs, s1=>Fs1S, s2=>Fs2C);
	HS2: halfsubtractor port map(Ahs=>Fs1S, Bhs=>Bin, s1=>Diff, s2=>Ss2C);
	Bout <= Fs2C or Ss2C;
end main;	
	
library ieee; use ieee.std_logic_1164.all;
package fullsubtractor_package is
	component fullsubtractor
		port(Afs, Bfs, Bin: in std_logic;
			  Diff, Bout: out std_logic);
	end component;
end fullsubtractor_package;