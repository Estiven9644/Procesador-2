
-- VHDL Instantiation Created from source file mpc.vhd -- 16:19:17 10/16/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mpc
	PORT(
		insalidasumador : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;
		clk : IN std_logic;          
		salidanpc : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_mpc: mpc PORT MAP(
		insalidasumador => ,
		salidanpc => ,
		reset => ,
		clk => 
	);


