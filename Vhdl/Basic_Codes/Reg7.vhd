library ieee;
use ieee.std_logic_1164.all; 

entity Reg7 is
  generic ( N : integer := 7
          );
         
  port ( d : in STD_LOGIC_VECTOR (N-1 downto 0);
         clk, rau, raz : in std_logic;
         q : out  STD_LOGIC_VECTOR (N-1 downto 0) 
         );
end entity Reg7;

architecture comport of Reg7 is
begin
  stockage : process(d,clk) is
  begin 
   if (rau = '1') then
     q <= (others =>'1');
   elsif (raz = '1') then
     q <= (others =>'0');
   elsif (clk='1' and clk'event) then
     q <= d;
  end if;
  end process stockage;
end architecture comport;
