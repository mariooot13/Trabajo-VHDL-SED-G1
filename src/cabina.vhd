library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CABINA is
    port (
        -- Common I/O
        RESET_N          : in  std_logic;
        CLK              : in  std_logic;

        -- Cabin motor I/O
        CE_CABIN         : in  std_logic;
        UP               : in  std_logic;
        DN               : in  std_logic;
        FLOOR            : out std_logic_vector(3 downto 0);
        LUZ_EMER_MOTOR   : out std_logic;

        -- Door motor I/O
        CE_DOOR          : in  std_logic;
        DO_OPEN          : in  std_logic;
        DO_CLOSE         : in  std_logic;
        FULL_OPEN        : out std_logic;
        FULL_CLOSED      : out std_logic;
        DOOR_POS         : out std_logic_vector(7 downto 0);
        LUZ_EMER_PUERTAS : out std_logic
    );
end CABINA;

architecture STRUCTURAL of CABINA is
   
    component MOTOR_CABINA is
        port (
            RESET_N          : in  std_logic;
            CLK              : in  std_logic;
            CE               : in  std_logic;
            UP               : in  std_logic;
            DN               : in  std_logic;
            FLOOR            : out std_logic_vector(3 downto 0);
            LUZ_EMERGENCIA_M : out std_logic
        );   
    end component;

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

begin

    cabin_motor0: MOTOR_CABINA
        port map (
            RESET_N          => RESET_N,
            CLK              => CLK,
            CE               => CE_CABIN,
            UP               => UP,
            DN               => DN,
            FLOOR            => FLOOR,
            LUZ_EMERGENCIA_M => LUZ_EMER_MOTOR
        );

    door_motor0: MOTOR_PUERTAS
        port map ( 
            RESET_N          => RESET_N,
            CLK              => CLK,
            CE               => CE_DOOR,
            DO_OPEN          => DO_OPEN,
            DO_CLOSE         => DO_CLOSE,
            FULL_OPEN        => FULL_OPEN,
            FULL_CLOSED      => FULL_CLOSED,
            DOOR_POS         => DOOR_POS,
            LUZ_EMERGENCIA_P => LUZ_EMER_PUERTAS
        );

end architecture STRUCTURAL;
