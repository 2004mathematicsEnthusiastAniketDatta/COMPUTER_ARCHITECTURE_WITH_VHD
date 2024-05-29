----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:09:14 03/12/2024 
-- Design Name: 
-- Module Name:    composite - Behavioral 
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

entity composite is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           SD : out  STD_LOGIC_VECTOR (3 downto 0);
           CB : out  STD_LOGIC);
end composite;

architecture Behavioral of composite is

component XOR_gate is
    Port ( m : in  STD_LOGIC;
           n : in  STD_LOGIC;
           p : out  STD_LOGIC);
end component;

component Full_Adder_basic is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal temp1,temp2,temp3,temp4,c1,c2,c3:STD_LOGIC:='0';

begin
XOR1: XOR_gate port map(m=>B(0), n=>C, p=>temp1);
ADD1: Full_Adder_basic port map(a=>A(0), b=>temp1, c=>C, sum=>SD(0), cout=>c1);

XOR2: XOR_gate port map(m=>B(1), n=>C, p=>temp2);
ADD2: Full_Adder_basic port map(a=>A(1), b=>temp2, c=>c1, sum=>SD(1), cout=>c2);

XOR3: XOR_gate port map(m=>B(2), n=>C, p=>temp3);
ADD3: Full_Adder_basic port map(a=>A(2), b=>temp3, c=>c2, sum=>SD(2), cout=>c3);

XOR4: XOR_gate port map(m=>B(3), n=>C, p=>temp4);
ADD4: Full_Adder_basic port map(a=>A(3), b=>temp4, c=>c3, sum=>SD(3), cout=>CB);

end Behavioral;

