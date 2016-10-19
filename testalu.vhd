LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY testalu IS
END testalu;
 
ARCHITECTURE behavior OF testalu IS 
     COMPONENT alu
    PORT(
         op1alu : IN  std_logic_vector(31 downto 0);
         op2alu : IN  std_logic_vector(31 downto 0);
         opalu : IN  std_logic_vector(5 downto 0);
         salidalu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op1alu : std_logic_vector(31 downto 0) := (others => '0');
   signal op2alu : std_logic_vector(31 downto 0) := (others => '0');
   signal opalu : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal salidalu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          op1alu => op1alu,
          op2alu => op2alu,
          opalu => opalu,
          salidalu => salidalu
        );

   -- Clock process definitions
--   <clock>_process :process
  -- begin
	--	<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
     -- wait for 100 ns;	

      --wait for <clock>_period*10;

      -- insert stimulus here 

     -- wait;
   --end process;

--END;
   -- Stimulus process
   stim_proc: process
   begin	
		op1alu <= x"00000004";
		op2alu <= x"00000002";
		salidalu <= "000010";
     



      wait;
   end process;

END;

