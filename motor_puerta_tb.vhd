library ieee;
use ieee.std_logic_1164.all;

entity tb_motor_puertas is
end tb_motor_puertas;

architecture tb of tb_motor_puertas is

    component motor_puertas
        port (Aviso_puertas      : in std_logic;
              clk                : in std_logic;
              reset              : in std_logic;
              Movimiento_puertas : out std_logic;
              Luz_emergencia     : out std_logic);
    end component;

    signal Aviso_puertas      : std_logic;
    signal clk                : std_logic;
    signal reset              : std_logic;
    signal Movimiento_puertas : std_logic;
    signal Luz_emergencia     : std_logic;

    constant TbPeriod : time := 0.5 ns; -- EDIT Put right period here


begin

    dut : motor_puertas
    port map (Aviso_puertas      => Aviso_puertas,
              clk                => clk,
              reset              => reset,
              Movimiento_puertas => Movimiento_puertas,
              Luz_emergencia     => Luz_emergencia);
   CLK_process :process
      begin
        CLK <= '1';
        wait for TbPeriod/2;
        CLK <= '0';
        wait for TbPeriod/2;
     end process;


    stimuli : process
    begin
        Aviso_puertas <='0';
            wait for 1 ns;
        Aviso_puertas<='1';
            wait for 1 ns;
          reset<='1';
        wait;
        ASSERT false
            REPORT "Simulación finalizada. Test superado."
            SEVERITY FAILURE;
    end process;
