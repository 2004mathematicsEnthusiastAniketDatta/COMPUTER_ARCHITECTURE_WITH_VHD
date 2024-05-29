--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:16:28 03/05/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122093/full_adder_using_half/Full_half_test.vhd
-- Project Name:  full_adder_using_half
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_half
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
 
ENTITY Full_half_test IS
END Full_half_test;
 
ARCHITECTURE behavior OF Full_half_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_half
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_half PORT MAP (
          x => x,
          y => y,
          z => z,
          s => s,
          c => c
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      x<='0';
		y<='0';
		z<='0';
		wait for 1 ps;
		x<='0';
		y<='0';
		z<='1';
		wait for 1 ps;
		x<='0';
		y<='1';
		z<='0';
		wait for 1 ps;
		x<='0';
		y<='1';
		z<='1';
		wait for 1 ps;
		x<='1';
		y<='0';
		z<='0';
		wait for 1 ps;
		x<='1';
		y<='0';
		z<='1';
		wait for 1 ps;
		x<='1';
		y<='1';
		z<='0';
		wait for 1 ps;
		x<='1';
		y<='1';
		z<='1';
		wait for 1 ps;
   end process;

END;
