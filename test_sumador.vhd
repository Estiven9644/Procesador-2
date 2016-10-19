LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY test_sumador IS
END test_sumador;
 
ARCHITECTURE behavior OF test_sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador
    PORT(
         op1 : IN  std_logic_vector(31 downto 0);
         op2 : IN  std_logic_vector(31 downto 0);
         resultado : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op1 : std_logic_vector(31 downto 0) := (others => '0');
   signal op2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal resultado : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumador PORT MAP (
          op1 => op1,
          op2 => op2,
          resultado => resultado
        );

   -- Clock process definitions
  -- <clock>_process :process
  -- begin
	--	<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		op1 <= x"00000001";
		op2 <= x"00000004";
      -- hold reset state for 100 ns.
      wait for 30 ns;
		op1 <= x"00000002";
		op2 <= x"00000002";
		wait for 30 ns;
		op1 <= x"00000008";
		op2 <= x"00000002";
		wait for 30 ns;
		op1 <= x"00000004";
		op2 <= x"00000002";

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
