library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rf is
    Port ( rfuente1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rfuente2 : in  STD_LOGIC_VECTOR (4 downto 0);
           descrito : in  STD_LOGIC_VECTOR (31 downto 0);
           resetrf : in  STD_LOGIC;
           rdestino : in  STD_LOGIC_VECTOR (4 downto 0);
           contrfuente1 : out  STD_LOGIC_VECTOR (31 downto 0);
           contrfuente2 : out  STD_LOGIC_VECTOR (31 downto 0));
end rf;

architecture rfield of rf is

type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal registros : ram_type :=(others => x"00000000");

begin
process(rfuente1,rfuente2, descrito, resetrf, rdestino)
begin
	if(resetrf = '1')then
				contrfuente1 <= (others=>'0');
				contrfuente2 <= (others=>'0');
			
				registros <= (others => x"00000000");
			else
				contrfuente1 <= registros(conv_integer(rfuente1));
				contrfuente2 <= registros(conv_integer(rfuente2));
				
				if(rdestino  /= "000000")then
					registros(conv_integer(rdestino)) <= descrito;
				end if;
			end if;
	
end process;


end rfield;

