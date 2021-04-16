-- Listing 8.4
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ASCIIToBin is
   port (ascii_code: in std_logic_vector(7 downto 0);
         bin_code: out std_logic_vector(7 downto 0));
end ASCIIToBin;

architecture arch of ASCIIToBin is
begin
   with ascii_code select
      bin_code <=
         "00000000" when "00001101",  -- 0		
         "00000001" when "00110000",  -- 1
         "00000010" when "00110001",  -- 2
         "00000011" when "00110010",  -- 3
         "00000100" when "00110011",  -- 4
         "00000101" when "00110100",  -- 5
         "00000110" when "00110101",  -- 6
         "00000111" when "00110110",  -- 7
         "00001000" when "00110111",  -- 8
         "00001001" when "00111000",  -- 9
         "00001010" when "00111001",  -- A
         "00001011" when "00101011",  -- B						
         "00001100" when "00101101",  -- C
         "00001101" when "01111000",  -- D
         "00001110" when "00111101",  -- E			
         "00001111" when "00100000",  -- F		
			
         "00111111" when others;      -- ?
end arch;

-----------------------------------------------------------------
-- ASCIIToBin
library ieee; use ieee.std_logic_1164.all;
package ASCIIToBin_package is
	component ASCIIToBin
   port (ascii_code: in std_logic_vector(7 downto 0);
         bin_code: out std_logic_vector(7 downto 0));
	end component;
end ASCIIToBin_package;	