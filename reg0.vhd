library ieee; 
USE ieee.std_logic_1164.all;


entity reg0 IS

port(
	clk : in std_logic; 
	d : in std_logic_vector (9 downto 0); 
	q : out std_logic_vector (9 downto 0); 
	reset_n : in std_logic
	);
end reg0;

architecture reglogic of reg0 is 

begin

	process (clk, reset_n)
		begin
			if reset_n = '1' then 
				q <= "0000000000"; 
			elsif rising_edge(clk) then
				q <= d; 
			end if; 
	end process; 
	
end reglogic;