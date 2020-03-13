library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity g05_FSM is
	port(enable: in std_logic;
		direction: in std_logic;
		reset		:in std_logic;
		clk		: in std_logic;
		count		: out std_logic_vector(3 downto 0)
		);
end entity;
architecture a0 of g05_FSM is
signal intcount : unsigned(3 downto 0) := "0000";--index of states

begin
	process(clk, reset, intcount)
	begin
		if(reset = '0') then
			if(direction='1') then
				intcount<="0000";
			else intcount <= "1110";
			end if;
		elsif(rising_edge(clk)) then
			if(enable = '1') then 
				if(direction='1') then
					
					intcount <= intcount + 1;
					if(intcount="1110") then
						intcount<="0000";
					end if;
				else 
					intcount <= intcount - 1;
					if(intcount="0000") then
						intcount<="1110";
					end if;
				end if;
			else intcount<=intcount;
			end if;
		end if;
	
	end process;
	
	with intcount select count<=
		"0001" when "0000",
		"0010" when "0001",
		"0100" when "0010",
		"1000" when "0011",
		"0011" when "0100",
		"0110" when "0101",
		"1100" when "0110",
		"1011" when "0111",
		"0101" when "1000",
		"1010" when "1001",
		"0111" when "1010",
		"1110" when "1011",
		"1111" when "1100",
		"1101" when "1101",
		"1001" when "1110",
		"0000" when others;
end a0;