library ieee; use ieee.std_logic_1164.all;
use work.adder8b_package.all;
use work.subtractor3b_package.all;
use work.multiplier3b_package.all;
use work.comparator3b_package.all;

entity alu is
	port(
			cin: in  std_logic;	
		   dato1: in std_logic_vector(7 downto 0);
		   operdor: in std_logic_vector(7 downto 0);			
		   dato2: in std_logic_vector(7 downto 0);
		   solucion: out std_logic_vector(7 downto 0)
		  );
end alu;

architecture main of alu is

	signal solAdd: std_logic_vector (7 downto 0);
	signal solSub: std_logic_vector (7 downto 0);
	signal solMul: std_logic_vector (7 downto 0);

begin

	A8B: adder8b port map(dato1, dato2, cin, solAdd);
	--S3B: subtractor3b port map(sw(2 downto 0), sw(5 downto 3), sw(7), solSub(3 downto 0));
	--M3B: multiplier3b port map(sw(2 downto 0), sw(5 downto 3), solMul);
	-- C3B: comparator3b port map(sw(2 downto 0), sw(5 downto 3), solCom(1 downto 0));

	
	process(operdor) is 
	begin
		case operdor is
			when "00101011" => solucion <= solAdd;
			when "00101101" => solucion <= solSub;
			when "01111000" => solucion <= solMul;
			--when "11" => ledr(1 downto 0) <= solCom;
			when others => solucion <= (others=>'Z');
		end case;
	end process;
end main;		  
-----------------------------------------------------------------
-- alu
library ieee; use ieee.std_logic_1164.all;
package alu_package is
	component alu
	port(
			cin: in  std_logic;	
		   dato1: in std_logic_vector(7 downto 0);
		   operdor: in std_logic_vector(7 downto 0);			
		   dato2: in std_logic_vector(7 downto 0);
		   solucion: out std_logic_vector(7 downto 0)
		  );
	end component;
end alu_package;	