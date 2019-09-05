library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity barrel00 is port (
	clksl: in std_logic;
	enable: in std_logic;
	insl: in std_logic_vector(7 downto 0);
	limite: in std_logic_vector(2 downto 0);
	sel: in std_logic_vector(3 downto 0);
	outsl: out std_logic_vector(7 downto 0)
);
end barrel00;

architecture barrel0 of barrel00 is
signal sinsl: std_logic_vector(7 downto 0);
signal scont: std_logic_vector(2 downto 0);
begin
	psl: process(clksl)
	begin
		if (clksl'event and clksl = '1') then 
			case sel is
				when "0001" =>
					case enable is 
						when '0' => 
							outsl <= (others => '0');
							sinsl <= insl;
							scont <= "000";
						when '1' => 
							if(scont < limite) then
								scont <= scont + '1';
								sinsl(0) <= '0';
								sinsl(7 downto 1) <= sinsl(6 downto 0);
								outsl <= sinsl;
							else
								scont <= scont;
							end if;
							when others => null;
					end case;
				when "0011" =>
					case enable is 
						when '0' => 
							outsl <= (others => '0');
							sinsl <= insl;
							scont <= "000";
						when '1' => 
							if(scont < limite) then
								scont <= scont + '1';
								sinsl(7) <= '0';
								sinsl(6 downto 0) <= sinsl(7 downto 1);
								outsl <= sinsl;
							else
								scont <= scont;
							end if;
							when others => null;
					end case;
				when "0111" =>
					case enable is 
						when '0' => 
							outsl <= (others => '0');
							sinsl <= insl;
							scont <= "000";
						when '1' => 
							if(scont < limite) then
								scont <= scont + '1';
								sinsl(0) <= sinsl(7);
								sinsl(7 downto 1) <= sinsl(6 downto 0);
								outsl <= sinsl;
							else
								scont <= scont;
							end if;
							when others => null;
					end case;
				when "1111" =>
					case enable is 
						when '0' => 
							outsl <= (others => '0');
							sinsl <= insl;
							scont <= "000";
						when '1' => 
							if(scont < limite) then
								scont <= scont + '1';
								sinsl(7) <= sinsl(0);
								sinsl(6 downto 0) <= sinsl(7 downto 1);
								outsl <= sinsl;
							else
								scont <= scont;
							end if;
							when others => null;
					end case;
				when others => null;
			end case;
		end if;
	end process psl;
end barrel0;