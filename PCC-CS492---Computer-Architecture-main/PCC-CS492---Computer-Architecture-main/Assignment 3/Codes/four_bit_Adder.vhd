----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:30 03/05/2024 
-- Design Name: 
-- Module Name:    four_bit_Adder - Behavioral 
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

entity four_bit_Adder is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           z : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           c : out  STD_LOGIC);
end four_bit_Adder;

architecture Behavioral of four_bit_Adder is
component Full_Adder_basic is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;
signal c1,c2,c3:STD_LOGIC:='0';
begin
FA0: Full_Adder_basic port map(a=>x(0), b=>y(0), c=>z, sum=>s(0), cout=>c1);
FA1: Full_Adder_basic port map(a=>x(1), b=>y(1), c=>c1, sum=>s(1), cout=>c2);
FA2: Full_Adder_basic port map(a=>x(2), b=>y(2), c=>c2, sum=>s(2), cout=>c3);
FA3: Full_Adder_basic port map(a=>x(3), b=>y(3), c=>c3, sum=>s(3), cout=>c);

end Behavioral;

