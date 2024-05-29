--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:47:44 04/02/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122065/mux_16_1/mux_16_1_test.vhd
-- Project Name:  mux_16_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_16_1_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux_16_1_test IS
END mux_16_1_test;
 
ARCHITECTURE behavior OF mux_16_1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_16_1_rtl
    PORT(
         d : IN  std_logic_vector(15 downto 0);
         s : IN  std_logic_vector(3 downto 0);
         o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(15 downto 0) := (others => '0');
   signal s : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_16_1_rtl PORT MAP (
          d => d,
          s => s,
          o => o
        );

   -- Stimulus process
   stim_proc: process
   begin		
      d <= "1111111111111111";
		s <= "0000";
		wait for 1 ps;
		
		d <= "1111111111111110";
		s <= "0000";
		wait for 1 ps;
		
		d <= "1111111111111111";
		s <= "1111";
		wait for 1 ps;
		
		d <= "0111111111111111";
		s <= "1111";
		wait for 1 ps;
   end process;

END;
