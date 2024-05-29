----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:58 04/02/2024 
-- Design Name: 
-- Module Name:    mux_16_1_rtl - Behavioral 
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

entity mux_16_1_rtl is
    Port ( d : in  STD_LOGIC_VECTOR (15 downto 0);
           s : in  STD_LOGIC_VECTOR (3 downto 0);
           o : out  STD_LOGIC);
end mux_16_1_rtl;

architecture Behavioral of mux_16_1_rtl is

component mux_rtl is
    Port ( data : in  STD_LOGIC_VECTOR (7 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           out_data : out  STD_LOGIC);
end component;

signal t1, t2 : STD_LOGIC := '0';

begin

mux_1 : mux_rtl port map(
	data(0)=> d(0),
	data(1)=> d(1),
	data(2)=> d(2),
	data(3)=> d(3),
	data(4)=> d(4),
	data(5)=> d(5),
	data(6)=> d(6),
	data(7)=> d(7),
	sel(0) => s(0),
	sel(1) => s(1),
	sel(2) => s(2),
	out_data => t1
);

mux_2 : mux_rtl port map(
	data(0)=> d(8),
	data(1)=> d(9),
	data(2)=> d(10),
	data(3)=> d(11),
	data(4)=> d(12),
	data(5)=> d(13),
	data(6)=> d(14),
	data(7)=> d(15),
	sel(0) => s(0),
	sel(1) => s(1),
	sel(2) => s(2),
	out_data => t2
);

o <= (t1 and not(s(3))) or (t2 and s(3));

end Behavioral;

