-- Listing 8.4
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity KeyToASCII is
   port (key_code: in std_logic_vector(7 downto 0);
         ascii_code: out std_logic_vector(7 downto 0));
end KeyToASCII;

architecture arch of KeyToASCII is
begin
   with key_code select
      ascii_code <=
         "00110000" when "01000101",  -- 0
         "00110001" when "00010110",  -- 1
         "00110010" when "00011110",  -- 2
         "00110011" when "00100110",  -- 3
         "00110100" when "00100101",  -- 4
         "00110101" when "00101110",  -- 5
         "00110110" when "00110110",  -- 6
         "00110111" when "00111101",  -- 7
         "00111000" when "00111110",  -- 8
         "00111001" when "01000110",  -- 9
			
         "00101011" when "01011011",  -- +						
         "00101101" when "01001010",  -- -
         "01111000" when "00100010",  -- X
         "01100011" when "00100001",  -- c			
	
         "00100000" when "00101001",  -- (space)
         "00001101" when "01011010",  -- (enter, cr)
         "00001000" when "01100110",  -- (backspace)		
			
         "00111111" when others;      -- ?
end arch;

-----------------------------------------------------------------
-- ADDER 3 Bits
library ieee; use ieee.std_logic_1164.all;
package KeyToASCII_package is
	component KeyToASCII
   port (key_code: in std_logic_vector(7 downto 0);
         ascii_code: out std_logic_vector(7 downto 0));
	end component;
end KeyToASCII_package;	