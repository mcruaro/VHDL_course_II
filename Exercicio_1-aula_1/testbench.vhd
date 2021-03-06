library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench of testbench is

    signal clock : std_logic := '0';
    signal reset : std_logic;

    signal P_tb : std_logic;
    signal R_tb : std_logic;

begin

    my_exe : entity work.exe_1
        port map(
            clock => clock,
            reset => reset,
            P     => P_tb,
            R     => R_tb
        );

    reset     <= '1', '0' after 100 ns;
	-- 100 MHz
	clock     <= not clock after 5 ns;

    process is
    begin
        P_tb <= '0';
        wait for 155 ns;
        P_tb <= '1';
        wait;
    end process;

end architecture;

