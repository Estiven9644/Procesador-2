library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux is
    Port ( i : in  STD_LOGIC;
           dato_seu : in  STD_LOGIC_VECTOR (31 downto 0);
           conReg2 : in  STD_LOGIC_VECTOR (31 downto 0);
           salidaMux : out  STD_LOGIC_VECTOR (31 downto 0));
end mux;

architecture mux1 of mux is

begin
process(i,dato_seu,conReg2)
begin
	if(i='1')then
		salidaMux<= dato_seu;
	else 
		if(i='0')then
			salidaMux <= conReg2;
		end if ; 
	end if; 	
end process; 



end mux1;

