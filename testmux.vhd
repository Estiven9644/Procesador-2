LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY testmux IS
END testmux;
 
ARCHITECTURE behavior OF testmux IS 
 
     
    COMPONENT mux
    PORT(
         i : IN  std_logic;
         dato_seu : IN  std_logic_vector(31 downto 0);
         conReg2 : IN  std_logic_vector(31 downto 0);
         salidaMux : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal dato_seu : std_logic_vector(31 downto 0) := (others => '0');
   signal conReg2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salidaMux : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          i => i,
          dato_seu => dato_seu,
          conReg2 => conReg2,
          salidaMux => salidaMux
        );

   -- Clock process definitions
   stim_proc: process
   begin	
		i <='1';
		dato_seu <= x"00000004";
		conReg2 	<= x"00000008";
	
      wait;
   end process;

END;
