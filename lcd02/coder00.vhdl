library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity coder00 is
	port(
		clkc: inout std_logic;
		inkey: in std_logic_vector(3 downto 0);
		incont: in std_logic_vector(3 downto 0);
		flag: in std_logic;
		RWcdc: out std_logic;
		RScdc: out std_logic;
		ENcdc: out std_logic;
		outcoder: out std_logic_vector(7 downto 0)
	);
end coder00;

architecture coder0 of coder00 is
begin
	pcoder: process(clkc, incont)
	variable aux0: bit:='0';
	variable aux1: bit:='0';
	variable aux2: bit:='0';
	variable aux3: bit:='0';
	begin
		if(clkc'event and clkc='1') then
			case incont is
				when "1000" =>
					case inkey is
						when "0000" =>
							aux0:='0';
							RWcdc<='0';
							RScdc<='1';
							ENcdc<='0';
							--flag<='0';
						when "0001" =>
							if(aux0 = '0') then
								aux0:='1';
								outcoder <= "01001000"; --H
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "0010" =>
							if(aux0 = '0') then
								aux0:='1';
								outcoder <= "01001111"; --O 
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "0100" =>
							if(aux0 = '0') then
								aux0:='1';
								outcoder <= "01001100"; --L
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "1000" =>
							if(aux0 = '0') then
								aux0:='1';
								outcoder <= "01000001"; --A
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when others => null;
					end case;	
				
				when "0100" =>
					case inkey is
					when "0000" =>
						RWcdc<='0';
						RScdc<='1';
						ENcdc<='0';
						aux1:='0';
						--flag<='0';
						when "0001" =>
							if(aux1 = '0') then
								aux1:='1';
								outcoder <= "01001101"; --M
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "0010" =>
							if(aux1 = '0') then
								aux1:='1';
								outcoder <= "01010101"; --U  00111001
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "0100" =>
							if(aux1 = '0') then
								aux1:='1';
								outcoder <= "01001110"; --N
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "1000" =>
							if(aux1 = '0') then
								aux1:='1';
								outcoder <= "01000100"; --D
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when others => null;
					end case;
				
				when "0010" =>
					case inkey is
						when "0000" =>
							aux2:='0';
							RWcdc<='0';
							RScdc<='1';
							ENcdc<='0';
							--flag<='0';
						when "0001" =>
							if(aux2 = '0') then
								aux2:='1';
								outcoder <= "01001010"; --J
								RWcdc <= '0';
								RScdc <= '1';
								ENcdc <= '1';
								--flag<='1';
							end if;
						when "0010" =>
							if(aux2 = '0') then
								aux2:='1';
								outcoder <= "01010011"; --S  
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "0100" =>
							if(aux2 = '0') then
								aux2:='1';
								outcoder <= "10101001"; --DDRAM AD SET
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "1000" =>
							if(aux2 = '0') then
								aux2:='1';
								outcoder <= "00100000"; --Espacio
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when others => null;
					end case;
				
				when "0001" =>
					case inkey is
						when "0000" =>
							aux3:='0';
							RWcdc<='0';
							RScdc<='1';
							ENcdc<='0';
							--flag<='0';
						when "0001" =>
							if(aux3 = '0') then
								aux3:='1';
								outcoder <= "00110001"; --1
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "0010" =>
							if(aux3 = '0') then
								aux3:='1';
								outcoder <= "00110100"; --7 
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "0100" =>
							if(aux3 = '0') then
								aux3:='1';
								outcoder <= "00110111"; --4
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when "1000" =>
							if(aux3 = '0') then
								aux3:='1';
								outcoder <= "00101010"; --*
								RWcdc<='0';
								RScdc<='1';
								ENcdc<='1';
								--flag<='1';
							end if;
						when others => null;
					end case;
				when others => null;
			end case;
		end if;
	end process pcoder;
end coder0;