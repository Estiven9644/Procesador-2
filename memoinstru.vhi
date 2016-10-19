
-- VHDL Instantiation Created from source file memoinstru.vhd -- 16:34:59 10/16/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT memoinstru
	PORT(
		dirmemo : IN std_logic_vector(31 downto 0);
		resetmemo : IN std_logic;          
		instrumemo : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_memoinstru: memoinstru PORT MAP(
		dirmemo => ,
		resetmemo => ,
		instrumemo => 
	);


