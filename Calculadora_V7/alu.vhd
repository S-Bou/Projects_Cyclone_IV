library ieee; use ieee.std_logic_1164.all;
use work.adder4b_package.all;
use work.subtractor4b_package.all;
use work.multiplier4b_package.all;
use work.comparator4b_package.all;

entity alu is
	port(
			cin: in  std_logic;	
		   dato1: in std_logic_vector(3 downto 0);
		   operdor: in std_logic_vector(7 downto 0);			
		   dato2: in std_logic_vector(3 downto 0);
		   solucion: out std_logic_vector(7 downto 0)
		  );
end alu;

architecture main of alu is

	signal solAdd: std_logic_vector (7 downto 0);
	signal solSub: std_logic_vector (7 downto 0);
	signal solMul: std_logic_vector (7 downto 0);
	signal solCom: std_logic_vector (1 downto 0);	

begin

	A4B: adder4b port map(dato1, dato2, cin, solAdd);
	S4B: subtractor4b port map(dato1, dato2, cin, solSub);
	M4B: multiplier4b port map(dato1, dato2, solMul);
	C4B: comparator4b port map(dato1, dato2, solCom);

	
	process(operdor) is 
	begin
		case operdor is
			when "00101011" => solucion <= solAdd;
			when "00101101" => solucion <= solSub;
			when "01111000" => solucion <= solMul;
			when "01100011" => solucion(1 downto 0) <= solCom;
			when others => solucion <= (others=>'Z');
		end case;
	end process;
end main;		  
-----------------------------------------------------------------
-- ALU
library ieee; use ieee.std_logic_1164.all;
package alu_package is
	component alu
	port(
			cin: in  std_logic;	
		   dato1: in std_logic_vector(3 downto 0);
		   operdor: in std_logic_vector(7 downto 0);			
		   dato2: in std_logic_vector(3 downto 0);
		   solucion: out std_logic_vector(7 downto 0)
		  );
	end component;
end alu_package;	