LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

entity ALU is

port
(
A,B : in STD_LOGIC_VECTOR(7 DOWNTO 0);
OP : IN STD_LOGIC_VECTOR(2 downto 0);
Result : out STD_LOGIC_VECTOR(7 DOWNTO 0);
carryout : out std_logic
);

end ALU;

architecture Behavioral of ALU is

signal ALU_RESULT: std_logic_vector (7 downto 0);
signal temp : std_logic_vector(8 downto 0);

begin
process (A,B,OP)
begin
case(op) is
when "000" => --addition
ALU_RESULT <= A+B;
temp<= ('0' & A) + ('0' & B);

when "001" => --subtractoin
ALU_RESULT<= A-B;
temp<= ('0' & A) - ('0' & B);

when "010" => --Multi
ALU_RESULT<=  std_logic_vector(to_unsigned(to_integer(unsigned(A)) * to_integer(unsigned(B)),8));
 

when "011" => --Multi
ALU_RESULT<=  std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)),8));

when "100" => --XOR
ALU_RESULT<= A XOR B;

when "101" => --XOR
ALU_RESULT<= A Xnor B;

when "110" => --a eq b
if (A=B) then
ALU_RESULT<= x"01";
else
ALU_RESULT<= x"00";
end if;

when "111" => --a eq b
if (A>B) then
ALU_RESULT<= x"01";
else
ALU_RESULT<= x"00";
end if;


when others=>
ALU_RESULT<=A;
end case;
end process;

Result<= ALU_RESULT;

CarryOut<= temp(8);



end behavioral;


