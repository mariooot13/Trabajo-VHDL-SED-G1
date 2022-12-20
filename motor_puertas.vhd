library ieee;
use ieee.std_logic_1164.all;

entity MOTOR_PUERTAS is
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
end MOTOR_PUERTAS;

architecture BEHAVIORAL of MOTOR_PUERTAS is
    type door_frame_vector is array (natural range <>) of std_logic_vector(DOOR_POS'range);
    constant door_frames : door_frame_vector := ("00000000", "10000001", "11000011", "11100111", "11111111");
    subtype pos_t is door_frames'range;
    signal pos : pos_t;
begin
    process(CLK, RESET_N)
    begin
        if RESET_N = '0' then
            pos <= pos_t'low; -- Door initial state: open
        elsif rising_edge(CLK) then
            if CE = '1' then
                if DO_OPEN = '1' and pos > pos_t'low then
                    pos <= pos_t'pred(pos);
                elsif DO_CLOSE = '1' and pos < pos_t'high then
                    pos <= pos_t'succ(pos);
                end if;
            end if;
        end if;
    end process;

    LUZ_EMERGENCIA_P <= '0';
    FULL_OPEN   <= '1' when pos = pos_t'low else '0';
    FULL_CLOSED <= '1' when pos = pos_t'high else '0';
    DOOR_POS    <= door_frames(pos);
end BEHAVIORAL;
