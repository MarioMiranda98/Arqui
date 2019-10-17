library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity configLCD00 is
port(clkcf: in std_logic;
	resetcf: in std_logic;
	inFlagcf: in std_logic;
	incontcf: inout std_logic_vector(4 downto 0);
	outwordcf: out std_logic_vector(7 downto 0);
	ENcf: out std_logic;
	RScf: out std_logic;
	RWcf: out std_logic;
	outFlagcf: out std_logic
	);
end configLCD00;

architecture configLCD0 of configLCD00 is
begin
	pconfig: process(clkcf)
	begin
		if(clkcf'event and clkcf='1') then
			case resetcf is
				when '0' =>
					outwordcf <= (others => '0');
					outFlagcf <= '0';
				when '1' =>
				 case incontcf is
					when "00001" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000001"; --SCREEN CLEAR
							outFlagcf <= '0';
							ENcf <= '1';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "00010" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000001"; --SCREEN CLEAR
							outFlagcf <= '0';
							ENcf <= '0';
							RScf <= '0';
							RWcf <= '0';
						end if;
						-------------------------------------------------
					when "00011" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000001"; --SCREEN CLEAR
							outFlagcf <= '0';
							ENcf <= '1';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "00100" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000001"; --SCREEN CLEAR
							outFlagcf <= '0';
							ENcf <= '0';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "00101" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000010"; --CURSOR RETURN
							outFlagcf <= '0';
							ENcf <= '1';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "00110" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000010"; --CURSOR RETURN
							outFlagcf <= '0';
							ENcf <= '0';
							RScf <= '0';
							RWcf <= '0';
						end if;
						----------------------------------------------------
					when "00111" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000110"; --INPUT SET
							outFlagcf <= '0';
							ENcf <= '1';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "01000" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00000110"; --INPUT SET
							outFlagcf <= '0';
							ENcf <= '0';
							RScf <= '0';
							RWcf <= '0';
						end if;
					-------------------------------------------------------
					when "01001" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00001111"; --DISPLAY SWITCH
							outFlagcf <= '0';
							ENcf <= '1';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "01010" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00001111"; --DISPLAY SWITCH
							outFlagcf <= '0';
							ENcf <= '0';
							RScf <= '0';
							RWcf <= '0';
						end if;
					----------------------------------------------------------
					when "01011" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00011100"; --SHIFT
							outFlagcf <= '0';
							ENcf <= '1';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "01100" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00011100"; --SHIFT							
							outFlagcf <= '0';
							ENcf <= '0';
							RScf <= '0';
							RWcf <= '0';
						end if;
					-----------------------------------------
					when "01101" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00111100"; --FUNCTION SET
							outFlagcf <= '0';
							ENcf <= '1';
							RScf <= '0';
							RWcf <= '0';
						end if;
					when "01110" =>
						if(inFlagcf = '1') then 
							outwordcf <= "00111100"; --FUNCTION SET
							outFlagcf <= '0';
							ENcf <= '0';
							RScf <= '0';
							RWcf <= '0';
						end if;
				--------------------------------------------------------------
						when "01111" =>
							if(inFlagcf = '1') then 
								outwordcf <= "00111100"; --FUNCTION SET
								outFlagcf <= '0';
								ENcf <= '1';
								RScf <= '0';
								RWcf <= '0';
							end if;
						when "10000" =>
							if(inFlagcf = '1') then 
								outwordcf <= "00111100"; --FUNTION SET							
								outFlagcf <= '0';
								ENcf <= '0';
								RScf <= '0';
								RWcf <= '0';
							end if;
							
						when "10001" =>
							if(inFlagcf = '1') then 
								outwordcf <= "10101001"; --DDRAM AD SET						
								outFlagcf <= '0';
								ENcf <= '1';
								RScf <= '0';
								RWcf <= '0';
							end if;
						when "10010" =>
							if(inFlagcf = '1') then 
								outwordcf <= "10101001"; --DDRAM AD SET						
								outFlagcf <= '0';
								ENcf <= '0';
								RScf <= '0';
								RWcf <= '0';
							end if;
							
						when "10011" =>
							if(inFlagcf = '1') then 
								outwordcf <= "10101001"; --DDRAM AD SET						
								outFlagcf <= '0';
								ENcf <= '1';
								RScf <= '0';
								RWcf <= '0';
							end if;
						when "10100" =>
							if(inFlagcf = '1') then 
								outwordcf <= "10101001"; --DDRAM AD SET						
								outFlagcf <= '1';
								ENcf <= '0';
								RScf <= '0';
								RWcf <= '0';
							end if;
						when others => NULL;
				 end case;
				when others => NULL;
			end case;
		end if;
	end process pconfig;
end configLCD0;