----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:11:43 03/05/2024 
-- Design Name: 
-- Module Name:    Full_sub_basic - Behavioral 
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

entity Full_sub_basic is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end Full_sub_basic;

architecture Behavioral of Full_sub_basic is

begin
diff <= ((not a) and (not b) and c) or ((not a) and b and (not c)) or (a and (not b) and (not c)) or ( a and b and c);
borrow <= ((not a) and (not b) and c) or ((not a) and b and (not c)) or ((not a) and b and c) or ( a and b and c);

end Behavioral;

