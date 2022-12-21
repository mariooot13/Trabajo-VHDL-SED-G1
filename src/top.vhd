library ieee;
use ieee.std_logic_1164.all;

use work.STROBE_GENERATION.all;

entity TOP is
    generic (
        CLKIN_FREQ  : integer := 100_000_000; -- Nexys4 DDR 100 MHz
        SYSCLK_FREQ : integer :=       1_000  -- System clock frequency 1 kHz
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
        LED17_R    : out std_logic;
        AN         : out std_logic_vector( 7 downto 0)
    );
end TOP;

architecture STRUCTURAL of TOP is

    component DivisorFrecuencia is
        generic (
            FREQ_IN  : integer;
            FREQ_OUT : integer
        );
        port (
            CLK_IN  : in  std_logic; 
            RESET_N : in  std_logic; 
            CLK_OUT : out std_logic
     );
    end component;

    component FSM 
        port(
            RESET_N     : in  std_logic;
            CLK         : in  std_logic;
            BUTTONS     : in  std_logic_vector(3 downto 0);
            FLOOR       : in  std_logic_vector(3 downto 0);
            FULL_OPEN   : in  std_logic;
            FULL_CLOSED : in  std_logic;
            UP          : out std_logic;
            DN          : out std_logic;
            DO_OPEN     : out std_logic;
            DO_CLOSE    : out std_logic
        );
    end component;

    component CABINA is
        port (
            RESET_N          : in  std_logic;
            CLK              : in  std_logic;
            CE_CABIN         : in  std_logic;
            UP               : in  std_logic;
            DN               : in  std_logic;
            FLOOR            : out std_logic_vector(3 downto 0);
            LUZ_EMER_MOTOR   : out std_logic;
            CE_DOOR          : in  std_logic;
            DO_OPEN          : in  std_logic;
            DO_CLOSE         : in  std_logic;
            FULL_OPEN        : out std_logic;
            FULL_CLOSED      : out std_logic;
            DOOR_POS         : out std_logic_vector(7 downto 0);
            LUZ_EMER_PUERTAS : out std_logic
        );
    end component;

--    component antirrebote_vector
--        port(
--            CLK        : in  STD_LOGIC;
--			  RST        : in  STD_LOGIC;
--            vector_IN  : in  STD_LOGIC_VECTOR(1 downto 0);
--            vector_OUT : out STD_LOGIC_VECTOR(1 downto 0)
--        );
--    end component;

    -- Port aliases
    alias BUTTONS          : std_logic_vector(3 downto 0) is SW ( 3 downto  0);
    alias DOOR_POS         : std_logic_vector(7 downto 0) is LED( 7 downto  0);
    alias FLOOR            : std_logic_vector(3 downto 0) is LED(15 downto 12);
    alias LUZ_EMER_MOTOR   : std_logic is LED16_B;
    alias UP_LED           : std_logic is LED16_G;
    alias DN_LED           : std_logic is LED16_R;
    alias LUZ_EMER_PUERTAS : std_logic is LED17_B;
    alias OPEN_LED         : std_logic is LED17_G;
    alias CLOSE_LED        : std_logic is LED17_R;

    -- Internal signals
    signal sys_clk         : std_logic;
    signal strobes         : std_logic_vector(1 downto 0);

    signal up              : std_logic;
    signal dn              : std_logic;
    signal current_floor   : std_logic_vector(3 downto 0);
    signal do_open         : std_logic;
    signal do_close        : std_logic;
    signal full_open       : std_logic;
    signal full_closed     : std_logic;

    signal fltrd_buttons   : std_logic_vector(BUTTONS'range);

begin

    -- Visual feedback
    FLOOR     <= current_floor;
    UP_LED    <= up;
    DN_LED    <= dn;
    OPEN_LED  <= do_open;
    CLOSE_LED <= do_close;

    LED(11 downto 8) <= (others => '0');  -- Unused by now
    AN <= (others => '1');  -- Prevent digit dim glowing

    prescaler0: DivisorFrecuencia
        generic map (
            FREQ_IN  => CLKIN_FREQ,
            FREQ_OUT => SYSCLK_FREQ
        )
        port map (
            CLK_IN   => CLK100MHZ, 
            RESET_N  => CPU_RESETN, 
            CLK_OUT  => sys_clk
     );

    strobe_gen0: STROBE_GENERATOR
        generic map (
            MODULI  => (250, 1000)  -- 4Hz, 1Hz
        )
        port map ( 
            RST_N   => CPU_RESETN,
            CLK     => sys_clk,
            STROBES => strobes
      );

    -- TODO: synchronize & filter buttons & edge detection
    fltrd_buttons <= BUTTONS;

    fsm0: FSM
        port map (
            RESET_N     => CPU_RESETN,
            CLK         => sys_clk,
            BUTTONS     => fltrd_buttons,
            UP          => up,
            DN          => dn,
            FLOOR       => current_floor,
            DO_OPEN     => do_open,
            DO_CLOSE    => do_close,
            FULL_OPEN   => full_open,
            FULL_CLOSED => full_closed
        );

    cabin0: CABINA
        port map (
            RESET_N          => CPU_RESETN,
            CLK              => sys_clk,
            CE_CABIN         => strobes(1),  -- 1Hz
            UP               => up,
            DN               => dn,
            FLOOR            => current_floor,
            LUZ_EMER_MOTOR   => LUZ_EMER_MOTOR,
            CE_DOOR          => strobes(0),  -- 4Hz
            DO_OPEN          => do_open,
            DO_CLOSE         => do_close,
            FULL_OPEN        => full_open,
            FULL_CLOSED      => full_closed,
            DOOR_POS         => DOOR_POS,
            LUZ_EMER_PUERTAS => LUZ_EMER_PUERTAS
        );

end architecture STRUCTURAL;
