LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testseu IS
END testseu;
 
ARCHITECTURE behavior OF testseu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seu
    PORT(
         intrecebit : IN  std_logic_vector(12 downto 0);
         salidainm : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal intrecebit : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal salidainm : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seu PORT MAP (
          intrecebit => intrecebit,
          salidainm => salidainm
        );

   -- Clock process definitions
 

   -- Stimulus process
    stim_proc: process
   begin		
      
		 intrecebit<="1111111111001";

      wait;
   end process;

END;
