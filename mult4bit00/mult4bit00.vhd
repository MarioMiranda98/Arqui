library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagemult4bit00.all;

entity mult4bit00 is
port
(
	Ami: in std_logic_vector(3 downto 0);
	Bmi: in std_logic_vector(3 downto 0);
	Rmi: out std_logic_vector(7 downto 0)
);
end mult4bit00;

architecture mult4bit0 of mult4bit00 is
signal S0: std_logic_vector(2 downto 0);
signal S1: std_logic_vector(3 downto 0);
signal S2: std_logic_vector(3 downto 0);
signal S3: std_logic_vector(2 downto 0);
signal S4: std_logic_vector(3 downto 0);
signal S5: std_logic_vector(3 downto 0);
signal S6: std_logic_vector(2 downto 0);
signal S7: std_logic_vector(3 downto 0);
signal S8: std_logic_vector(2 downto 0);
begin 
	MU00: andadd port map(
			Aa => Ami(0),
			Ba => Bmi(0),
			Ya => Rmi(0)
	);
	
	MU01: andadd port map(
			Aa => Ami(1),
			Ba => Bmi(0),
			Ya => S0(0)
	);
	
	MU02: andadd port map(
			Aa => Ami(2),
			Ba => Bmi(0),
			Ya => S0(1)
	);
	
	MU03: andadd port map(
			Aa => Ami(3),
			Ba => Bmi(0),
			Ya => S0(2)
	);
	
	MU04: andadd port map(
			Aa => Ami(0),
			Ba => Bmi(1),
			Ya => S1(0)
	);
	
	MU05: andadd port map(
			Aa => Ami(1),
			Ba => Bmi(1),
			Ya => S1(1)
	);
	
	MU06: andadd port map(
			Aa => Ami(2),
			Ba => Bmi(1),
			Ya => S1(2)
	);
	
	MU07: andadd port map(
			Aa => Ami(3),
			Ba => Bmi(1),
			Ya => S1(3)
	);
	
	MU08: fa00 port map(
		A00 => S0(0),
		B00 => S1(0),
		C00 => '0',
		C01 => S2(0),
		S00 => Rmi(1)
	);
	
	MU09: fa00 port map(
			C00 => S2(0),
			A00 => S0(1),
			B00 => S1(1),
			C01 => S2(1),
			S00 => S3(0)
	);
	
	MU10: fa00 port map(
			C00 => S2(1),
			A00 => S0(2),
			B00 => S1(2),
			C01 => S2(2),
			S00 => S3(1)
	);
	
	MU11: fa00 port map(
			C00 => S2(2),
			A00 => '0',
			B00 => S1(3),
			C01 => S2(3),
			S00 => S3(2)
	);
	
	MU12: andadd port map(
		Aa => Ami(0),
		Ba => Bmi(2),
		Ya => S4(0)
	);
	
	
	MU13: andadd port map(
		Aa => Ami(1),
		Ba => Bmi(2),
		Ya => S4(1)
	);
	
	
	MU14: andadd port map(
		Aa => Ami(2),
		Ba => Bmi(2),
		Ya => S4(2)
	);
	
	
	MU15: andadd port map(
		Aa => Ami(3),
		Ba => Bmi(2),
		Ya => S4(3)
	);
	
	MU16: fa00 port map(
		C00 => '0',
		A00 => S3(0),
		B00 => S4(0),
		C01 => S5(0),
		S00 => Rmi(2)
	);
	
	MU17: fa00 port map(
		C00 => S5(0),
		A00 => S3(1),
		B00 => S4(1),
		C01 => S5(1),
		S00 => S6(0)
		
	);
	
	MU18: fa00 port map(
		C00 => S5(1),
		A00 => S3(2),
		B00 => S4(2),
		C01 => S5(2),
		S00 => S6(1)
	);
	
	MU19: fa00 port map(
		C00 => S5(2),
		A00 => S2(3),
		B00 => S4(3),
		C01 => S5(3),
		S00 => S6(2)
	);
	
	MU20: andadd port map(
		Aa => Ami(0),
		Ba => Bmi(3),
		Ya => S7(0)
	);
	
	MU21: andadd port map(
		Aa => Ami(1),
		Ba => Bmi(3),
		Ya => S7(1)
	);
	
	MU22: andadd port map(
		Aa => Ami(2),
		Ba => Bmi(3),
		Ya => S7(2)
	);
	
	MU23: andadd port map(
		Aa => Ami(3),
		Ba => Bmi(3),
		Ya => S7(3)
	);
	
	MU24: fa00 port map(
		C00 => '0',
		A00 => S6(0),
		B00 => S7(0),
		C01 => S8(0),
		S00 => Rmi(3) 
	);
	
	MU25: fa00 port map(
		C00 => S8(0),
		A00 => S6(1),
		B00 => S7(1),
		C01 => S8(1),
		S00 => Rmi(4) 
	);
	
	MU26: fa00 port map(
		C00 => S8(1),
		A00 => S6(2),
		B00 => S7(2),
		C01 => S8(2),
		S00 => Rmi(5) 
	);
	
	MU27: fa00 port map(
		C00 => S8(2),
		A00 => S5(3),
		B00 => S7(3),
		C01 => Rmi(7),
		S00 => Rmi(6) 
	);
end mult4bit0;