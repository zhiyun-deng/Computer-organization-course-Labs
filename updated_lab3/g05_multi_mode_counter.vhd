library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL;
entity g05_multi_mode_counter is
	port(start: in std_logic;
		stop: in std_logic;
		direction: in std_logic;
		reset: in std_logic;
		clk: in std_logic;
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0)
		);
end entity;

	
architecture a0 of g05_multi_mode_counter is
	component g05_fsm is
		port(enable: in std_logic;
			direction: in std_logic;
			reset	:in std_logic;
			clk	: in std_logic;
			count	: out std_logic_vector(3 downto 0)
			
		);
	end component;
	component g05_clock_divider is
		port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			en_out: out std_logic
		);
	end component;
	component g05_7_segment_decoder is
		port(	code : in std_logic_vector( 3 downto 0); --4 bit input
			segments: out std_logic_vector (6 downto 0) --7 bit output
		);
	end component;
	component bcd_converter is
		port(	input : in std_logic_vector( 3 downto 0); 
			out0: out std_logic_vector (4 downto 0) 
		);
	end component;

	--signals
	signal bcdCount : std_logic_vector(7 downto 0) := "00000000"; 
	signal enable, en_out : std_logic;
	signal fsm_out : std_logic_vector(3 downto 0);
	
	begin
		clock_divider : g05_clock_divider port map(enable, reset, clk, en_out); -- either connect it to a 500kHz clock, or find another way to slow it down to 1/s
		
		fsm : g05_fsm port map(enable, direction, reset, en_out, fsm_out);
			-- convert from binary to bcd
			-- if >9 {+=6} top half carries up to 1, lower half carries back down starting from 0
			-- this gives a decemal representation of the data for the 7 segment decoders
		bcd_convert : bcd_converter port map(fsm_out, bcdcount(4 downto 0));
		
		g05_7_segment_decoder0 : g05_7_segment_decoder port map(bcdCount(3 downto 0), HEX0);
		g05_7_segment_decoder1 : g05_7_segment_decoder port map(bcdCount(7 downto 4), HEX1);
			
	
		process (start, stop)
		begin
			if(stop = '0') then
				enable <= '0';
			elsif(start = '0') then
				enable <= '1';
			end if;
		end process;
	end a0;
