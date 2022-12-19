library ieee;
use ieee.std_logic_1164.all;

entity tb_Comparador is
end tb_Comparador;

architecture tb of tb_Comparador is

    component Comparador
        port (clk                : in std_logic;
              reset              : in std_logic;
              Aviso_ascensor     : in std_logic_vector (1 downto 0);
              Aviso_motor_puerta : in std_logic;
              Piso_actual        : out std_logic_vector (1 downto 0));
    end component;

    signal clk                : std_logic;
    signal reset              : std_logic;
    signal Aviso_ascensor     : std_logic_vector (1 downto 0);
    signal Aviso_motor_puerta : std_logic;
    signal Piso_actual        : std_logic_vector (1 downto 0);

    constant TbPeriod : time := 0.5 ns; -- EDIT Put right period here


begin

    dut : Comparador
    port map (clk                => clk,
              reset              => reset,
              Aviso_ascensor     => Aviso_ascensor,
              Aviso_motor_puerta => Aviso_motor_puerta,
              Piso_actual        => Piso_actual);

                
    CLK_process :process
      begin
		CLK <= '1';
		wait for TbPeriod/2;
		CLK <= '0';
		wait for TbPeriod/2;
     end process;
     
     
    stimuli : process
    begin
     Aviso_motor_puerta<='1';
     Aviso_ascensor <="10";
     wait for 2 ns;
     Aviso_motor_puerta<='0';
     wait for 2 ns;
       Aviso_ascensor<="00";
        
     wait for 2 ns;
     
        Aviso_motor_puerta<='0';
     Aviso_ascensor <="01";
     
     wait for 2 ns;
        Aviso_ascensor<="00";
        Aviso_motor_puerta<='1';
    -- wait for 2 ns;
    -- reset <='1';

     wait;
        ASSERT false
			REPORT "Simulación finalizada. Test superado."
			SEVERITY FAILURE;
    end process;

end tb;
