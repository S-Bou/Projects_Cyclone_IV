library ieee; use ieee.std_logic_1164.all;
use work.fullsubtractor_package.all;

entity subtractor3b is 
	port(As3b, Bs3b: in std_logic_vector(2 downto 0);
	     Bin3b: in std_logic;
		  Ds3b: out std_logic_vector(3 downto 0));
end subtractor3b;

architecture main of subtractor3b is
	signal Bo1Bi2: std_logic;
	signal Bo2Bi3: std_logic;
	
	component fullsubtractor
	   port(Afs, Bfs, Bin: in std_logic;
	        Diff, Bout: out std_logic);		
	end component;
begin
	FS0: fullsubtractor port map(Afs=>As3b(0), Bfs=>Bs3b(0), Bin=>Bin3b, Diff=>Ds3b(0), Bout=>Bo1Bi2);
	FS1: fullsubtractor port map(Afs=>As3b(1), Bfs=>Bs3b(1), Bin=>Bo1Bi2, Diff=>Ds3b(1), Bout=>Bo2Bi3);
	FS2: fullsubtractor port map(Afs=>As3b(2), Bfs=>Bs3b(2), Bin=>Bo2Bi3, Diff=>Ds3b(2), Bout=>Ds3b(3));
end main;	