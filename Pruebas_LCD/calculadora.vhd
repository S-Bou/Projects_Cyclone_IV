library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE WORK.COMANDOS_LCD4BITS_REVC.ALL;
use work.EntradasTeclado_package.all;

entity calculadora is

	GENERIC(FPGA_CLK : INTEGER := 50_000_000);
	PORT(
	------------------PUERTOS DE LA LCD------------------
		CLK: IN STD_LOGIC;
		RS 		  : OUT STD_LOGIC;							
		RW		  : OUT STD_LOGIC;						
		ENA 	  : OUT STD_LOGIC;						
		DATA_LCD : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); 

	--------------Para activar el digito 1 de 7 seg------	
		digit1: out std_logic;
	--------------Para el teclado------------------------
		reset, ps2d, ps2c, rx_en: in std_logic;	
		rx_done_tick: out std_logic;
		dout: out std_logic_vector(7 downto 0)
		
		  );
end calculadora;

architecture Behavioral of calculadora is


CONSTANT NUM_INSTRUCCIONES : INTEGER := 6; 	--INDICAR EL NÚMERO DE INSTRUCCIONES PARA LA LCD


--------------------------------------------------------------------------------
-------------------------SEÑALES DE LA LCD (NO BORRAR)--------------------------
																										--
component PROCESADOR_LCD4BITS_REVC is														--
																										--
GENERIC(																								--
			FPGA_CLK : INTEGER := 50_000_000;												--
			NUM_INST : INTEGER := 1																--
);																										--
																										--
PORT( CLK 				 : IN  STD_LOGIC;														--
	   VECTOR_MEM 		 : IN  STD_LOGIC_VECTOR(8  DOWNTO 0);							--
	   C1A,C2A,C3A,C4A : IN  STD_LOGIC_VECTOR(39 DOWNTO 0);							--
	   C5A,C6A,C7A,C8A : IN  STD_LOGIC_VECTOR(39 DOWNTO 0);							--
	   RS 				 : OUT STD_LOGIC;														--
	   RW 				 : OUT STD_LOGIC;														--
	   ENA 				 : OUT STD_LOGIC;														--
	   BD_LCD 			 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);			         	--
	   DATA 				 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);							--
	   DIR_MEM 			 : OUT INTEGER RANGE 0 TO NUM_INSTRUCCIONES          		--
	);																									--
																										--
end component PROCESADOR_LCD4BITS_REVC;													--
																										--													--																									--
CONSTANT CHAR1 : INTEGER := 1;																--
CONSTANT CHAR2 : INTEGER := 2;																--
CONSTANT CHAR3 : INTEGER := 3;																--
CONSTANT CHAR4 : INTEGER := 4;																--
CONSTANT CHAR5 : INTEGER := 5;																--
CONSTANT CHAR6 : INTEGER := 6;																--
CONSTANT CHAR7 : INTEGER := 7;																--
CONSTANT CHAR8 : INTEGER := 8;																--
																										--
type ram is array (0 to  NUM_INSTRUCCIONES) of std_logic_vector(8 downto 0); 	--
signal INST : ram := (others => (others => '0'));										--
																										--
signal blcd 			  : std_logic_vector(7 downto 0):= (others => '0');		--																										
signal vector_mem 	  : STD_LOGIC_VECTOR(8  DOWNTO 0) := (others => '0');	   --
signal c1s,c2s,c3s,c4s : std_logic_vector(39 downto 0) := (others => '0');		--
signal c5s,c6s,c7s,c8s : std_logic_vector(39 downto 0) := (others => '0');	   -- 
signal dir_mem 		  : integer range 0 to NUM_INSTRUCCIONES := 0;				--
                                                                              --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------	
																									


signal numKey: std_logic_vector(7 downto 0);  
signal B_Sout: std_logic_vector(7 downto 0);  
signal fila: integer range 1 to 2 :=1;   
signal columna: integer range 1 to 16 :=1;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------	
																										
--------------------------------------------------------------------------------
-------------------------ASIGNACIÓN DE PINES------------------------------------

ATTRIBUTE CHIP_PIN: STRING;
ATTRIBUTE CHIP_PIN OF CLK      : SIGNAL IS "23"; 
ATTRIBUTE CHIP_PIN OF RS       : SIGNAL IS "38"; 
ATTRIBUTE CHIP_PIN OF RW       : SIGNAL IS "42"; 
ATTRIBUTE CHIP_PIN OF ENA      : SIGNAL IS "44"; 
ATTRIBUTE CHIP_PIN OF DATA_LCD : SIGNAL IS "68, 66, 64, 59"; 

ATTRIBUTE CHIP_PIN OF reset        : SIGNAL IS "88";  -- Button RESET
ATTRIBUTE CHIP_PIN OF ps2d         : SIGNAL IS "120"; 
ATTRIBUTE CHIP_PIN OF ps2c         : SIGNAL IS "119"; 
ATTRIBUTE CHIP_PIN OF rx_en        : SIGNAL IS "91";  -- KEY 4
ATTRIBUTE CHIP_PIN OF rx_done_tick : SIGNAL IS "84"; 
ATTRIBUTE CHIP_PIN OF digit1       : SIGNAL IS "133";
ATTRIBUTE CHIP_PIN OF dout         : SIGNAL IS "128, 121, 125, 129, 132, 126, 124, 127";
--------------------------------------------------------------------------------
---------------------------AGREGA TUS SEÑALES AQUÍ----------------------------

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--procedure DATO_UNO(DatoUno: in std_logic_vector(7 downto 0)) is
--begin
--
--end procedure DATO_UNO;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
begin
	digit1 <= '0'; -- ON 7seg digit 1
---------------------------------------------------------------
-------------------COMPONENTES PARA LCD------------------------
																				 --
u1: PROCESADOR_LCD4BITS_REVC											 --
GENERIC map( FPGA_CLK => FPGA_CLK,									 --
				 NUM_INST => NUM_INSTRUCCIONES )						 --
																				 --
PORT map( CLK,VECTOR_MEM,C1S,C2S,C3S,C4S,C5S,C6S,C7S,C8S,RS, --
			 RW,ENA,BLCD,DATA_LCD, DIR_MEM );						 --
																				 --			 		 --
																				 --
VECTOR_MEM <= INST(DIR_MEM);											 --
---------------------------------------------------------------
-------------------COMPONENTES PARA TECLADO--------------------
								
KB: EntradasTeclado port map(clk, reset, ps2d, ps2c, rx_en, rx_done_tick, B_Sout);								
					
							--
---------------------------------------------------------------
---------------------------------------------------------------
dout <= B_Sout;
-------------------------------------------------------------------
--------------------ESCRIBE TU CÓDIGO DE VHDL----------------------

-------------------------------------------------------------------
-------------------------------------------------------------------

-------------------------------------------------------------------
---------------ESCRIBE TU CÓDIGO PARA LA LCD-----------------------

 	INST(0)  <= LCD_INI("00");
	INST(1)  <= BUCLE_INI(1);	
 	INST(2)  <= POS(fila,columna);				
 	INST(3)  <= CHAR_ASCII("00100000"); 	--space
 	INST(4)  <= CHAR_ASCII(B_Sout); 
 	INST(5)  <= BUCLE_FIN(1);	
 	INST(6)  <= CODIGO_FIN(1);	   

		
-------------------------------------------------------------------
-------------------------------------------------------------------
end Behavioral;

