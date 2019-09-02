library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagemult8bit00.all;

entity mult8bit00 is
port(
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	Ri: out std_logic_vector(15 downto 0)
);
end mult8bit00;

architecture mult8bit0 of mult8bit00 is
signal sa00, sa01, sa02, sa03, sa04, sa05, sa06, sa07: std_logic_vector(7 downto 0);
signal ss00, ss01, ss02, ss03, ss04, ss05, ss06: std_logic_vector(7 downto 0);
signal sc00, sc01, sc02, sc03, sc04, sc05, sc06: std_logic_vector(7 downto 0);
begin 
	M000: and00 port map(
		Aa => Ai(0),
		Ba => Bi(0),
		Ya => Ri(0)
	);
	
	M001: and00 port map(
		Aa => Ai(1),
		Ba => Bi(0),
		Ya => sa00(1)
	);
	
	M002: and00 port map(
		Aa => Ai(2),
		Ba => Bi(0),
		Ya => sa00(2)
	);
	
	M003: and00 port map(
		Aa => Ai(3),
		Ba => Bi(0),
		Ya => sa00(3)
	);
	
	M004: and00 port map(
		Aa => Ai(4),
		Ba => Bi(0),
		Ya => sa00(4)
	);
	
	M005: and00 port map(
		Aa => Ai(5),
		Ba => Bi(0),
		Ya => sa00(5)
	);
	
	M006: and00 port map(
		Aa => Ai(6),
		Ba => Bi(0),
		Ya => sa00(6)
	);
	
	M007: and00 port map(
		Aa => Ai(7),
		Ba => Bi(0),
		Ya => sa00(7)
	);
	
	M008: and00 port map(
		Aa => Ai(0),
		Ba => Bi(1),
		Ya => sa01(0)
	);
	
	M009: and00 port map(
		Aa => Ai(1),
		Ba => Bi(1),
		Ya => sa01(1)
	);
	
	M010: and00 port map(
		Aa => Ai(2),
		Ba => Bi(1),
		Ya => sa01(2)
	);
	
	M011: and00 port map(
		Aa => Ai(3),
		Ba => Bi(1),
		Ya => sa01(3)
	);
	
	M012: and00 port map(
		Aa => Ai(4),
		Ba => Bi(1),
		Ya => sa01(4)
	);
	
	M013: and00 port map(
		Aa => Ai(5),
		Ba => Bi(1),
		Ya => sa01(5)
	);
	
	M014: and00 port map(
		Aa => Ai(6),
		Ba => Bi(1),
		Ya => sa01(6)
	);
	
	M015: and00 port map(
		Aa => Ai(7),
		Ba => Bi(1),
		Ya => sa01(7)
	);
	
	M016: fa00 port map(
		A00 => sa00(1),
		B00 => sa01(0),
		C00 => '0',
		C01 => sc00(0),
		S00 => Ri(1)
	);
	
	M017: fa00 port map(
		A00 => sa00(2),
		B00 => sa01(1),
		C00 => sc00(0),
		C01 => sc00(1),
		S00 => ss00(0)
	);
	
	M018: fa00 port map(
		A00 => sa00(3),
		B00 => sa01(2),
		C00 => sc00(1),
		C01 => sc00(2),
		S00 => ss00(1)
	);
	
	M019: fa00 port map(
		A00 => sa00(4),
		B00 => sa01(3),
		C00 => sc00(2),
		C01 => sc00(3),
		S00 => ss00(2)
	);
	
	M020: fa00 port map(
		A00 => sa00(5),
		B00 => sa01(4),
		C00 => sc00(3),
		C01 => sc00(4),
		S00 => ss00(3)
	);
	
	M021: fa00 port map(
		A00 => sa00(6),
		B00 => sa01(5),
		C00 => sc00(4),
		C01 => sc00(5),
		S00 => ss00(4)
	);
	
	M022: fa00 port map(
		A00 => sa00(7),
		B00 => sa01(6),
		C00 => sc00(5),
		C01 => sc00(6),
		S00 => ss00(5)
	);
	
	M023: fa00 port map(
		A00 => '0',
		B00 => sa01(7),
		C00 => sc00(6),
		C01 => ss00(7),
		S00 => ss00(6)
	);
	
	M024: and00 port map(
		Aa => Ai(0),
		Ba => Bi(2),
		Ya => sa02(0)
	);
	
	M025: and00 port map(
		Aa => Ai(1),
		Ba => Bi(2),
		Ya => sa02(1)
	);
	
	M026: and00 port map(
		Aa => Ai(2),
		Ba => Bi(2),
		Ya => sa02(2)
	);
	
	M027: and00 port map(
		Aa => Ai(3),
		Ba => Bi(2),
		Ya => sa02(3)
	);
	
	M028: and00 port map(
		Aa => Ai(4),
		Ba => Bi(2),
		Ya => sa02(4)
	);
	
	M029: and00 port map(
		Aa => Ai(5),
		Ba => Bi(2),
		Ya => sa02(5)
	);
	
	M030: and00 port map(
		Aa => Ai(6),
		Ba => Bi(2),
		Ya => sa02(6)
	);
	
	M031: and00 port map(
		Aa => Ai(7),
		Ba => Bi(2),
		Ya => sa02(7)
	);
	
	M032: fa00 port map(
		A00 => ss00(0),
		B00 => sa02(0),
		C00 => '0',
		C01 => sc01(0),
		S00 => Ri(2)
	);
	
	M033: fa00 port map(
		A00 => ss00(1),
		B00 => sa02(1),
		C00 => sc01(0),
		C01 => sc01(1),
		S00 => ss01(0)
	);
	
	M034: fa00 port map(
		A00 => ss00(2),
		B00 => sa02(2),
		C00 => sc01(1),
		C01 => sc01(2),
		S00 => ss01(1)
	);
	
	M035: fa00 port map(
		A00 => ss00(3),
		B00 => sa02(3),
		C00 => sc01(2),
		C01 => sc01(3),
		S00 => ss01(2)
	);
	
	M036: fa00 port map(
		A00 => ss00(4),
		B00 => sa02(4),
		C00 => sc01(3),
		C01 => sc01(4),
		S00 => ss01(3)
	);
	
	M037: fa00 port map(
		A00 => ss00(5),
		B00 => sa02(5),
		C00 => sc01(4),
		C01 => sc01(5),
		S00 => ss01(4)
	);
	
	M038: fa00 port map(
		A00 => ss00(6),
		B00 => sa02(6),
		C00 => sc01(5),
		C01 => sc01(6),
		S00 => ss01(5)
	);
	
	M039: fa00 port map(
		A00 => ss00(7),
		B00 => sa02(7),
		C00 => sc01(6),
		C01 => ss01(7),
		S00 => ss01(6)
	);
	
	M040: and00 port map(
		Aa => Ai(0),
		Ba => Bi(3),
		Ya => sa03(0)
	);
	
	M041: and00 port map(
		Aa => Ai(1),
		Ba => Bi(3),
		Ya => sa03(1)
	);
	
	M042: and00 port map(
		Aa => Ai(2),
		Ba => Bi(3),
		Ya => sa03(2)
	);
	
	M043: and00 port map(
		Aa => Ai(3),
		Ba => Bi(3),
		Ya => sa03(3)
	);
	
	M044: and00 port map(
		Aa => Ai(4),
		Ba => Bi(3),
		Ya => sa03(4)
	);
	
	M045: and00 port map(
		Aa => Ai(5),
		Ba => Bi(3),
		Ya => sa03(5)
	);
	
	M046: and00 port map(
		Aa => Ai(6),
		Ba => Bi(3),
		Ya => sa03(6)
	);
	
	M047: and00 port map(
		Aa => Ai(7),
		Ba => Bi(3),
		Ya => sa03(7)
	);
	
	M048: fa00 port map(
		A00 => ss01(0),
		B00 => sa03(0), 
		C00 => '0',
		C01 => sc02(0),
		S00 => Ri(3)
	);
	
	M049: fa00 port map(
		A00 => ss01(1),
		B00 => sa03(1),
		C00 => sc02(0),
		C01 => sc02(1),
		S00 => ss02(0)
	);
	
	M050: fa00 port map(
		A00 => ss01(2),
		B00 => sa03(2),
		C00 => sc02(1),
		C01 => sc02(2),
		S00 => ss02(1)
	);
	
	M051: fa00 port map(
		A00 => ss01(3),
		B00 => sa03(3),
		C00 => sc02(2),
		C01 => sc02(3),
		S00 => ss02(2)
	);

	M052: fa00 port map(
		A00 => ss01(4),
		B00 => sa03(4),
		C00 => sc02(3),
		C01 => sc02(4),
		S00 => ss02(3)
	);

	M053: fa00 port map(
		A00 => ss01(5),
		B00 => sa03(5),
		C00 => sc02(4),
		C01 => sc02(5),
		S00 => ss02(4)
	);
	
	M054: fa00 port map(
		A00 => ss01(6),
		B00 => sa03(6),
		C00 => sc02(5),
		C01 => sc02(6),
		S00 => ss02(5)
	);

	M055: fa00 port map(
		A00 => ss01(7),
		B00 => sa03(7),
		C00 => sc02(6),
		C01 => ss02(7),
		S00 => ss02(6)
	);

	M056: and00 port map(
		Aa => Ai(0),
		Ba => Bi(4),
		Ya => sa04(0)
	);
	
	M057: and00 port map(
		Aa => Ai(1),
		Ba => Bi(4),
		Ya => sa04(1)
	);
	
	M058: and00 port map(
		Aa => Ai(2),
		Ba => Bi(4),
		Ya => sa04(2)
	);
	
	M059: and00 port map(
		Aa => Ai(3),
		Ba => Bi(4),
		Ya => sa04(3)
	);
	
	M060: and00 port map(
		Aa => Ai(4),
		Ba => Bi(4),
		Ya => sa04(4)
	);
	
	M061: and00 port map(
		Aa => Ai(5),
		Ba => Bi(4),
		Ya => sa04(5)
	);
	
	M062: and00 port map(
		Aa => Ai(6),
		Ba => Bi(4),
		Ya => sa04(6)
	);
	
	M063: and00 port map(
		Aa => Ai(7),
		Ba => Bi(4),
		Ya => sa04(7)
	);
	
	M064: fa00 port map(
		A00 => ss02(0),
		B00 => sa04(0),
		C00 => '0',
		C01 => sc03(0),
		S00 => Ri(4)
	);
	
	M065: fa00 port map(
		A00 => ss02(1),
		B00 => sa04(1),
		C00 => sc03(0),
		C01 => sc03(1),
		S00 => ss03(0)
	);
	
	M066: fa00 port map(
		A00 => ss02(2),
		B00 => sa04(2),
		C00 => sc03(1),
		C01 => sc03(2),
		S00 => ss03(1)
	);
	
	M067: fa00 port map(
		A00 => ss02(3),
		B00 => sa04(3),
		C00 => sc03(2),
		C01 => sc03(3),
		S00 => ss03(2)
	);
	
	M068: fa00 port map(
		A00 => ss02(4),
		B00 => sa04(4),
		C00 => sc03(3),
		C01 => sc03(4),
		S00 => ss03(3)
	);
	
	M069: fa00 port map(
		A00 => ss02(5),
		B00 => sa04(5),
		C00 => sc03(4),
		C01 => sc03(5),
		S00 => ss03(4)
	);
	
	M070: fa00 port map(
		A00 => ss02(6),
		B00 => sa04(6),
		C00 => sc03(5),
		C01 => sc03(6),
		S00 => ss03(5)
	);
	
	M071: fa00 port map(
		A00 => ss02(7),
		B00 => sa04(7),
		C00 => sc03(6),
		C01 => ss03(7),
		S00 => ss03(6)
	);
	
	M072: and00 port map(
		Aa => Ai(0),
		Ba => Bi(5),
		Ya => sa05(0)
	);
	
	M073: and00 port map(
		Aa => Ai(1),
		Ba => Bi(5),
		Ya => sa05(1)
	);
	
	
	M074: and00 port map(
		Aa => Ai(2),
		Ba => Bi(5),
		Ya => sa05(2)
	);
	
	
	M075: and00 port map(
		Aa => Ai(3),
		Ba => Bi(5),
		Ya => sa05(3)
	);
	
	M076: and00 port map(
		Aa => Ai(4),
		Ba => Bi(5),
		Ya => sa05(4)
	);
	
	M077: and00 port map(
		Aa => Ai(5),
		Ba => Bi(5),
		Ya => sa05(5)
	);
	
	M078: and00 port map(
		Aa => Ai(6),
		Ba => Bi(5),
		Ya => sa05(6)
	);
	
	M079: and00 port map(
		Aa => Ai(7),
		Ba => Bi(5),
		Ya => sa05(7)
	);
	
	M080: fa00 port map(
		A00 => ss03(0),
		B00 => sa05(0),
		C00 => '0',
		C01 => sc04(0),
		S00 => Ri(5)
	);
	
	M081: fa00 port map(
		A00 => ss03(1),
		B00 => sa05(1),
		C00 => sc04(0),
		C01 => sc04(1),
		S00 => ss04(0)
	);
	
	M082: fa00 port map(
		A00 => ss03(2),
		B00 => sa05(2),
		C00 => sc04(1),
		C01 => sc04(2),
		S00 => ss04(1)
	);
	
	M083: fa00 port map(
		A00 => ss03(3),
		B00 => sa05(3),
		C00 => sc04(2),
		C01 => sc04(3),
		S00 => ss04(2)
	);
	
	M084: fa00 port map(
		A00 => ss03(4),
		B00 => sa05(4),
		C00 => sc04(3),
		C01 => sc04(4),
		S00 => ss04(3)
	);
	
	M085: fa00 port map(
		A00 => ss03(5),
		B00 => sa05(5),
		C00 => sc04(4),
		C01 => sc04(5),
		S00 => ss04(4)
	);
	
	M086: fa00 port map(
		A00 => ss03(6),
		B00 => sa05(6),
		C00 => sc04(5),
		C01 => sc04(6),
		S00 => ss04(5)
	);
	
	M087: fa00 port map(
		A00 => ss03(7),
		B00 => sa05(7),
		C00 => sc04(6),
		C01 => ss04(7),
		S00 => ss04(6)
	);
	
	M088: and00 port map(
		Aa => Ai(0),
		Ba => Bi(6),
		Ya => sa06(0)
	);
	
	M089: and00 port map(
		Aa => Ai(1),
		Ba => Bi(6),
		Ya => sa06(1)
	);
	
	M090: and00 port map(
		Aa => Ai(2),
		Ba => Bi(6),
		Ya => sa06(2)
	);
	
	M091: and00 port map(
		Aa => Ai(3),
		Ba => Bi(6),
		Ya => sa06(3)
	);
	
	M092: and00 port map(
		Aa => Ai(4),
		Ba => Bi(6),
		Ya => sa06(4)
	);
	
	M093: and00 port map(
		Aa => Ai(5),
		Ba => Bi(6),
		Ya => sa06(5)
	);
	
	M094: and00 port map(
		Aa => Ai(6),
		Ba => Bi(6),
		Ya => sa06(6)
	);
	
	M095: and00 port map(
		Aa => Ai(7),
		Ba => Bi(6),
		Ya => sa06(7)
	);
	
	M096: fa00 port map(
		A00 => ss04(0),
		B00 => sa06(0),
		C00 => '0',
		C01 => sc05(0),
		S00 => Ri(6)
	);
	
	M097: fa00 port map(
		A00 => ss04(1),
		B00 => sa06(1),
		C00 => sc05(0),
		C01 => sc05(1),
		S00 => ss05(0)
	);
	
	M098: fa00 port map(
		A00 => ss04(2),
		B00 => sa06(2),
		C00 => sc05(1),
		C01 => sc05(2),
		S00 => ss05(1)
	);
	
	M099: fa00 port map(
		A00 => ss04(3),
		B00 => sa06(3),
		C00 => sc05(2),
		C01 => sc05(3),
		S00 => ss05(2)
	);
	
	M100: fa00 port map(
		A00 => ss04(4),
		B00 => sa06(4),
		C00 => sc05(3),
		C01 => sc05(4),
		S00 => ss05(3)
	);
	
	M101: fa00 port map(
		A00 => ss04(5),
		B00 => sa06(5),
		C00 => sc05(4),
		C01 => sc05(5),
		S00 => ss05(4)
	);
	
	M102: fa00 port map(
		A00 => ss04(6),
		B00 => sa06(6),
		C00 => sc05(5),
		C01 => sc05(6),
		S00 => ss05(5)
	);
	
	M103: fa00 port map(
		A00 => ss04(7),
		B00 => sa06(7),
		C00 => sc05(6),
		C01 => ss05(7),
		S00 => ss05(6)
	);
	
	M104: and00 port map(
		Aa => Ai(0),
		Ba => Bi(7),
		Ya => sa07(0)
	);
	
	M105: and00 port map(
		Aa => Ai(1),
		Ba => Bi(7),
		Ya => sa07(1)
	);
	
	M106: and00 port map(
		Aa => Ai(2),
		Ba => Bi(7),
		Ya => sa07(2)
	);
	
	M107: and00 port map(
		Aa => Ai(3),
		Ba => Bi(7),
		Ya => sa07(3)
	);
	
	M108: and00 port map(
		Aa => Ai(4),
		Ba => Bi(7),
		Ya => sa07(4)
	);
	
	M109: and00 port map(
		Aa => Ai(5),
		Ba => Bi(7),
		Ya => sa07(5)
	);
	
	M110: and00 port map(
		Aa => Ai(6),
		Ba => Bi(7),
		Ya => sa07(6)
	);
	
	M111: and00 port map(
		Aa => Ai(7),
		Ba => Bi(7),
		Ya => sa07(7)
	);
	
	M112: fa00 port map(
		A00 => ss05(0),
		B00 => sa07(0),
		C00 => '0',
		C01 => sc06(0),
		S00 => Ri(7)
	);
	
	M113: fa00 port map(
		A00 => ss05(1),
		B00 => sa07(1),
		C00 => sc06(0),
		C01 => sc06(1),
		S00 => Ri(8)
	);
	
	M114: fa00 port map(
		A00 => ss05(2),
		B00 => sa07(2),
		C00 => sc06(1),
		C01 => sc06(2),
		S00 => Ri(9)
	);
	
	M115: fa00 port map(
		A00 => ss05(3),
		B00 => sa07(3),
		C00 => sc06(2),
		C01 => sc06(3),
		S00 => Ri(10)
	);
	
	M116: fa00 port map(
		A00 => ss05(4),
		B00 => sa07(4),
		C00 => sc06(3),
		C01 => sc06(4),
		S00 => Ri(11)
	);
	
	M117: fa00 port map(
		A00 => ss05(5),
		B00 => sa07(5),
		C00 => sc06(4),
		C01 => sc06(5),
		S00 => Ri(12)
	);
	
	M118: fa00 port map(
		A00 => ss05(6),
		B00 => sa07(6),
		C00 => sc06(5),
		C01 => sc06(6),
		S00 => Ri(13)
	);

	M119: fa00 port map(
		A00 => ss05(7),
		B00 => sa07(7),
		C00 => sc06(6),
		C01 => Ri(15),
		S00 => Ri(14)
	);
end mult8bit0;