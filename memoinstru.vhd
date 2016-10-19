library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use std.textio.all;


entity memoinstru is
    Port ( dirmemo : in  STD_LOGIC_VECTOR (31 downto 0);
           resetmemo : in  STD_LOGIC;
           instrumemo : out  STD_LOGIC_VECTOR (31 downto 0));
end memoinstru;

architecture Behavioralmemo of memoinstru is

type rom_type is array (0 to 39) of std_logic_vector (31 downto 0);
	
	impure function InitRomFromFile (RomFileName : in string) return rom_type is
	
		FILE RomFile : text open read_mode is RomFileName;
		variable RomFileLine : line;
		variable temp_bv : bit_vector(31 downto 0);
		variable temp_mem : rom_type;
		begin
			for I in rom_type'range loop
				readline (RomFile, RomFileLine);
				read(RomFileLine, temp_bv);
				temp_mem(i) := to_stdlogicvector(temp_bv);
		end loop;
	return temp_mem;
	end function;
	signal instructions : rom_type := InitRomFromFile("programa.data");

begin
	process(dirmemo, resetmemo, instructions)
	begin
		if(resetmemo = '1')then
			instrumemo <= (others=>'0');
		else
			instrumemo <= instructions(conv_integer(dirmemo(4 downto 0)));
		end if;

	end process; 



end Behavioralmemo;

