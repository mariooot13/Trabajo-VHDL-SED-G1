library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
        generic (
            CLKIN_FREQ  : integer := 100_000_000; -- Nexys4 DDR 100 MHz
            SYSCLK_FREQ : integer :=        1000  -- System clock frequency 1 kHz
        );
    Port (
        clkin                  : in  STD_LOGIC;
        reset                  : in  STD_LOGIC ;
        Botonera               : in  std_logic_vector( 3 downto 0);
        start                  : in  std_logic;
        Salida_luz_motor_emer  : out std_logic;
        Salida_luz_puerta_emer : out std_logic;
        Salida_motor           : out std_logic_vector(1 downto 0);
        Salida_puerta          : out std_logic;
        Salida_display         : out std_logic_vector (6 downto 0);
        -- abierto_cerrado       : in  std_logic;
        Salida_barrido_leds    : out std_logic_vector(5 downto 0);
        Salida_anodo           : out std_logic_vector (7 downto 0)
    );
end top;

architecture Structural of top is

    component FSM 
        port(
            Clk                    : in  STD_LOGIC;
            Start                  : in  std_logic; --como un enable
            Reset                  : in  STD_LOGIC;
            Piso_Actual            : in  std_logic_vector(1 downto 0);
            Feedback_puerta        : in  std_logic; --1 abierto, 0 cerrado
            Botonera               : in  std_logic_vector(1 downto 0); -- viene del antirrebote convertida
            Aviso_motor_movimiento : out std_logic_vector(1 downto 0); --00 parado, 01 bajando, 10 subiendo, 11 nada
            Aviso_motor_puerta     : out std_logic --1 que se abran,0 que se cierren
            --Piso_objetivo: out std_logic_vector -- va a ir a un decodificador o lo que sea para que nos imprima como camvbia de piso, se le va asignar luego memoria boton.
            --semueveono : out std_logic
        );
    end component;
       
    component Cabina 
        port (
            clk                 : in  std_logic;
            reset               : in  std_logic;
            Aviso_ascensor      : in  std_logic_vector(1 downto 0);--00 parado, 01 bajando, 10 subiendo, 11 nada
            Aviso_motor_puerta  : in  std_logic;--0 cerrar,1 abrir
            --Piso_objetivo       : out std_logic_vector(1 downto 0);--Memoria boton
            Piso_actual         : out std_logic_vector(1 downto 0);
            Feedback_puerta     : out std_logic;-- para pobrear es una señal
            --Feedback_motor      : out std_logic_vector(2 downto 0);
            --cont                : out std_logic_vector(1 downto 0)
            Salida_leds_motor   : out std_logic_vector(1 downto 0);
            Salida_leds_puertas : out std_logic;
            Salida_barrido      : out std_logic_vector(5 downto 0);
            Luz_emer_motor      : out std_logic;
            Luz_emer_puertas    : out std_logic
        );
    end component;

    component DivisorFrecuencia is
        generic (
            FREQ_ENTRADA : integer;
            FREQ_SALIDA	 : integer
        );
        port (
            clk_entrada : in  std_logic; 
            reset       : in  std_logic; 
            clk_salida  : out std_logic
     );
    end component;
         

--         component antirrebote_vector
--            port(
--            CLK : in  STD_LOGIC;
--			  RST : in  STD_LOGIC;
--           vector_IN : in  STD_LOGIC_VECTOR ( 1 downto 0);
--           vector_OUT : out  STD_LOGIC_VECTOR(1 downto 0)
            
--            );
--          end component;

    component convertidor_piso
        port (
            clk                           : in  STD_LOGIC;
		    rst                           : in  STD_LOGIC;
		    --piso_actual                   : IN std_logic_vector(2 DOWNTO 0);
		    boton_seleccionado            : IN  std_logic_vector(3 DOWNTO 0);
		    boton_seleccionado_convertido : OUT std_logic_vector(1 DOWNTO 0)
		);
	end component;

    component Decoder
        port(
            PISO_OBJETIVO : IN  std_logic_vector(1 DOWNTO 0);
            led           : OUT std_logic_vector(6 DOWNTO 0);
            anodo         : out std_logic_vector (7 downto 0);
            clk           : in  std_logic
        );
    end component;

    signal sys_clk                  : std_logic;
    signal botonera_convertida      : std_logic_vector (1 downto 0);
    signal S_Piso_Actual            : std_logic_vector(1 downto 0);
    signal S_Feedback_puerta        : std_logic;--señal que conecta que Cabina con FSM. Pasa si esta cerrado o abierto a la FSM
    signal S_Aviso_motor_movimiento : std_logic_vector(1 downto 0);
    signal S_Aviso_puerta           : std_logic ;
    signal S_clk                    : std_logic ;

begin 
    prescaler: DivisorFrecuencia
        generic map (
            FREQ_ENTRADA => CLKIN_FREQ,
            FREQ_SALIDA	 => SYSCLK_FREQ
        )
        port map (
            clk_entrada => clkin, 
            reset       => reset, 
            clk_salida  => sys_clk
     );

    inst_FSM: FSM
        port map (
            Clk => sys_clk,
            Start => start,--comoun enable
            Reset => reset, 
            Piso_Actual => S_Piso_Actual,
            Feedback_puerta => S_Feedback_puerta ,
            Botonera => botonera_convertida,
            Aviso_motor_movimiento => S_Aviso_motor_movimiento,
            Aviso_motor_puerta => S_Aviso_puerta
            --Piso_objetivo: out std_logic_vector -- va a ir a un decodificador o lo que sea para que nos imprima como camvbia de piso, se le va asignar luego memoria boton.
            -- semueveono =>
        );

    inst_Cabina: Cabina
        port map (
            clk => sys_clk,
            reset => reset ,
            Aviso_ascensor => S_Aviso_motor_movimiento,
            Aviso_motor_puerta => S_Aviso_puerta,
            Piso_actual => S_Piso_Actual,
            Feedback_puerta => S_Feedback_puerta,
            Salida_leds_motor => Salida_motor,
            Salida_leds_puertas => Salida_puerta,
            Salida_barrido => Salida_barrido_leds,
            Luz_emer_motor => Salida_luz_motor_emer,
            Luz_emer_puertas => Salida_luz_puerta_emer
       );

--       inst_DivisorFrecuencia: DivisorFrecuencia port map(
       
--       clk_entrada=>clk,
--        reset =>reset, 
--        clk_salida=>S_clk
--        );
       
--       inst_BarridoLed: BarridoLed port map(
--        clk 		  =>clk,
--        reset 		  =>reset,
--      	senal_entrada =>S_Aviso_puerta,
--      	LED 		  =>Salida_barrido_leds
--      	);
      	
--      	inst_antirrebote_vector: antirrebote_vector port map(
--      	 CLK =>clk,				--Entrada de reloj sin pasar por el divisor
--		 RST =>reset,
--         vector_IN =>botonera,
--         vector_OUT=>botonera_convertida
--          	);

    inst_piso: convertidor_piso
        port map (
            clk => sys_clk,
            rst => reset,
            boton_seleccionado => Botonera,
            boton_seleccionado_convertido => botonera_convertida
		);

    inst_Decoder: Decoder
        port map (
      	    clk => sys_clk,
      	    PISO_OBJETIVO => S_Piso_Actual,
            led => Salida_display,
            Anodo => Salida_anodo
        );

end architecture Structural;
