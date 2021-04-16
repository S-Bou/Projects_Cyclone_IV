library ieee; use ieee.std_logic_1164.all;

entity clk_div is
	generic(divider: integer := 50000000);
	port(clk_in, reset: in std_logic;
	     clk_out: out std_logic);
end clk_div;		

architecture behavioral of clk_div is
	signal contador: integer range 0 to ((divider/2)-1);
	signal clk_sig: std_logic;	
begin
	process (clk_in) 
	begin
		if reset='0' then
			contador <= 0;
			clk_sig <= '0'; 
		elsif (clk_in'event and clk_in = '1') then
		   if (contador = ((divider/2)-1)) then
				clk_sig <= not clk_sig;
				contador <= 0;
			else
				contador <= contador + 1;
			end if;
		end if;
	end process;
	clk_out <= clk_sig;	
end behavioral;

-----------------------------------------------------------------

library ieee; use ieee.std_logic_1164.all;
package clk_div_package is
	component clk_div
	generic(divider: integer := 50000000);
	port(clk_in, reset: in std_logic;
	     clk_out: out std_logic);
	end component;
end clk_div_package;	