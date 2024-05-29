--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:28:16 04/29/2024
-- Design Name:   
-- Module Name:   /home/Abhishikta/Desktop/ise/ram/ram_test.vhd
-- Project Name:  ram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_rtl
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ram_rtl_tb is
end ram_rtl_tb;

architecture Behavioral of ram_rtl_tb is
    
    component ram_rtl
        Port (
            data_in : in STD_LOGIC_VECTOR (7 downto 0);
            adr : in STD_LOGIC_VECTOR (6 downto 0); 
            wr_en : in STD_LOGIC;
            rst : in STD_LOGIC;
            clk : in STD_LOGIC;
            data_out : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    
    signal clk : STD_LOGIC := '0';
    signal data_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal adr : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal wr_en : STD_LOGIC := '0';
    signal rst : STD_LOGIC := '0';
    signal data_out : STD_LOGIC_VECTOR(7 downto 0);

begin

    
    UUT : ram_rtl
    port map (
        data_in => data_in,
        adr => adr,
        wr_en => wr_en,
        rst => rst,
        clk => clk,
        data_out => data_out
    );

    -- Clock process
    clk_process: process
    begin
        while now < 1000 ns loop  
            clk <= not clk;
            wait for 5 ns;  
        end loop;
        wait;
    end process;

    -- Stimulus process
    stimulus : process
    begin
        
        rst <= '1';
        wait for 20 ns;
        rst <= '0';

        
        wr_en <= '1';
        adr <= "0000001";  
        data_in <= "10101010";  
        wait for 10 ns;  
        wr_en <= '0';

       
        adr <= "0000001";  
        wait for 10 ns;  
        

        wait;
    end process;

end Behavioral;


