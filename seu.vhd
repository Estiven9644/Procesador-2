
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity seu is
    Port ( intrecebit : in  STD_LOGIC_VECTOR (12 downto 0);
           salidainm : OUT  STD_LOGIC_VECTOR (31 downto 0));
end seu;

architecture seu1 of seu is

begin
process(intrecebit)
begin
if(intrecebit(12) = '1')then
			salidainm(12 downto 0) <= intrecebit;
			salidainm(31 downto 13) <= (others=>'1');
		else
			salidainm(12 downto 0) <= intrecebit;
			salidainm(31 downto 13) <= (others=>'0');
		end if;
end process; 

end seu1;

