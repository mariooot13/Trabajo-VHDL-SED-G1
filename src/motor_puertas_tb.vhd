----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 15:32:08
-- Design Name: 
-- Module Name: MOTOR_PUERTAS_TB - TESTBENCH
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MOTOR_PUERTAS_TB is
--  Port ( );
end MOTOR_PUERTAS_TB;

architecture TESTBENCH of MOTOR_PUERTAS_TB is

    component MOTOR_PUERTAS is
        port ( 
            RESET_N          : in  std_logic;
            CLK              : in  std_logic;
            CE               : in  std_logic;
            DO_OPEN          : in  std_logic;
            DO_CLOSE         : in  std_logic;
            FULL_OPEN        : out std_logic;
            FULL_CLOSED      : out std_logic;
            DOOR_POS         : out std_logic_vector(7 downto 0);
            LUZ_EMERGENCIA_P : out std_logic
        );
    end component;

    signal reset_n          : std_logic;
    signal clk              : std_logic;
    signal ce               : std_logic;
    signal do_open          : std_logic;
    signal do_close         : std_logic;
    signal full_open        : std_logic;
    signal full_closed      : std_logic;
    signal door_pos         : std_logic_vector(7 downto 0);
    signal luz_emergencia_p : std_logic;

    constant CLK_FREQ   : positive := 1_000;
    constant CLK_PERIOD : time     := 1 sec / CLK_FREQ;

begin
    uut: MOTOR_PUERTAS
        port map ( 
            RESET_N          => reset_n,
            CLK              => clk,
            CE               => ce,
            DO_OPEN          => do_open,
            DO_CLOSE         => do_close,
            FULL_OPEN        => full_open,
            FULL_CLOSED      => full_closed,
            DOOR_POS         => door_pos,
            LUZ_EMERGENCIA_P => luz_emergencia_p
        );

    clkgen: process
    begin
        clk <= '0';
        wait for 0.5 * CLK_PERIOD;
        clk <= '1';
        wait for 0.5 * CLK_PERIOD;
    end process;

    strobegen: process
    begin
        ce <= '0';
        for i in 0 to 249 loop
          wait until clk = '1';
        end loop;
        ce <= '1';
        wait until clk = '1';
    end process;

    stimgen: process
    begin
        do_open <= '0';
        do_close <= '0';
        reset_n <= '0' after 0.25 * CLK_PERIOD, '1' after 0.75 * CLK_PERIOD;
        wait until reset_n = '1';
        wait for 50 ms;
        wait until clk = '1';
        do_close <= '1';
        wait until full_closed = '1' for 1500 ms;
        wait until ce = '1';
        wait for 50 ms;
        do_close <= '0';
        wait until ce = '1';
        wait for 50 ms;
        wait until ce = '1';
        do_open <= '1';
        wait until full_open = '1' for 1500 ms;
        wait until ce = '1';
        wait for 50 ms;
        do_open <= '0';
        wait for 50 ms;
        assert false
          report "[PASS]: simulation finished."
          severity failure;
    end process;

end TESTBENCH;
