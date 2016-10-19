
-- VHDL Instantiation Created from source file pc.vhd -- 16:25:18 10/16/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT pc
	PORT(
		clkpc : IN std_logic;
		resetpc : IN std_logic;
		dir1pc : IN std_logic_vector(31 downto 0);          
		dir2pc : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_pc: pc PORT MAP(
		clkpc => ,
		resetpc => ,
		dir1pc => ,
		dir2pc => 
	);


