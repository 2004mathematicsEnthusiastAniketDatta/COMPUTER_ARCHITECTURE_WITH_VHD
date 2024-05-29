----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:40 03/12/2024 
-- Design Name: 
-- Module Name:    fullhalf_sub - Behavioral 
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

entity fullhalf_sub is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end fullhalf_sub;

architecture Behavioral of fullhalf_sub is

component Half_sub is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;
signal temp,b1,b2:STD_LOGIC:='0';
begin

HS1: Half_sub port map (a=>A, b=>B, diff=>temp, borrow=>b1);
HS2: Half_sub port map (a=>temp, b=>Bin, diff=>D, borrow=>b2);
Bout<= b1 or b2;

end Behavioral;

