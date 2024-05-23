--=============================================================
--Ben Dobbins
--ES31/CS56
--This script is the SPI Receiver code for Lab 6, the voltmeter.
--Your name goes here: 
--=============================================================

--=============================================================
--Library Declarations
--=============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;			-- needed for arithmetic
use ieee.math_real.all;				-- needed for automatic register sizing


--=============================================================
--Entitity Declarations
--=============================================================
entity spi_receiver is
	generic(
		N_SHIFTS 				: integer);
	port(
	    --1 MHz serial clock
		clk_port				: in  std_logic;	
    	
    	--controller signals
		take_sample_port 		: in  std_logic;	
		spi_cs_port			    : out std_logic;
        
        --datapath signals
		spi_s_data_port		    : in  std_logic;	
		adc_data_port			: out std_logic_vector(11 downto 0));
end spi_receiver; 

--=============================================================
--Architecture + Component Declarations
--=============================================================
architecture Behavioral of spi_receiver is
--=============================================================
--Local Signal Declaration
--=============================================================
signal shift_enable		: std_logic := '0';
signal load_enable		: std_logic := '0';
signal shift_reg	    : std_logic_vector(11 downto 0) := (others => '0');
type states is (idle, skip0, shift, load);
signal cs, ns : states := idle;
signal count_en : std_logic := '0';

signal count : integer := 0;
begin
--=============================================================
--Controller:
--=============================================================
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--State Update:
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++		
stateupdate : process(clk_port) 
begin
if rising_edge(clk_port) then
	cs <= ns;
end if;
end process stateupdate;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Next State Logic:
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
nextstate : process(clk_port, cs,take_sample_port, count)
begin 
ns <= cs;
    case (cs) is 
    	when idle => if (take_sample_port = '1') then
    	               ns <= skip0;
                     end if;
                     
        when skip0 => if (count = 2) then
        				ns <= shift;
                      end if;
                      
 		when shift =>  if (count = 14) then
        				    ns <= load;
                        end if;
                        
        when load => ns <= idle;
        when others => ns <= idle;
        
        end case;
end process nextstate;

output : process(cs) 
begin
    spi_cs_port <= '1';
    shift_enable <= '0';
    load_enable <= '0';
    count_en <= '0';    
case (cs) is 
         
        when skip0 => count_en <= '1';
                      spi_cs_port <= '0';
                      
 		when shift => spi_cs_port <= '0';
        			  shift_enable <= '1';
        			  count_en <= '1';
        			 
        when load =>  load_enable <= '1';
                      
        when others => 
        end case;
end process output;
    



--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Timer Sub-routine:
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
counting : process(clk_port)
begin 
if rising_edge(clk_port) then
	if (count_en = '1') then
    	count <= count + 1;
    else
    	count <= 0;
    end if;
end if;
end process counting;

--=============================================================
--Datapath:
--=============================================================
shift_register: process(clk_port) 
begin
	if rising_edge(clk_port) then
		if shift_enable = '1' then shift_reg <= shift_reg(10 downto 0) & spi_s_data_port;
		end if;
		
		if load_enable = '1' then adc_data_port <= shift_reg;
		end if;
    end if;
end process;
end Behavioral; 


