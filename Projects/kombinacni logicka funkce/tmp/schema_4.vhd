library IEEE;
use IEEE.std_logic_1164.all;

library xil_defaultlib;
use xil_defaultlib.all;

entity schema_4_vhdl is
   port (
      a :  in  std_logic;
      b :  in  std_logic;
      c :  in  std_logic;
      d :  in  std_logic;
      f :  out std_logic
   );
end entity schema_4_vhdl;

architecture Behavioral of schema_4_vhdl is


      signal a_1     :    std_logic;
      signal and_0_O :    std_logic;
      signal and_1_O :    std_logic;
      signal and_2_O :    std_logic;
      signal b_1     :    std_logic;
      signal c_1     :    std_logic;
      signal d_1     :    std_logic;
      signal or_0_O  :    std_logic;
begin
	a_1 <= a;
	b_1 <= b;
	c_1 <= c;
	d_1 <= d;
	f <= or_0_O;


	-- and_0
	and_0_O <= not(a_1) and not(c_1);

	-- and_1
	and_1_O <= not(a_1) and d_1;

	-- and_2
	and_2_O <= a_1 and b_1 and not(d_1);

	-- or_0
	or_0_O <= and_0_O or and_1_O or and_2_O;

end Behavioral;
