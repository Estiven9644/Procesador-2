library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pc is
    Port ( clkpc : in  STD_LOGIC;
           resetpc : in  STD_LOGIC;
           dir1pc : in  STD_LOGIC_VECTOR (31 downto 0);
           dir2pc : out  STD_LOGIC_VECTOR (31 downto 0));
end pc;

architecture pc1 of pc is

begin

	process(clkpc, resetpc,dir1pc)
	begin 
		if(rising_edge(clkpc))then 
			if(resetpc='1')then
				 dir2pc <= (others =>'0');
			 else 
				dir2pc <= dir1pc; 
		end if;
	end if;
	end process;

end pc1;

