entity sum is 
	port(	Cin   : in bit;
			A0    : in bit;
			B0    : in bit;
			A1    : in bit;
			B1    : in bit;
			out_0 : out bit;
			out_1 : out bit;
			Cout  : out bit );
end sum;

architecture sumBehave of sum is
begin

out_0 <= (A0 xor B0) xor Cin;

out_1 <= (A1 xor B1) xor ((A0 and B0) or ((A0 or B0) and Cin));

Cout <= (A1 and B1) or ((A1 or B1) and ((A0 and B0) or ((A0 or B0) and Cin)));

end sumBehave;