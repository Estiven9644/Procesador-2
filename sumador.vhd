library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--libreria de las sumas
use ieee.std_logic_unsigned.all;


entity sumador is
    Port ( op1 : in  STD_LOGIC_VECTOR (31 downto 0);
           op2 : in  STD_LOGIC_VECTOR (31 downto 0);
           resultado : out  STD_LOGIC_VECTOR (31 downto 0));
end sumador;

architecture Behavioral1 of sumador is

begin
process(op1,op2)
	begin
		resultado <= op1+op2; 
	end process; 


end Behavioral1;

