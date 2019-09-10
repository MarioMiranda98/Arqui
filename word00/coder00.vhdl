library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity coder00 is port (
	incontc: in std_logic_vector(3 downto 0);
	outcontc: out std_logic_vector(6 downto 0)
);
end coder00;

architecture coder0 of coder00 is
begin
	process(incontc)
	begin
		case incontc is
			when "0001" => outcontc <= "0110111";
			when "0010" => outcontc <= "1111110";
			when "0100" => outcontc <= "0001110";
			when "1000" => outcontc <= "1110111";
			when others => outcontc <= "0000000";
			end case;
	end process;
end coder0;