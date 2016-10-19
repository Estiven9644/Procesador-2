library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mpc is
    Port ( insalidasumador : in  STD_LOGIC_VECTOR (31 downto 0);
           salidanpc : out  STD_LOGIC_VECTOR(31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end mpc;

architecture Behavioral of mpc is

begin
--funcion  y mando mis parametros de entradas
process(clk,reset,insalidasumador)
--siempre pongo  esto para las funciones
begin


   if (reset='1') then
	 --asigno 0 a salida
      --salidanpc <=(others=>"0");
		salidanpc <="00000000000000000000000000000000";
	else
	--veo si el reloj  esta en subida
		if (rising_edge(clk)) then
			salidanpc<=insalidasumador;
   
		end if;
	end if;
end process;
end Behavioral;


