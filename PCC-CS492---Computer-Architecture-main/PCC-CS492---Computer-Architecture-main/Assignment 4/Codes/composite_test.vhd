--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:44:11 03/12/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122093/composite_addsub/composite_test.vhd
-- Project Name:  composite_addsub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: composite
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
 
ENTITY composite_test IS
END composite_test;
 
ARCHITECTURE behavior OF composite_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT composite
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         SD : OUT  std_logic_vector(3 downto 0);
         CB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal SD : std_logic_vector(3 downto 0);
   signal CB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: composite PORT MAP (
          A => A,
          B => B,
          C => C,
          SD => SD,
          CB => CB
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<="0000";
		B<="1010";
		C<='0';
		wait for 1 ps;
		
		A<="1100";
		B<="1000";
		C<='1';
		wait for 1 ps;
		
		A<="0010";
		B<="1110";
		C<='0';
		wait for 1 ps;
		
		A<="0110";
		B<="1010";
		C<='1';
		wait for 1 ps;
		
		A<="0000";
		B<="1111";
		C<='1';
		wait for 1 ps;
   end process;

END;
