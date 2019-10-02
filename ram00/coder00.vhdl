library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coder00 is
port(clkc: in std_logic;
	resetc: in std_logic;
	rwc: in std_logic;
	inkeyc: in std_logic_vector(3 downto 0);
	incontc: in std_logic_vector(3 downto 0);
	contWC: inout std_logic_vector(4 downto 0);
	wordc: out std_logic_vector(6 downto 0);
	outFlag: out std_logic
);
end coder00;

architecture coder0 of coder00 is
begin
	pcoder: process(clkc, contWC)
	variable aux1: bit := '0';
	variable aux2: bit := '0';
	variable aux3: bit := '0';
	variable aux4: bit := '0';
	begin
		if (clkc'event and clkc = '1') then
			case resetc is
				when '0' => 
					wordc <= (others => '0');
					contWC <= "11111";
					outFlag <= '0';
				when '1' => 
					case incontc is
						when "1000" =>
							case inkeyc is
								when "0000" =>
									aux1 := '0';
									aux2 := '0';
									aux3 := '0';
									aux4 := '0';
									outFlag <= '0';
									contWC <= contWC;
								when "0001" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "0110000";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0010" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1101101";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0100" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1111001";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "1000" => 
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1110111";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when others => null;
							end case;
						when "0100" =>
							case inkeyc is
								when "0000" =>
									aux1 := '0';
									aux2 := '0';
									aux3 := '0';
									aux4 := '0';
									outFlag <= '0';
									contWC <= contWC;
								when "0001" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "0110011";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0010" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1011011";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0100" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1011111";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "1000" => 
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "0011111";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when others => null;
							end case;
						when "0010" =>
							case inkeyc is
								when "0000" =>
									aux1 := '0';
									aux2 := '0';
									aux3 := '0';
									aux4 := '0';
									outFlag <= '0';
									contWC <= contWC;
								when "0001" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1110000";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0010" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1111111";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0100" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1111011";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "1000" => 
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1001110";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when others => null;
							end case;
						when "0001" =>
							case inkeyc is
								when "0000" =>
									aux1 := '0';
									aux2 := '0';
									aux3 := '0';
									aux4 := '0';
									outFlag <= '0';
									contWC <= contWC;
								when "0001" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "1111110";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0010" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "0011101";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "0100" =>
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "0000001";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when "1000" => 
									if (aux1 = '0') then 
										aux1 := '1';
										wordc <= "0111101";
										contWC <= contWC + '1';
										outFlag <= '1';
									else
										contWC <= contWC;
										outFlag <= '0';
									end if;
								when others => null;
							end case;
						when others => null;
					end case;
				when others => null;
			end case;
		end if;
	end process pcoder;
end coder0;