LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY test_mpc IS
END test_mpc;
 
ARCHITECTURE behavior OF test_mpc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mpc
    PORT(
         insalidasumador : IN  std_logic_vector(31 downto 0);
         salidanpc : OUT  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal insalidasumador : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salidanpc : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mpc PORT MAP (
          insalidasumador => insalidasumador,
          salidanpc => salidanpc,
          reset => reset,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
             --
		reset<='1';
		wait for 100 ns;	
		reset <='0';
		salidanpc <="00000000101011111111111011001011";
		wait for  100 ns;
		salidanpc <="00001000111011111111111101101011";
		wait for  100 ns;
		salidanpc <="00001001011101111111111101101010";
		
      
      
      -- insert stimulus here 

      wait;
   end process;

END;
