
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
entity midi_spi_transmitter is
	generic(
		TOTAL				: integer);
	port(
	    --1 MHz serial clock
		clk_port				  : in  std_logic;	
    	
    	--take data signal monopulse from math
		new_data_port 		      : in  std_logic;	
		--parallel data from math
		dac_data_port			  : in std_logic_vector(15 downto 0);
		
		--to digital-to-analog converter
		spi_cs_port			      : out std_logic;
		data_out                  : out std_logic);
end midi_spi_transmitter; 




--=============================================================
--Architecture + Component Declarations
--=============================================================

architecture Behavioral of midi_spi_transmitter is
--=============================================================
--Local Signal Declaration
--=============================================================
signal load_en, shift_en, count_en : std_logic := '0';

--the input parallel data being shifted
signal shift_reg: signed(15 downto 0) := (others => '0');


type states is (idle, skip0, shift, load);
signal cs, ns : states := idle;

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
nextstate : process(clk_port,cs,count,new_data_port)
begin 
ns <= cs;
    case (cs) is 
        --await new data
        when idle => 
    	    if (new_data_port = '1') then
                ns <= load;
            end if;
         --load parallel data into shift reg
         when load =>  
        	   ns <= shift;
       --shift until correct number of bits
        when shift =>  
 		    if (count = TOTAL) then
        	   ns <= idle;
            end if;
        when others => ns <= idle;
        
        end case;
end process nextstate;

output : process(cs) 
begin
    --defaults
    spi_cs_port <= '1';
    shift_en <= '0';
    load_en <= '0';
    count_en <= '0';   
     
    case (cs) is 
            when idle =>
                
            when load =>
                load_en <= '1';
            --start counting, shifting
            --set spi_cs_port low for the dac converter    
            when shift =>
                count_en <= '1';
                shift_en <= '1';
                spi_cs_port <= '0';
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
--shift register:
--=============================================================
shift_register: process(clk_port) 
begin
	if rising_edge(clk_port) then
	   if (load_en = '1') then
	       shift_reg <= signed(dac_data_port);
	   elsif (shift_en = '1') then
	       --shift left, msb out
           shift_reg <= shift_reg(14 downto 0) & '0'; 
       end if;
    end if;
end process shift_register;

data_out <= shift_reg(15);
end Behavioral; 


