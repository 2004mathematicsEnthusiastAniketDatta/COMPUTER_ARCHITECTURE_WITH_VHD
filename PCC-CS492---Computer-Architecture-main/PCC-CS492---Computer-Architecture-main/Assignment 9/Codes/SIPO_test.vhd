--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:01:03 04/09/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122093/SIPO/SIPO_test.vhd
-- Project Name:  SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIPO_rtl
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
 
ENTITY SIPO_test IS
END SIPO_test;
 
ARCHITECTURE behavior OF SIPO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIPO_rtl
    PORT(
         Data : IN  std_logic;
         Rst : IN  std_logic;
         CLK : IN  std_logic;
         QS : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic := '0';
   signal Rst : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal QS : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_rtl PORT MAP (
          Data => Data,
          Rst => Rst,
          CLK => CLK,
          QS => QS
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Rst<='1';
		wait for 2 ps;
		
		shift: for i in 0 to 3 loop
			Data<='1';
			Rst<='0';
			wait for 2 ps;
		end loop;
		
   end process;

END;
