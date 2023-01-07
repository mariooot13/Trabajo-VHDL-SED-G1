library ieee;
use ieee.std_logic_1164.all;

entity tb_FSM is
end tb_FSM;

architecture tb of tb_FSM is

    component FSM
        port (Clk                    : in std_logic;
              Start                  : in std_logic;
              Reset                  : in std_logic;
              Piso_Actual            : in std_logic_vector (1 downto 0);
              Feedback_puerta        : in std_logic;
              Botonera               : in std_logic_vector (1 downto 0);
              Aviso_motor_movimiento : out std_logic_vector (1 downto 0);
              semueveono : out std_logic;
              Aviso_motor_puerta     : out std_logic);
    end component;

    signal Clk                    : std_logic;
    signal Start                  : std_logic;
    signal Reset                  : std_logic;
    signal Piso_Actual            : std_logic_vector (1 downto 0);
    signal Feedback_puerta        : std_logic;
    signal Botonera               : std_logic_vector (1 downto 0);
    signal Aviso_motor_movimiento : std_logic_vector (1 downto 0);
    signal Aviso_motor_puerta     : std_logic;
    signal semueveono:std_logic;

	constant TbPeriod : time := 0.5 ns; 
    
begin

    dut : FSM
    port map (Clk                    => Clk,
              Start                  => Start,
              Reset                  => Reset,
              Piso_Actual            => Piso_Actual,
              Feedback_puerta        => Feedback_puerta,
              Botonera               => Botonera,
              Aviso_motor_movimiento => Aviso_motor_movimiento,
              semueveono => semueveono,
              Aviso_motor_puerta     => Aviso_motor_puerta);
CLK_process :process
   begin
		CLK <= '0';
		wait for TbPeriod/2;
		CLK <= '1';
		wait for TbPeriod/2;
   end process;
   
    stimuli : process
    begin
    	
       
       Feedback_puerta <= '0';
       reset<='0';
       Start <= '1';
       Piso_Actual<="00";
       Botonera<="01";
       
       wait for 2 ns;
       
   		Feedback_puerta <='1';
        Piso_Actual<="01";
        Botonera <="01";
        
        wait for 1 ns;
        
        Feedback_puerta <='0';
        
        wait for 1 ns;
     
        Piso_Actual<="10";
        Botonera <="00";
    
      wait for 2 ns;

        ASSERT false
			REPORT "Simulación finalizada. Test superado."
			SEVERITY FAILURE;
    end process;
  

end tb;
