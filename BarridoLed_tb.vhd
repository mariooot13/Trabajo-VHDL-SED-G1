library ieee;
use ieee.std_logic_1164.all;

entity tb_BarridoLed is
end tb_BarridoLed;

architecture tb of tb_BarridoLed is

    component BarridoLed
        port (clk           : in std_logic;
              --reset         : in std_logic;
              Aviso_puerta  : in std_logic;
              Estado_puerta : out std_logic;
              LED           : out std_logic_vector (5 downto 0));
    end component;

    signal clk           : std_logic;
    --signal reset         : std_logic;
    signal Aviso_puerta  : std_logic;
    signal Estado_puerta : std_logic;
    signal LED           : std_logic_vector (5 downto 0);
 constant TbPeriod : time := 0.5 ns;
begin

    dut : BarridoLed
    port map (clk           => clk,
             -- reset         => reset,
              Aviso_puerta  => Aviso_puerta,
              Estado_puerta => Estado_puerta,
              LED           => LED);

    CLK_process :process
      begin
		CLK <= '1';
		wait for TbPeriod/2;
		CLK <= '0';
		wait for TbPeriod/2;
     end process;
     
     stimuli : process
    begin
     Aviso_puerta<= '1';
     wait for 6 ns;
      Aviso_puerta<= '0';

     wait;
        ASSERT false
			REPORT "Simulación finalizada. Test superado."
			SEVERITY FAILURE;
    end process;

end tb;
