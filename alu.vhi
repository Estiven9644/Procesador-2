
-- VHDL Instantiation Created from source file alu.vhd -- 17:29:53 10/16/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT alu
	PORT(
		op1alu : IN std_logic_vector(31 downto 0);
		op2alu : IN std_logic_vector(31 downto 0);
		opalu : IN std_logic_vector(5 downto 0);          
		salidalu : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_alu: alu PORT MAP(
		op1alu => ,
		op2alu => ,
		opalu => ,
		salidalu => 
	);


