LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY testpc IS
END testpc;
 
ARCHITECTURE behavior OF testpc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pc
    PORT(
         clkpc : IN  std_logic;
         resetpc : IN  std_logic;
         dir1pc : IN  std_logic_vector(31 downto 0);
         dir2pc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clkpc : std_logic := '0';
   signal resetpc : std_logic := '0';
   signal dir1pc : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dir2pc : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clkpc_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pc PORT MAP (
          clkpc => clkpc,
          resetpc => resetpc,
          dir1pc => dir1pc,
          dir2pc => dir2pc
        );

   -- Clock process definitions
   clkpc_process :process
   begin
		clkpc <= '0';
		wait for clkpc_period/2;
		clkpc <= '1';
		wait for clkpc_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		resetpc<='1';
      -- hold reset state for 100 ns.
      wait for 30 ns;
		resetpc<='0';
		dir1pc <=  x"00000010"; 
		wait for 30 ns;
		dir1pc <=  x"00000008";
		wait for 30 ns;
		dir1pc <=  x"00000005";

      wait;
   end process;

END;
