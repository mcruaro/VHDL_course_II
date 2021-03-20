library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;

    signal num_valid_tb : std_logic;
    signal num_data_tb : std_logic_vector(7 downto 0);
    signal prim_out_tb : std_logic_vector(1 downto 0);

begin

    primo : entity work.primo
        port map(
            clock       => clock,
            reset       => reset,
            num_valid   => num_valid_tb,
            num_data    => num_data_tb,
            prim_out    => prim_out_tb
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
	clock     <= not clock after 5 ns;

    process is
    begin
        num_valid_tb <= '0';
        num_data_tb <= "00000000"; --36
        wait for 155 ns;

        num_valid_tb <= '1';
        num_data_tb <= "00010011"; --19
        wait for 10 ns;
        num_valid_tb <= '0';
        wait for 10 ns;

        wait until prim_out_tb = "10" or prim_out_tb = "11";
        report "Primeiro numero processado!";
        wait for 100 ns;

        num_valid_tb <= '1';
        num_data_tb <= "00100100"; --36
        wait for 10 ns;
        num_valid_tb <= '0';
        wait for 10 ns;

        wait until prim_out_tb = "10" or prim_out_tb = "11";
        report "Segundo numero processado!";
        wait for 50 ns;

        num_valid_tb <= '1';
        num_data_tb <= "10000011"; --131
        wait for 10 ns;
        num_valid_tb <= '0';
        wait for 10 ns;

        wait until prim_out_tb = "10" or prim_out_tb = "11";
        report "Terceiro numero processado!";
        report "Fim, sucesso!";
        wait;
    end process;



end architecture;