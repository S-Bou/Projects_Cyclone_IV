-- LIBRARY PACKAGES ALU
-----------------------------------------------------------------
-- ADDER 8 Bits
library ieee; use ieee.std_logic_1164.all;
package adder8b_package is
	component adder8b
		port(Aa8b, Ba8b: in std_logic_vector(7 downto 0);
			  Cin8b: in std_logic;
	        Sa8b: out std_logic_vector(7 downto 0));
	end component;
end adder8b_package;	

-----------------------------------------------------------------
-- SUBTRACTOR 3 Bits
library ieee; use ieee.std_logic_1164.all;
package subtractor3b_package is
	component subtractor3b
		port(As3b, Bs3b: in std_logic_vector(2 downto 0);
			  Bin3b: in std_logic;
			  Ds3b: out std_logic_vector(3 downto 0));
	end component;
end subtractor3b_package;	

-----------------------------------------------------------------
-- MULTIPLIER 3 Bits
library ieee; use ieee.std_logic_1164.all;
package multiplier3b_package is
	component multiplier3b
		port (Am3b, Bm3b: in std_logic_vector(2 downto 0);
				Pm6b: out std_logic_vector(5 downto 0));
	end component;
end multiplier3b_package;	

-----------------------------------------------------------------
-- COMPARATOR 3 Bits
library ieee; use ieee.std_logic_1164.all;
package comparator3b_package is
	component comparator3b
		port(Ac3b, Bc3b: in std_logic_vector(2 downto 0);
			  Sc2b: out std_logic_vector(1 downto 0));
	end component;
end comparator3b_package;	

-----------------------------------------------------------------
-- FULL ADDER
library ieee; use ieee.std_logic_1164.all;
package fulladder_package is
	component fulladder
		port(Afa, Bfa, Cin: in std_logic;
			  Sum, Cout: out std_logic);
	end component;
end fulladder_package;
