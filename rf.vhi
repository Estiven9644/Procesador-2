
-- VHDL Instantiation Created from source file rf.vhd -- 17:01:09 10/16/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT rf
	PORT(
		rfuente1 : IN std_logic_vector(4 downto 0);
		rfuente2 : IN std_logic_vector(4 downto 0);
		descrito : IN std_logic_vector(31 downto 0);
		resetrf : IN std_logic;
		rdestino : IN std_logic_vector(4 downto 0);          
		contrfuente1 : OUT std_logic_vector(31 downto 0);
		contrfuente2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_rf: rf PORT MAP(
		rfuente1 => ,
		rfuente2 => ,
		descrito => ,
		resetrf => ,
		rdestino => ,
		contrfuente1 => ,
		contrfuente2 => 
	);


