library ieee;
use ieee.std_logic_1164.all;

entity dec2bVHD is 
	port(	in_dec : in std_logic_vector( 1 downto 0);
			out_dec : out std_logic_vector( 0 to 3) 
		);
end dec2bVHD;

architecture dec2bVHDBehave of dec2bVHD is 
begin 

out_dec <=  "1000" when (in_dec = "00") else
			"0100" when (in_dec = "01") else
			"0010" when (in_dec = "10") else
			"0001" when (in_dec = "11");
			
end dec2bVHDBehave;