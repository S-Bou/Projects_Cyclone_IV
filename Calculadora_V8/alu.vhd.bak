library ieee; use ieee.std_logic_1164.all;
use work.adder3b_package.all;
use work.subtractor3b_package.all;
use work.multiplier3b_package.all;
use work.comparator3b_package.all;

entity alu is
	port(sw: in std_logic_vector(9 downto 0);
		  ledr: out std_logic_vector(9 downto 0);
		  sel: inout std_logic_vector(1 downto 0);
		  solAdd: inout std_logic_vector(3 downto 0);
		  solSub: inout std_logic_vector(3 downto 0);
		  solMul: inout std_logic_vector(5 downto 0);
		  solCom: inout std_logic_vector(1 downto 0));
end alu;

architecture main of alu is
begin
	A3B: adder3b port map(sw(2 downto 0), sw(5 downto 3), sw(7), solAdd(3 downto 0));
	S3B: subtractor3b port map(sw(2 downto 0), sw(5 downto 3), sw(7), solSub(3 downto 0));
	M3B: multiplier3b port map(sw(2 downto 0), sw(5 downto 3), solMul);
	C3B: comparator3b port map(sw(2 downto 0), sw(5 downto 3), solCom(1 downto 0));
   sel <= sw(9 downto 8);
	
	process(sel) is 
	begin
		case sel	is
			when "00" => ledr(3 downto 0) <= solAdd;
			when "01" => ledr(3 downto 0) <= solSub;
			when "10" => ledr(5 downto 0) <= solMul;
			when "11" => ledr(1 downto 0) <= solCom;
			when others => ledr <= (others=>'Z');
		end case;
	end process;
end main;		  
