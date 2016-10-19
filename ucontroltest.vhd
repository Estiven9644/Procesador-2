LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ucontroltest IS
END ucontroltest;
 
ARCHITECTURE behavior OF ucontroltest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ucontrol
    PORT(
         op : IN  std_logic_vector(1 downto 0);
         op3 : IN  std_logic_vector(5 downto 0);
         salidaop : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal salidaop : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ucontrol PORT MAP (
          op => op,
          op3 => op3,
          salidaop => salidaop
        );

   -- Clock process definitions
   --<clock>_process :process
   
	
	
	 stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		op <= "10";
		op3<="000000";

      wait;
  end process;   
  

END;
