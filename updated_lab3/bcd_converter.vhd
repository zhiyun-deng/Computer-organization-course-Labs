library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;

entity bcd_converter is
	port( input :in std_logic_vector(3 downto 0);
			out0	: out std_logic_vector(4 downto 0)
			
			);
end entity;

architecture a0 of bcd_converter is 
signal inputnum : unsigned(4 downto 0);
signal add: std_logic:= '0';

begin
	inputnum(4) <= '0';
	inputnum(3 downto 0) <= unsigned(input);
	add <= input(3) and (input(2) or input(1));
	process(add, inputnum)
	begin
	if(add='1') then 
		out0 <= std_logic_vector(inputnum+6);
	else 
		out0 <= std_logic_vector(inputnum);
	end if;
	end process;
	

end a0;