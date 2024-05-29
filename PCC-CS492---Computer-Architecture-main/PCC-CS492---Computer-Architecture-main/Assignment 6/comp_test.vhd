--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:35:13 04/02/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122093/four-bit-comparator/comp_test_new.vhd
-- Project Name:  four-bit-comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comp
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
 
ENTITY comp_test_new IS
END comp_test_new;
 
ARCHITECTURE behavior OF comp_test_new IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comp
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         EQ : OUT  std_logic;
         G : OUT  std_logic;
         L : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal EQ : std_logic;
   signal G : std_logic;
   signal L : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp PORT MAP (
          A => A,
          B => B,
          EQ => EQ,
          G => G,
          L => L
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      A<="1010";
		B<="1010";
		wait for 1 ps;
		
		A<="1011";
		B<="1010";
		wait for 1 ps;
		
		A<="1010";
		B<="1011";
		wait for 1 ps;
		
   end process;

END;
