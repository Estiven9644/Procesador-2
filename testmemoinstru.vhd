LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testmemoinstru IS
END testmemoinstru;
 
ARCHITECTURE behavior OF testmemoinstru IS 
 
    
 
    COMPONENT memoinstru
    PORT(
         dirmemo : IN  std_logic_vector(31 downto 0);
         resetmemo : IN  std_logic;
         instrumemo : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   signal dirmemo : std_logic_vector(31 downto 0) := (others => '0');
   signal resetmemo : std_logic := '0';

 	--Outputs
   signal instrumemo : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memoinstru PORT MAP (
          dirmemo => dirmemo,
          resetmemo => resetmemo,
          instrumemo => instrumemo
        );

   -- Clock process definitions
  -- <clock>_process :process
  -- begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
		--<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
  begin	
		resetmemo <='1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		resetmemo <='0';
		dirmemo <= x"00000001";

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
