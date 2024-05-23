--=============================================================
--Ben Dobbins
--CS56/ENGS31 21S
--This script is the testbench code for Lab 4, the voltmeter.
--=============================================================
--=============================================================
--Library Declarations
--=============================================================
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

 --=============================================================
--Testbench Entity Declaration
--=============================================================
ENTITY spi_transmitter_tb IS
END spi_transmitter_tb;

--=============================================================
--Testbench declarations
--=============================================================
ARCHITECTURE testbench OF spi_transmitter_tb IS 
component system_clock_generator is
    generic (CLOCK_DIVIDER_RATIO : integer);
	port (
        input_clk_port		: in std_logic;
        system_clk_port	    : out std_logic;
		fwd_clk_port		: out std_logic);
end component;

component tick_generator is
	generic (FREQUENCY_DIVIDER_RATIO : integer);
	port (
		system_clk_port   : in  std_logic;
		tick_port		  : out std_logic);
end component;

component midi_spi_transmitter is
	generic(
		N_SHIFTS 			: integer);
	port(
		clk_port			: in  std_logic;	--1 MHz serial clock
    	 
		new_data_port 		: in  std_logic;	
		data_in_port   	    : in unsigned(15 downto 0); 
		spi_cs_port		    : out std_logic;
		s_clk_port		    : out std_logic;
		s_data_port	    	: out std_logic);	
end component; 

--=============================================================
--Local Signal Declaration
--=============================================================
signal clk_ext          : std_logic := '0';
signal system_clk       : std_logic := '0';
signal new_data_signal : std_logic := '0';
signal data_in_signal : unsigned(15 downto 0) := (others => '0');
signal spi_cs_signal : std_logic := '1';
signal s_clk_signal : std_logic := '0';
signal s_data_signal : std_logic := '0';

-- Clock period definitions
constant clk_period     : time := 10ns;		-- 100 MHz clock
constant sys_clk_period     : time := 1000ns;		-- 1 MHz clock


-- Data definitions
constant TxData         : std_logic_vector(14 downto 0) := "000" & x"abc";
signal bit_count        : integer := 14;

BEGIN 

-- Instantiate the Unit Under Test (UUT) 
uut: midi_spi_transmitter
generic map(
	N_SHIFTS => 15)
port map(
	clk_port => system_clk,
	new_data_port => new_data_signal,
	data_in_port => data_in_signal,
	spi_cs_port => spi_cs_signal,
	s_clk_port => s_clk_signal,
	s_data_port => s_data_signal);
	
 clocking: midi_clock_generation
 generic map(
 	CLOCK_DIVIDER_RATIO => 100)
 port map(
 	input_clk_port 		=> clk_ext,
 	system_clk_port 	=> system_clk,
 	fwd_clk_port		=> spi_sclk);

 tick_generation: tick_generator
 generic map(
 	FREQUENCY_DIVIDER_RATIO => 100)
 port map( 
 	system_clk_port 	=> system_clk,
 	tick_port			=> take_sample);	
--=============================================================
--Timing:
--=============================================================		      
-- Clock process definitions
clk_process :process
begin
    clk_ext <= '0';
    wait for clk_period/2;
    clk_ext <= '1';
    wait for clk_period/2;
end process;

--=============================================================
--Stimulus Process:
--=============================================================		
stim_proc: process(spi_sclk)
begin
--	data_in_signal <= "1010101101010101";
--	new_data_signal <= '1';
--	wait for sys_clk_period;
--	new_data_signal <= '0';
--	wait for sys_clk_period*15;
	
end process;
END;

