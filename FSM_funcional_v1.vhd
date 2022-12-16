ibrary IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


entity FSM is
    Port ( Clk : in STD_LOGIC;
           Start: in std_logic; --como un enable
           Reset : in STD_LOGIC;
           Piso_Actual: in std_logic_vector(1 downto 0);
           Feedback_puerta : in std_logic; --1 abierto, 0 cerrado
           Botonera: in std_logic_vector(1 downto 0); -- viene del antirrebote convertida
           Aviso_motor_movimiento: out std_logic_vector(1 downto 0); --00 parado, 01 bajando, 10 subiendo, 11 nada
           Aviso_motor_puerta:out std_logic; --1 que se abran,0 que se cierren
           --Piso_objetivo: out std_logic_vector -- va a ir a un decodificador o lo que sea para que nos imprima como camvbia de piso, se le va asignar luego memoria boton.
           --semueveono : out std_logic;
           Aviso_Inicio:out std_logic ;
           --Piso_objetivo: out std_logic_vector -- va a ir a un decodificador o lo que sea para que nos imprima como camvbia de piso, se le va asignar luego memoria boton.
           --semueveono : out std_logic;
           Aviso_Parado: out std_logic;
           Aviso_Cerrar_puertas: out std_logic;
           Aviso_Movimiento: out std_logic;
           Aviso_Abrir:out std_logic
           
           );
end FSM;

architecture Behavioral of FSM is
    type estado IS (inicial, parado,cerrar_puertas,movimiento,abrir_puertas);
    signal state : estado := inicial;
    signal next_state: estado;
    signal memoria_boton: std_logic_vector(1 downto 0);
begin
state_reg: process (Clk,Reset)
  begin
    if Reset <='0' then
        state<=inicial;
     elsif rising_edge (clk) then 
        state<=next_state ;
        end if;
     end process;
  
nxt_state_decoder: process (state,start,Feedback_puerta, Piso_Actual, Botonera)
  begin
  next_state <=state;
    case state is
     when inicial =>
        if start='1' then
          next_state<=parado ;
          end if;
      when parado =>
        if Piso_Actual /= memoria_boton and Feedback_puerta ='1'  then
          next_state<=cerrar_puertas  ;
          end if;
      when cerrar_puertas  =>
       
        if Feedback_puerta='0' and Piso_Actual /= memoria_boton then
          next_state<=movimiento ;
          end if;    
      when movimiento   =>
     
        if Piso_Actual= memoria_boton  then
          next_state<=abrir_puertas ;
          end if;   
       when abrir_puertas    =>
      
        if Feedback_puerta='1'and Piso_Actual = memoria_boton  then
          next_state<=parado ;
          end if; 
      when others =>
      next_state <= inicial;
    end case;
  end process;
  
salidas: process(state)
begin
    case next_state  is
    when inicial=>
    Aviso_inicio<='1';
     Aviso_Parado<='0';
     Aviso_Cerrar_puertas<='0';
     Aviso_Movimiento<='0';
     Aviso_Abrir<='0';
     
     when parado => 
     --led que se encienden por lo abrir_puertas
     
     Aviso_inicio<='0';
     Aviso_Parado<='1';
        Aviso_Cerrar_puertas<='0';
           Aviso_Movimiento<='0';
           Aviso_Abrir<='0';
           
     ----------------
        Aviso_motor_puerta<='1';
        Aviso_motor_movimiento<="00";
     when cerrar_puertas=>
     -----------
     Aviso_inicio<='0';
     Aviso_Parado<='0';
     Aviso_Cerrar_puertas<='1';
     Aviso_Movimiento<='0';
      Aviso_Abrir<='0';
      ----------------
         Aviso_motor_puerta<='0';
         Aviso_motor_movimiento<="00";
      when movimiento=>
       
       if(memoria_boton > Piso_Actual) then
       ---------------
        Aviso_inicio<='0';
     Aviso_Parado<='0';
        Aviso_Cerrar_puertas<='0';
           Aviso_Movimiento<='1';
           Aviso_Abrir<='0';
           --------------
            Aviso_motor_puerta<='0';
            Aviso_motor_movimiento<="10";
            --semueveono <= '1';--que subas
        else
        ----------------
         Aviso_inicio<='0';
         Aviso_Parado<='0';
          Aviso_Cerrar_puertas<='0';
           Aviso_Movimiento<='1';
           Aviso_Abrir<='0';
           --------------
            Aviso_motor_puerta<='0';
            Aviso_motor_movimiento<="01";
            --semueveono <= '1';-- que bajes
        end if;
        
       when abrir_puertas =>
       ---------------
        Aviso_inicio<='0';
     Aviso_Parado<='0';
        Aviso_Cerrar_puertas<='0';
           Aviso_Movimiento<='0';
           Aviso_Abrir<='1';
           ------------
            Aviso_motor_puerta<='1';
            Aviso_motor_movimiento<="00";
      when others =>
           Aviso_motor_movimiento<="11";
     end case;
  end process;
   
 
memoria: process (reset,botonera,clk)-- clk dudoso
begin
    if Reset='0' then
        memoria_boton<="00";
    elsif rising_edge(Clk) then 
        if (Botonera <="00") then
            memoria_boton<="00";
        elsif(Botonera <="01") then
            memoria_boton<="01";
        elsif(Botonera <="10") then
            memoria_boton<="10";
         elsif(Botonera <="11") then
            memoria_boton<="11";
       end if;
    end if;

    end process;
end Behavioral;
