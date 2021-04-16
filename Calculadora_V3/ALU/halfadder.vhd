library ieee; use ieee.std_logic_1164.all;

entity halfadder is
	port(Aha, Bha: in std_logic;
        s1, s2: out std_logic);
end halfadder;

Architecture main of halfadder is
begin
	S1 <= Aha xor Bha;
	S2 <= Aha and Bha;
end main;	

library ieee; use ieee.std_logic_1164.all;
package halfadder_package is
	component halfadder
		port(Aha, Bha: in std_logic;
			  s1, s2: out std_logic);
	end component;
end halfadder_package;