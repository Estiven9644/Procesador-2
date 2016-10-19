LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_procesador IS
END tb_procesador;
 
ARCHITECTURE behavior OF tb_procesador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesador
    PORT(
         resetprocesador : IN  std_logic;
         clkprocesador : IN  std_logic;
         resultadoprocesador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal resetprocesador : std_logic := '0';
   signal clkprocesador : std_logic := '0';

 	--Outputs
   signal resultadoprocesador : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clkprocesador_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesador PORT MAP (
          resetprocesador => resetprocesador,
          clkprocesador => clkprocesador,
          resultadoprocesador => resultadoprocesador
        );

   -- Clock process definitions
   clkprocesador_process :process
   begin
		clkprocesador <= '0';
		wait for clkprocesador_period/2;
		clkprocesador <= '1';
		wait for clkprocesador_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	 resetprocesador<='1';	
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		resetprocesador<='0';
      

      wait;
   end process;

END;
