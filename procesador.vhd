library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity procesador is
    Port ( resetprocesador : in  STD_LOGIC;
           clkprocesador : in  STD_LOGIC;
           resultadoprocesador : out  STD_LOGIC_VECTOR (31 downto 0));
end procesador;

architecture arq_procesador of procesador is
COMPONENT sumador
	PORT(
		op1 : IN std_logic_vector(31 downto 0);
		op2 : IN std_logic_vector(31 downto 0);          
		resultado : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT pc
	PORT(
		clkpc : IN std_logic;
		resetpc : IN std_logic;
		dir1pc : IN std_logic_vector(31 downto 0);          
		dir2pc : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	COMPONENT memoinstru
	PORT(
		dirmemo : IN std_logic_vector(31 downto 0);
		resetmemo : IN std_logic;          
		instrumemo : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
   COMPONENT ucontrol
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		salidaop : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
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

	COMPONENT mux
	PORT(
		i : IN std_logic;
		dato_seu : IN std_logic_vector(31 downto 0);
		conReg2 : IN std_logic_vector(31 downto 0);          
		salidaMux : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT seu
	PORT(
		intrecebit : IN std_logic_vector(12 downto 0);          
		salidainm : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT alu
	PORT(
		op1alu : IN std_logic_vector(31 downto 0);
		op2alu : IN std_logic_vector(31 downto 0);
		opalu : IN std_logic_vector(5 downto 0);          
		salidalu : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


signal SumadorTOnpc,npctoPC,imTOurs,AluResult,RFtoalu1,RFtomux,Seutomux,muxtoalu:STD_LOGIC_VECTOR (31 downto 0);

signal PCTOIM:STD_LOGIC_VECTOR (31 downto 0);

signal aluop1: STD_LOGIC_VECTOR (5 downto 0);
begin
Inst_sumador: sumador PORT MAP(
		op1 =>X"00000001" ,
		op2 =>npctoPC,
		resultado =>SumadorTOnpc
	);

	Inst_pc: pc PORT MAP(
		clkpc =>clkprocesador ,
		resetpc =>resetprocesador ,
		dir1pc =>SumadorTOnpc,
		dir2pc =>npctoPC
	);

	Inst_npc: pc PORT MAP(
		clkpc =>clkprocesador ,
		resetpc =>resetprocesador ,
		dir1pc =>npctoPC,
		dir2pc =>PCTOIM
	);
	
	Inst_memoinstru: memoinstru PORT MAP(
		dirmemo =>PCTOIM ,
		resetmemo => resetprocesador,
		instrumemo =>imTOurs --esta se me divide en tres
	);
	
Inst_ucontrol: ucontrol PORT MAP(
		op => imTOurs(31 downto 30) , 
		op3 =>imTOurs(24 downto 19) , 		
           salidaop => aluop1
	);

Inst_rf: rf PORT MAP(
		rfuente1 => imTOurs(18 downto 14),
		rfuente2 => imTOurs(4 downto 0),
		descrito => AluResult,
		resetrf =>resetprocesador,
		rdestino =>imTOurs(29 downto 25) ,
		contrfuente1 => RFtoalu1,
		contrfuente2 =>RFtomux
	);

Inst_mux: mux PORT MAP(
		i =>imTOurs(13) ,
		dato_seu =>Seutomux ,
		conReg2 =>RFtomux ,
		salidaMux =>muxtoalu 
	);
	--modulo de  inmediayo
Inst_seu: seu PORT MAP(
		intrecebit =>imTOurs(12 downto 0) ,
		salidainm =>Seutomux
	);

	Inst_alu: alu PORT MAP(
		op1alu => RFtoalu1,
		op2alu =>muxtoalu ,
		opalu => aluop1,
		salidalu =>AluResult
	);
	
	resultadoprocesador<=AluResult;
end arq_procesador;

