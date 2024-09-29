library ieee;
use ieee.std_logic_1164.all;

entity mux21_8 is
port (

d0 : IN STD_LOGIC_VECTOR( 7 DOWNTO 0);
d1 : IN STD_LOGIC_VECTOR( 7 DOWNTO 0);
SEL: IN STD_LOGIC;
DATA_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)

);
end mux21_8;

architecture Behavioral of mux21_8 is
begin

DATA_OUT <= D0 when (sel= '0') 
				else
				D1 when (sel= '1');
				

end Behavioral;

