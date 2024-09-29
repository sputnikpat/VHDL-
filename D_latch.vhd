library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Latch is
port
(
D , CLK : in std_logic;
Q       : out std_logic
);

end d_latch;

architecture Behavioral of D_latch IS

begin

process (Clk , D)
begin 

if (CLK='1') then
Q<=D;

end if;
end process;
end Behavioral;
