library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity primo is
    port (
        clock: in std_logic;
        reset: in std_logic;
        --Entrada
        num_valid : in std_logic;
        num_data  : in std_logic_vector(7 downto 0);

        --Saida
        prim_out  : out std_logic_vector(1 downto 0)
    );
end primo;

architecture primo of primo is
    type fsm_states is (ESPERA, TRABALHANDO, PRIMO, NAO_PRIMO); 
    signal FSM : fsm_states;
    signal cont     : std_logic_vector(7 downto 0); --8bits
    signal numero   : std_logic_vector(7 downto 0); --8bits

begin

    --Logica combinacional
    prim_out <= "00" when FSM = ESPERA else
                "01" when FSM = TRABALHANDO else
                "10" when FSM = PRIMO else 
                "11";
    
    process(clock, reset)               --Inicio da logica sequencial
    begin
        if reset = '1' then
            FSM <= ESPERA;
            cont <= "00000010";
        elsif rising_edge(clock) then
            case FSM is                 --Implementacao dos estados da maquina de estados
                when ESPERA =>

                    if num_valid = '1' then
                        numero <= num_data;
                        FSM <= TRABALHANDO;
                        cont <= "00000010"; --numero 2
                    end if;

                when TRABALHANDO =>

                    if cont = numero then
                        FSM <= PRIMO; --eh primo ou nao, apenas encerrar o teste
                    elsif unsigned(numero) mod unsigned(cont) = 0 then
                        FSM <= NAO_PRIMO; --nao eh primo
                    else
                        cont  <= cont + 1;
                    end if;

                when PRIMO =>
                    FSM <= ESPERA;
                when NAO_PRIMO =>
                    FSM <= ESPERA;
            end case;

        end if;
    end process;

end architecture; 