library ieee;
use ieee.std_logic_1164.all;

entity exe_1 is
    port (
        clock: in std_logic;
        reset: in std_logic;
        --Entrada
        P : in std_logic;
        --Saida
        R : out std_logic
    );
end exe_1;

architecture exe_1 of exe_1 is
    type fsm_states is (A, B, C, D); 
    signal FSM : fsm_states;

    begin

        --R <= '0' when FSM = A else
        --     '0' when FSM = B else
        --     '0' when FSM = C else
        --     '1' when FSM = D;
        
        R <= '1' when FSM = D else '0';

        process(clock, reset) 
        begin
            if reset = '1' then
                FSM <= A;
                --R <= '0';
            elsif rising_edge(clock) then
                case FSM is
                    when A =>
                        --R <= '0';
                        if P = '1' then
                            FSM <= B;
                        end if;
                    when B =>
                        --R <= '0';
                        if P = '1' then
                            FSM <= C;
                        end if;
                    when C =>
                    
                        if P = '1' then
                            FSM <= D;
                            --R <= '1';
                        end if;
                    when D =>
                        --R <= '0';
                        if P = '1' then
                            FSM <= B;
                        else
                            FSM <= A;
                        end if;
                end case;
            end if;
        end process;
end architecture; 