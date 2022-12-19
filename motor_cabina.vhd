library ieee;
use ieee.std_logic_1164.all;

entity MOTOR_CABINA is
    port (
        RESET_N          : in  std_logic;
        CLK              : in  std_logic;
        CE               : in  std_logic;
        UP               : in  std_logic;
        DN               : in  std_logic;
        FLOOR            : out std_logic_vector(3 downto 0);
        LUZ_EMERGENCIA_M : out std_logic
    );   
end MOTOR_CABINA;

architecture BEHAVIORAL of MOTOR_CABINA is
  signal floor_i : std_logic_vector(FLOOR'range);
begin
    process(CLK, RESET_N)
    begin
        if RESET_N = '0' then
            floor_i <= "0001";
            LUZ_EMERGENCIA_M <= '0'; --la accion de subir ni de bajar se no se ejecuta
        elsif rising_edge(CLK) then
          if CE = '1' then
              if UP = '1' and floor_i /= "1000" then
                  floor_i <= floor_i(floor_i'high - 1 downto 0) & '0';
              elsif DN = '1' and floor_i /= "0001" then
                  floor_i <= '0' & floor_i(floor_i'high downto 1);
              end if;
          end if;
      end if;
  end process;     
end BEHAVIORAL;
