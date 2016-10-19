library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ucontrol is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           salidaop : out  STD_LOGIC_VECTOR (5 downto 0));
end ucontrol;

architecture Behavioral12 of ucontrol is

begin
process(op,op3)
begin
if (op= "10")then
			case op3 is 
				
							when "000000" => -- ADD
								salidaop  <= "000001";

							when "000100" => -- SUB
								 salidaop <= "000010";
								 
							when "000001" => -- AND
								salidaop <= "000011";
								 
							when "000101" => -- ANDN
								salidaop <= "000100";
								 
							when "000010" => -- OR
								salidaop <= "000101";
								
							when "000110" => -- ORN
								salidaop <= "000110";
								 
							when "000011" => -- XOR
								salidaop  <= "000111"; 
								
							when "000111" => -- XORN
								salidaop <= "001000";
							when others => -- Implementar demas instrucciones
								salidaop <= "111111"; 

						end case;
						 
		end if; 

end process; 

end Behavioral12;

