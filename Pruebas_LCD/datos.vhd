library ieee;
use ieee.std_logic_1164.ALL;
use work.EntradasTeclado_package.all;

entity datos is
	PORT(dato_1: out std_logic_vector(7 downto 0));
end datos;

architecture Behavioral of datos is

	--ATTRIBUTE CHIP_PIN: STRING;
	--ATTRIBUTE CHIP_PIN OF dato_1 : SIGNAL IS "128, 121, 125, 129, 132, 126, 124, 127"; 
	
	signal dout: std_logic_vector(7 downto 0);

begin

	KEY1: EntradasTeclado port map(dout);
	
	dato_1 <= dout;

end Behavioral;
-------------------------------------------------------------------
library ieee; use ieee.std_logic_1164.all;
package datos_package is
	component datos
	PORT(fila: integer range 1 to 2;
	     columna: integer range 1 to 16);
	end component;
end datos_package;