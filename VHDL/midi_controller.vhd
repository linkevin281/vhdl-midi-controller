
--=============================================================================
--Library Declarations:
--=============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;


--=============================================================================
--Entity Declaration:
--=============================================================================
entity midi_controller is
        generic(
		BAUD_COUNT				: integer);
		port(
		clk_port			: in  std_logic;	--1 MHz serial clock
    	midi_port           : in  std_logic;    --midi signal (looking for 0 after 1 idle)
    	
		delete_port 	    : in  std_logic;	--datapath input signals
		store_port	        : in std_logic;
		note_on_port        : in std_logic;
		note_off_port       : in std_logic;
		
		add_port	       : out std_logic;     --signals to datapath
		update_port	       : out std_logic;
		reset_port	       : out std_logic;
		
		check_en_port	   : out std_logic;

		velshift_en_port   : out std_logic;
		valshift_en_port   : out std_logic;
		statshift_en_port  : out std_logic;
		TCbaud_port        : out std_logic);
end midi_controller;

--=============================================================================
--Architecture Type:
--=============================================================================
architecture behavioral_architecture of midi_controller is
--=============================================================================
--Signal Declarations: 
--=============================================================================

constant BAUD_PERIOD : integer := BAUD_COUNT;

type state_type is (idle, getstatus, getval, getvel, check, add, clear, waithalf, shift, reset, finished);

--states for low-level fsm
signal  subcs, subns : state_type := idle;

--states for high-level fsm
signal cs, ns   : state_type := reset;






-- Counter signals
signal Baud_Counter, bitcount : unsigned(4 downto 0) := (others => '0');
signal baud_en, count_en , rst_counts, prevTC: std_logic := '0'; 
signal  done, TC : std_logic := '0';




--=============================================================================
--Processes: 
--=============================================================================
begin
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Update the current states for both fsms (synchronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
stateUpdate: process(clk_port)
    begin
 		if rising_edge(clk_port) then
        	cs <= ns;
        	subcs <= subns;
        end if;
    end process stateUpdate;

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Next State Logic for high-level fsm (asynchronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
NextStateLogic: process(cs, delete_port, store_port, midi_port, done, note_on_port, note_off_port)
begin
	ns <= cs;
	case (cs) is
        	
			--awaiting the first midi signal (0 bit)
        	when reset => 	ns <= getstatus;
                           
            --loading in the note status, all 10 bits (with leading 0, end 1 for idle bit)
            when getstatus => if (done = '1' ) then
                                --make sure signals concern the note, not pitch bend, etc
                                --if some mysterious signal, go to reset state
                                if (note_on_port = '1' or note_off_port = '1') then
            					   ns <= getval;
            					else 
            					  ns <= reset;
            					end if;
                              end if;
                              
           
           
 			--load in the note value (which key is pressed)
            when getval => 	if (done = '1' ) then
            					ns <= getvel;
                            end if;
             
            --load in note velocity        	
            when getvel => 	if (done = '1') then
            					ns <= check;
                            end if;
                            
            --check for note status and well-formed message (await datapath signal)
            when check =>   if (store_port = '1') then
                                ns <= add;
                            elsif (delete_port = '1') then
                                ns <= clear;
                            else
                                 ns <= reset;
                            end if;
            --from add or clear go directly to idle                
            when add => 	ns <= reset;
            when clear => 	ns <= reset;                                        
           	when others => ns <= reset;           
        end case;

end process NextStateLogic; 


--high-level fsm control signals to datapath
output : process(cs) 
begin
        --defaults 
        add_port	        <= '0';
		update_port	        <= '0';
		reset_port	        <= '0';
		
		check_en_port	    <= '0';
		
       
		velshift_en_port    <= '0';
		valshift_en_port    <= '0';
		statshift_en_port   <= '0';  
		
case (cs) is 
        when reset =>       reset_port	<= '1';              
 		when getstatus =>   statshift_en_port   <= '1';
        when getval =>      valshift_en_port <= '1';     
        when getvel =>      velshift_en_port <= '1';                    
        when check =>       check_en_port <= '1';
                            
        
        
        --when add state, both update = 1 and add = 1 sent to datapath
        when add =>     add_port <= '1';
                        update_port <= '1';
        --when clear state (remove note) update = 1 and add = 0 to datapath
        when clear =>  update_port <= '1';
                      
        when others => 
        end case;
end process output;
    
    
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Next sub State Logic for low-level fsm (asynchronous):
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
NextSubStateLogic: process(TC, bitcount,midi_port, subcs)
begin    
	subns <= subcs;
	case (subcs) is
        	
			--awaiting the first midi signal (0 bit)
        	when idle => 	if (midi_port = '0') then
            					subns <= waithalf;
                            end if;
            --wait half baud period
            when waithalf => if (TC = '1') then
            					subns <= shift;
                              end if;             
 			--shift in the 9 bits, then finish
            when shift => 	if (bitcount = "01001") then
            					subns <= finished;
                            end if;   
            when finished => subns <= idle;
                                               
           	when others => subns <= idle;           
        end case;

end process NextSubStateLogic; 

substateoutput : process(subcs) 
begin
		--defaults
		count_en	        <= '0';
		baud_en             <= '0';
		done                <= '0';
		rst_counts          <= '0';

		
case (subcs) is 
            --by default, bitcount is at 0   
 		    when idle =>  rst_counts <= '1';	
 		                 
            --wait half baud period, enable the baud counter
            when waithalf =>  baud_en <= '1'; 
                       
 			--enable the bit counter only after the 1/2 baud period delay
            when shift => 	 count_en <= '1';  
                             baud_en <= '1'; 
            
            when finished => done <= '1';                  
           	when others =>  
        end case;
end process substateoutput;
 
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--Timer Sub-routine:
--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
counting : process(clk_port)
begin
if rising_edge(clk_port) then
    --Baud Counter
    TC <= '0';
    TCbaud_port <= '0';
    --baud counter, TC goes high every half baud period
    if (baud_en = '1') then
        Baud_Counter <= Baud_Counter + 1;
        if (Baud_Counter = (BAUD_PERIOD/2)-1) then
            TC <= '1';
            Baud_Counter <= (others => '0');
        end if;
    else
        Baud_Counter <= (others => '0');
    end if;
 
    --delay control (for bit counter)
    if (done = '1') then
        prevTC <= '0';
    elsif (TC = '1') then
        prevTc <= not(prevTC);
    end if;
    
    --TCbaud_port goes high with TC, then every other TC
    --bitcount increments with baud period
    if  (prevTC = '0'  and TC = '1') then
        TCbaud_port <= '1';
        if (count_en = '1') then
            bitcount <= bitcount + 1;
        else
            bitcount <= (others => '0');
        end if;
    end if;
    
end if;
end process counting;
 
end behavioral_architecture;


