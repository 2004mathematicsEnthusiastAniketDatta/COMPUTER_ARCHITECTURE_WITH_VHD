----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:09:58 04/02/2024 
-- Design Name: 
-- Module Name:    comp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           EQ : out  STD_LOGIC;
           G : out  STD_LOGIC;
           L : out  STD_LOGIC);
end comp;

architecture Behavioral of comp is
signal x0,x1,x2,x3:STD_LOGIC:='0';
begin
x0<=not (((not A(0)) and B(0)) or (A(0) and (not B(0))));
x1<=not (((not A(1)) and B(1)) or (A(1) and (not B(1))));
x2<=not (((not A(2)) and B(2)) or (A(2) and (not B(2))));
x3<=not (((not A(3)) and B(3)) or (A(3) and (not B(3))));

EQ<= x0 and x1 and x2 and x3;
G<= (A(3) and (not B(3))) or (x3 and A(2) and (not B(2))) or (x3 and x2 and A(1) and (not B(1))) or (x3 and x2 and x1 and A(0) and (not B(0))) ;
L<= (B(3) and (not A(3))) or (x3 and B(2) and (not A(2))) or (x3 and x2 and B(1) and (not A(1))) or (x3 and x2 and x1 and B(0) and (not A(0))) ;

end Behavioral;

