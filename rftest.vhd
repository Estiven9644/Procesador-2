
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY rftest IS
END rftest;
 
ARCHITECTURE behavior OF rftest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rf
    PORT(
         rfuente1 : IN  std_logic_vector(4 downto 0);
         rfuente2 : IN  std_logic_vector(4 downto 0);
         descrito : IN  std_logic_vector(31 downto 0);
         resetrf : IN  std_logic;
         rdestino : IN  std_logic_vector(4 downto 0);
         contrfuente1 : OUT  std_logic_vector(31 downto 0);
         contrfuente2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rfuente1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rfuente2 : std_logic_vector(4 downto 0) := (others => '0');
   signal descrito : std_logic_vector(31 downto 0) := (others => '0');
   signal resetrf : std_logic := '0';
   signal rdestino : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal contrfuente1 : std_logic_vector(31 downto 0);
   signal contrfuente2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rf PORT MAP (
          rfuente1 => rfuente1,
          rfuente2 => rfuente2,
          descrito => descrito,
          resetrf => resetrf,
          rdestino => rdestino,
          contrfuente1 => contrfuente1,
          contrfuente2 => contrfuente2
        );

   -- Clock process definitions
stim_proc: process
   begin		
		resetrf <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
			resetrf <='0';
			rfuente1 <= "10000";
			rfuente2 <= "10001";
			rdestino <= "10010";
			descrito  <= "00000000000000000000000000010011";
	
      -- insert stimulus here 

      wait;
   end process;

END;
