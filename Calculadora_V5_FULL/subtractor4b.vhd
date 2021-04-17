library ieee; use ieee.std_logic_1164.all;
use work.fullsubtractor_package.all;

entity subtractor4b is 
	port(As4b, Bs4b: in std_logic_vector(3 downto 0);
	     Bin4b: in std_logic;
		  Ds8b: out std_logic_vector(7 downto 0));
end subtractor4b;

architecture main of subtractor4b is
	signal Bo1Bi2: std_logic;
	signal Bo2Bi3: std_logic;
	signal Bo3Bi4: std_logic;	
	
	component fullsubtractor
	   port(Afs, Bfs, Bin: in std_logic;
	        Diff, Bout: out std_logic);		
	end component;
begin
	FS0: fullsubtractor port map(Afs=>As4b(0), Bfs=>Bs4b(0), Bin=>Bin4b,  Diff=>Ds8b(0), Bout=>Bo1Bi2);
	FS1: fullsubtractor port map(Afs=>As4b(1), Bfs=>Bs4b(1), Bin=>Bo1Bi2, Diff=>Ds8b(1), Bout=>Bo2Bi3);
	FS2: fullsubtractor port map(Afs=>As4b(2), Bfs=>Bs4b(2), Bin=>Bo2Bi3, Diff=>Ds8b(2), Bout=>Bo3Bi4);
   FS3: fullsubtractor port map(Afs=>As4b(3), Bfs=>Bs4b(3), Bin=>Bo3Bi4, Diff=>Ds8b(3), Bout=>Ds8b(4));	
end main;	

-----------------------------------------------------------------
-- SUBTRACTOR 4 Bits
library ieee; use ieee.std_logic_1164.all;
package subtractor4b_package is
	component subtractor4b
		port(As4b, Bs4b: in std_logic_vector(3 downto 0);
			  Bin4b: in std_logic;
			  Ds8b: out std_logic_vector(7 downto 0));
	end component;
end subtractor4b_package;	