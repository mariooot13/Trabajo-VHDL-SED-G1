library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Cabina is
    Port (
        clk                : in  std_logic;
        reset              : in  std_logic;
        Aviso_ascensor     : in  std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
        Aviso_motor_puerta : in  std_logic;--0 cerrar,1 abrir
        --Piso_objetivo: out std_logic_vector(1 downto 0);--Memoria boton
        Piso_actual        : out std_logic_vector(1 downto 0);
        Feedback_puerta    : out std_logic;-- para pobrear es una señal
        --Feedback_motor: out std_logic_vector(2 downto 0);
        --cont: out std_logic_vector(1 downto 0)
        Salida_leds_motor  : out std_logic_vector(1 downto 0);
        Salida_leds_puertas: out std_logic;
        Salida_barrido     : out std_logic_vector(5 downto 0);
        Luz_emer_motor     : out std_logic;
        Luz_emer_puertas   : out std_logic
    );
end Cabina;

architecture Structural of Cabina is

    signal S_Aviso_puertas: std_logic;
    -- signal S_Aviso_Ascensor: std_logic_vector(1 downto 0);
   
    component motor 
        port(
            Aviso_ascensor      : in  std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
            clk                 : in  STD_LOGIC;
            reset               : in  STD_LOGIC;
            Movimiento_ascensor : out std_logic_vector (1 downto 0);-- 00 parado, 10 para encender led subir y 01 para encender led de bajar, 11 nad
            Luz_emergencia_m    : out std_logic
        );
    end component;

    component motor_puertas
        port
         (
             Aviso_puertas      : in  std_logic;--0 cerrar,1 abrir
             clk                : in  STD_LOGIC;
             reset              : in  STD_LOGIC;
             Movimiento_puertas : out std_logic;--0 cerrando, 1 abriendo
             Luz_emergencia_p   : out std_logic
         );
    end component;

    component Comparador 
        port (
            clk                : in  std_logic;
            reset              : in  std_logic;
            Aviso_ascensor     : in  std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
            Aviso_motor_puerta : in  std_logic;--0 cerrar,1 abrir
            --Piso_objetivo: out std_logic_vector(1 downto 0);--Memoria boton
            Piso_actual        : out std_logic_vector(1 downto 0)
        );
    end component;

    component BarridoLed
        port(
            clk 		  : in  std_logic;
            --reset 		: in  std_logic;
            Aviso_puerta  : in  std_logic; --1 abrir 0 cerrar
            Estado_puerta : out std_logic;
            LED 		  : out std_logic_vector(5 downto 0) --ceros abierta, unos cerrada
        );
    end component ;   

begin

    inst_motor: motor port map(
         Aviso_ascensor => Aviso_Ascensor,
         clk => clk, 
         reset => reset,
         Movimiento_ascensor => Salida_leds_motor,
         Luz_emergencia_m => Luz_emer_motor     
         );

    inst_motor_puertas: motor_puertas port map(
       Aviso_puertas => Aviso_motor_puerta, 
       clk => clk,
       reset => reset,
       Movimiento_puertas => S_Aviso_puertas,
       Luz_emergencia_p => Luz_emer_puertas
    );
     
    inst_Comparador: Comparador port map( 
        clk => clk,
        reset => reset,
        Aviso_ascensor => Aviso_ascensor,--00 parado, 01 bajando, 10 subiendo, 11 nada
        Aviso_motor_puerta => Aviso_motor_puerta,--0 cerrar,1 abrir
        --Piso_objetivo: out std_logic_vector(1 downto 0);--Memoria boton
        Piso_actual => Piso_actual
    );
        
    inst_BarridoLed: BarridoLed port map(
        clk =>clk,
      	Aviso_puerta => S_Aviso_puertas,--1 abrir 0 cerrar
        Estado_puerta => Feedback_puerta,
        LED => Salida_barrido --ceros abierta, unos cerrada
    );
end architecture Structural;
