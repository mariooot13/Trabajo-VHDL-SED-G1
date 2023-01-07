library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM is
    port (
        RESET_N     : in  std_logic;
        CLK         : in  std_logic;
        BUTTONS     : in  std_logic_vector(3 downto 0);
        FLOOR       : in  std_logic_vector(3 downto 0);
        FULL_OPEN   : in  std_logic;
        FULL_CLOSED : in  std_logic;
        OBSTACLE    : in  std_logic;
        UP          : out std_logic;
        DN          : out std_logic;
        DO_OPEN     : out std_logic;
        DO_CLOSE    : out std_logic
    );
end FSM;

architecture BEHAVIORAL of FSM is

    type state_t IS (S0_INITIAL, S1_CLOSING, S2_GOUP, S3_GODN, S4_OPENING);
    signal nxt_state, state       : state_t;
    signal nxt_btn_memo, btn_memo : std_logic_vector(3 downto 0);

begin

    state_reg: process (CLK, RESET_N)
    begin
        if RESET_N = '0' then
            state    <= S0_INITIAL;
            btn_memo <= (others => '0');
        elsif rising_edge(CLK) then
            state    <= nxt_state;
            btn_memo <= nxt_btn_memo;
        end if;
    end process;

    nxt_state_decoder: process (BUTTONS, FLOOR, FULL_OPEN, FULL_CLOSED, btn_memo, state)
    begin
        nxt_state    <= state;
        nxt_btn_memo <= btn_memo;
        case state is
            when S0_INITIAL =>
                if BUTTONS /= "0000" and BUTTONS /= FLOOR then
                    nxt_state <= S1_CLOSING;
                    nxt_btn_memo <= BUTTONS;
                end if;

            when S1_CLOSING =>
                if OBSTACLE = '1' then
                nxt_state <= S4_OPENING; --OBSTACLE DOOR
                elsif FULL_CLOSED = '1' then
                    if btn_memo > FLOOR then
                        nxt_state <= S2_GOUP;
                    else
                        nxt_state <= S3_GODN;
                    end if;
                end if;

            when S2_GOUP | S3_GODN =>
                if btn_memo = FLOOR then
                    nxt_state <= S4_OPENING;
                end if;

            when S4_OPENING =>
                if FULL_OPEN = '1'  then
                    nxt_state <= S0_INITIAL;
                end if;

            when others =>
                nxt_state <= S0_INITIAL;
        end case;
    end process;
  
    salidas: process(state)
    begin
        UP       <= '0';
        DN       <= '0';
        DO_OPEN  <= '0';
        DO_CLOSE <= '0';
        case state is
            when S0_INITIAL =>
                UP       <= '0';
                DN       <= '0';
                DO_OPEN  <= '0';
                DO_CLOSE <= '0';
    
            when S1_CLOSING => 
                UP       <= '0';
                DN       <= '0';
                DO_OPEN  <= '0';
                DO_CLOSE <= '1';
    
            when S2_GOUP =>
                UP       <= '1';
                DN       <= '0';
                DO_OPEN  <= '0';
                DO_CLOSE <= '0';
    
            when S3_GODN =>
                UP       <= '0';
                DN       <= '1';
                DO_OPEN  <= '0';
                DO_CLOSE <= '0';
    
            when S4_OPENING =>
                UP       <= '0';
                DN       <= '0';
                DO_OPEN  <= '1';
                DO_CLOSE <= '0';
    
            when others =>
                UP       <= '0';
                DN       <= '0';
                DO_OPEN  <= '0';
                DO_CLOSE <= '0';
        end case;
    end process;

end BEHAVIORAL;
