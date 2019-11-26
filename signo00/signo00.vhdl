library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity signo00 is
port (
	entrada: in std_logic_vector(15 downto 0);
	salida: out std_logic_vector(31 downto 0)
);
end signo00;

architecture signo0 of signo00 is
signal auxiliar: std_logic_vector(31 downto 0);
begin 
	auxiliar <= "0000000000000000" & entrada when entrada(15) = '0' else "1111111111111111" & entrada;
	salida <= auxiliar;
end signo0;