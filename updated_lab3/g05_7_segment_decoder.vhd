library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--converts four-bit binary input into seven-segment display signals
entity g05_7_segment_decoder is --this is the seven-segment-decoder
	port( code : in std_logic_vector( 3 downto 0); --4 bit input
			segments: out std_logic_vector (6 downto 0) --7 bit output
		);
	
end entity;

--architecture of the seven segment decoder
architecture a0 of g05_7_segment_decoder is
begin
with code select segments <= 
	"1000000" when "0000",
	"1111001" when "0001",
	"0100100" when "0010",
	"0110000" when "0011",
	"0011001" when "0100",
	"0010010" when "0101",
	"0000010" when "0110",
	"1111000" when "0111",
	"0000000" when "1000",
	"0010000" when "1001",
	"0001000" when "1010",
	"0000011" when "1011",
	"1000110" when "1100",
	"0100001" when "1101",
	"0000110" when "1110",
	"0001110" when "1111",
	"1110111" when others;
end a0;

--we put multiple entities into one file, for at this stage, the number of entities are still small. We will separate it into
--multiple files in future projects
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--full adder
entity full_add is
	port(x,y,Cin:in std_logic;
			s,cout: out std_logic
	);
end entity;

architecture a0 of full_add is
begin
	s<=(x XOR y) XOR cin;
	cout<=(x and y) or (x and cin) or (y and cin);
end a0;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--this is the top level entity. It takes in two binary input and generate seven-segment display signals for each of
--the number and their sum
Entity g05_adder is
    Port (     A,B            :in std_logic_vector(4 downto 0);
        decoded_A        :out std_logic_vector(13 downto 0);
decoded_B        :out std_logic_vector(13 downto 0);
decoded_AplusB    :out std_logic_vector(13 downto 0)
);
End entity;

Architecture a0 of g05_adder is
    Component full_add is -- using full add to easily abstract the addition
        Port (    x,y,Cin : in std_logic;
    S,cout  : out std_logic
	);
	End component full_add;

--this is the converter to 7-segment display signal	
 Component g05_7_segment_decoder is
        Port (       code  : in std_logic_vector(3 downto 0);
               segments : out std_logic_vector(6 downto 0)
	);
    End component g05_7_segment_decoder;

    Signal c_int, inA1, inA2, inB1, inB2, inS1, inS2 : std_logic_vector(3 downto 0); -- splitting input streams into 4 bit vectors to easily map to decoders
Begin
    inA1<= A(3 downto 0); 
    inA2(0)<= A(4); -- only first bit of second input is used 
	 inA2(3 downto 1)<="000"; -- clean remaining unset bits of input
    inB1<= B(3 downto 0);
    inB2(0)<= B(4); -- only first bit of second input is used 
    inS2(3 downto 2)<="00"; -- clean remaining unset bits of input
	 inB2(3 downto 1)<="000"; -- clean remaining unset bits of input
	 --5-bit ripple-carry adder
	Xfull_add0 : full_add port map(inA1(0),inB1(0),'0',inS1(0),c_int(0)); 		
	Xfull_add1 : full_add port map(inA1(1),inB1(1),c_int(0),inS1(1),c_int(1));	
	Xfull_add2 : full_add port map(inA1(2),inB1(2),c_int(1),inS1(2),c_int(2));	
	Xfull_add3 : full_add port map(inA1(3),inB1(3),c_int(2),inS1(3),c_int(3));	
	Xfull_add4 : full_add port map(inA2(0),inB2(0),c_int(3),inS2(0),inS2(1));	
	g05_7_segment_decoderA1 : g05_7_segment_decoder port map(inA1,decoded_A(6 downto 0)); -- 2nd digit of A
	g05_7_segment_decoderA2 : g05_7_segment_decoder port map(inA2,decoded_A(13 downto 7)); -- 1st digit of A
	g05_7_segment_decoderB1 : g05_7_segment_decoder port map(inB1,decoded_B(6 downto 0)); -- 2nd digit of B
	g05_7_segment_decoderB2 : g05_7_segment_decoder port map(inB2,decoded_B(13 downto 7)); -- 1st digit of B
	g05_7_segment_decoderS1 : g05_7_segment_decoder port map(inS1,decoded_AplusB(6 downto 0)); -- 2nd digit of the sum
	g05_7_segment_decoderS2 : g05_7_segment_decoder port map(inS2,decoded_AplusB(13 downto 7)); -- 1st digit of the sum

End a0;







