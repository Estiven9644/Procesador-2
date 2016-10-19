LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY mpc1 IS
END mpc1;
 
ARCHITECTURE behavior OF mpc1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mpc
    PORT(
         insalidasumador : IN  std_logic_vector(31 downto 0);
         salidanpc : OUT  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    
architecture behavior of mpc1 is

begin
	process(clk, reset,insalidasumador)
	begin 
		if(rising_edge(clk))then 
			if(reset='1')then
				 salidanpc <= (others =>'0');
			 else 
				salidanpc <= insalidasumador; 
		end if;

end process;
	
end behavior;
	


END;
