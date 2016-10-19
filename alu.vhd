library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity alu is
    Port ( op1alu : in  STD_LOGIC_VECTOR (31 downto 0);
           op2alu : in  STD_LOGIC_VECTOR (31 downto 0);
           opalu : in  STD_LOGIC_VECTOR (5 downto 0);
           salidalu : out  STD_LOGIC_VECTOR (31 downto 0));
end alu;

architecture alu1 of alu is

begin

process(op1alu, op2alu, opalu)
begin
 case (opalu) is 
			when "000001" => -- add
				salidalu <= op1alu + op2alu;
			when "000010" => -- sub
				salidalu <= op1alu - op2alu;
			when "000011" => --and
				salidalu <= op1alu and op2alu;
			when "000100" => --andn
				salidalu <= op1alu nand op2alu;
			when "000101" => -- or
				salidalu <= op1alu or op2alu;
			when "000110" => -- orn
				salidalu <= op1alu nor op2alu;
			when "000111" => -- xor
				salidalu <= op1alu xor op2alu;
			when "001000" => -- xorn
				salidalu <= op1alu xnor op2alu;
			when others => -- Cae el nop
				salidalu <= (others=>'0');
		end case;
	end process; 



end alu1;

