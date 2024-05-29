--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:30:11 03/05/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122093/four_bit_sub/Four_bit_sub_test.vhd
-- Project Name:  four_bit_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Four_bit_sub
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
 
ENTITY Four_bit_sub_test IS
END Four_bit_sub_test;
 
ARCHITECTURE behavior OF Four_bit_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_bit_sub
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         z : IN  std_logic;
         d : OUT  std_logic_vector(3 downto 0);
         b : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');
   signal z : std_logic := '0';

 	--Outputs
   signal d : std_logic_vector(3 downto 0);
   signal b : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_bit_sub PORT MAP (
          x => x,
          y => y,
          z => z,
          d => d,
          b => b
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      x<="1111";
		y<="0000";
		z<='0';
		wait for 1 ps;
		x<="0101";
		y<="1110";
		z<='0';
		wait for 1 ps;
		x<="0010";
		y<="1101";
		z<='1';
		wait for 1 ps;
		x<="1000";
		y<="1001";
		z<='1';
		wait for 1 ps;
		x<="0110";
		y<="1100";
		z<='0';
		wait for 1 ps;
		x<="0010";
		y<="0011";
		z<='0';
		wait for 1 ps;
   end process;

END;
