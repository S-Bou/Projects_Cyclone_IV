library ieee; use ieee.std_logic_1164.all;

entity halfsubtractor is
	port(Ahs, Bhs: in std_logic;
        s1, s2: out std_logic);
end halfsubtractor;

Architecture main of halfsubtractor is
begin
	s1 <= Ahs xor Bhs;
	s2 <= not(Ahs) and Bhs;
end main;	

library ieee; use ieee.std_logic_1164.all;
package halfsubtractor_package is
	component halfsubtractor
		port(Aha, Bha: in std_logic;
			  s1, s2: out std_logic);
	end component;
end halfsubtractor_package;