----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:23:44 04/09/2024 
-- Design Name: 
-- Module Name:    SIPO_rtl - Behavioral 
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

entity SIPO_rtl is
    Port ( Data : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           QS : out  STD_LOGIC_VECTOR (3 downto 0));
end SIPO_rtl;

architecture Behavioral of SIPO_rtl is
component d_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end component;
signal q0,q1,q2,q3:STD_LOGIC:='0';
begin
	d0:d_rtl port map(
		D=>Data,
		Reset=>Rst,
		Clk=>CLK,
		Q=>q0);
		
	d1:d_rtl port map(
		D=>q0,
		Reset=>Rst,
		Clk=>CLK,
		Q=>q1);
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
	d2:d_rtl port map(
		D=>q1,
		Reset=>Rst,
		Clk=>CLK,
		Q=>q2);
		
	d3:d_rtl port map(
		D=>q2,
		Reset=>Rst,
		Clk=>CLK,
		Q=>q3);

QS(0) <= q0;
QS(1) <= q1;
QS(2) <= q2;
QS(3) <= q3;
end Behavioral;

