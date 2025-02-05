--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:17:01 03/05/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122093/full_sub_basic/Full_sub_basic_test.vhd
-- Project Name:  full_sub_basic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_sub_basic
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
 
ENTITY Full_sub_basic_test IS
END Full_sub_basic_test;
 
ARCHITECTURE behavior OF Full_sub_basic_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_sub_basic
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         diff : OUT  std_logic;
         borrow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal diff : std_logic;
   signal borrow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_sub_basic PORT MAP (
          a => a,
          b => b,
          c => c,
          diff => diff,
          borrow => borrow
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
	begin
      a<='0';
		b<='0';
		c<='0';
		wait for 1 ps;
		a<='0';
		b<='0';
		c<='1';
		wait for 1 ps;
		a<='0';
		b<='1';
		c<='0';
		wait for 1 ps;
		a<='0';
		b<='1';
		c<='1';
		wait for 1 ps;
		a<='1';
		b<='0';
		c<='0';
		wait for 1 ps;
		a<='1';
		b<='0';
		c<='1';
		wait for 1 ps;
		a<='1';
		b<='1';
		c<='0';
		wait for 1 ps;
		a<='1';
		b<='1';
		c<='1';
		wait for 1 ps;
   end process;

END;
