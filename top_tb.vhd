----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 11:04:55
-- Design Name: 
-- Module Name: TOP_TB - TESTBENCH
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TOP_TB is
end TOP_TB;

architecture TESTBENCH of TOP_TB is

    component TOP is
        generic (
            CLKIN_FREQ  : integer
        );
        port (
            CLK100MHZ  : in  std_logic;
            CPU_RESETN : in  std_logic;
            SW         : in  std_logic_vector( 3 downto 0);
            LED        : out std_logic_vector(15 downto 0);
            LED16_B    : out std_logic;
            LED16_G    : out std_logic;
            LED16_R    : out std_logic;
            LED17_B    : out std_logic;
            LED17_G    : out std_logic;
            LED17_R    : out std_logic
        );
    end component;

    signal clk100mhz  :  std_logic;
    signal cpu_resetn :  std_logic;
    signal sw         :  std_logic_vector( 3 downto 0);
    signal led        :  std_logic_vector(15 downto 0);
    signal led16_b    :  std_logic;
    signal led16_g    :  std_logic;
    signal led16_r    :  std_logic;
    signal led17_b    :  std_logic;
    signal led17_g    :  std_logic;
    signal led17_r    :  std_logic;

    constant CLK_FREQ   : positive := 10_000;
    constant CLK_PERIOD : time := 1 sec / CLK_FREQ;

begin
    uut: TOP
        generic map (
            CLKIN_FREQ  => CLK_FREQ
        )
        port map (
            CLK100MHZ  => clk100mhz,
            CPU_RESETN => cpu_resetn,
            SW         => sw,
            LED        => led,
            LED16_B    => led16_b,
            LED16_G    => led16_g,
            LED16_R    => led16_r,
            LED17_B    => led17_b,
            LED17_G    => led17_g,
            LED17_R    => led17_r
        );

    clkgen: process
    begin
        clk100mhz <= '0';
        wait for 0.5 * CLK_PERIOD;
        clk100mhz <= '1';
        wait for 0.5 * CLK_PERIOD;
    end process;

    stimgen: process
    begin
        cpu_resetn <= '0' after 0.25 * CLK_PERIOD, '1' after 0.75 * CLK_PERIOD;
        wait until cpu_resetn = '1';
        sw <= "0100";
        wait for 500 ms;
        sw <= "0000";
        wait for 5 sec;

        assert false
          report "[PASS]: simulation finished."
          severity failure;
    end process;

end TESTBENCH;
