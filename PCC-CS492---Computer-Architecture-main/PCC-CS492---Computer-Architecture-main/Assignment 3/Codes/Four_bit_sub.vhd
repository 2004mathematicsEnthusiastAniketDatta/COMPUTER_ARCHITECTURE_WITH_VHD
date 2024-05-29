----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:17 03/05/2024 
-- Design Name: 
-- Module Name:    Four_bit_sub - Behavioral 
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

entity Four_bit_sub is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           z : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC);
end Four_bit_sub;

architecture Behavioral of Four_bit_sub is
component Full_sub_basic is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           borrow : out  STD_LOGIC);
end component;
signal b1,b2,b3:STD_LOGIC:='0';
begin
FS0: Full_sub_basic port map(a=>x(0), b=>y(0), c=>z, diff=>d(0), borrow=>b1);
FS1: Full_sub_basic port map(a=>x(1), b=>y(1), c=>b1, diff=>d(1), borrow=>b2);
FS2: Full_sub_basic port map(a=>x(2), b=>y(2), c=>b2, diff=>d(2), borrow=>b3);
FS3: Full_sub_basic port map(a=>x(3), b=>y(3), c=>b3, diff=>d(3), borrow=>b);

end Behavioral;

