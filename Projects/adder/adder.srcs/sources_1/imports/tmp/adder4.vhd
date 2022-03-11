library IEEE;
use IEEE.std_logic_1164.all;

library xil_defaultlib;
use xil_defaultlib.all;

entity adder4_vhdl is
   port (
      A0   :  in  std_logic;
      A1   :  in  std_logic;
      A2   :  in  std_logic;
      A3   :  in  std_logic;
      B0   :  in  std_logic;
      B1   :  in  std_logic;
      B2   :  in  std_logic;
      B3   :  in  std_logic;
      Cin  :  in  std_logic;
      Cout :  out std_logic;
      S0   :  out std_logic;
      S1   :  out std_logic;
      S2   :  out std_logic;
      S3   :  out std_logic
   );
end entity adder4_vhdl;

architecture Behavioral of adder4_vhdl is
	component adder_vhdl
		port (
			A    :  in  std_logic;
			B    :  in  std_logic;
			Cin  :  in  std_logic;
			Cout :  out std_logic;
			S    :  out std_logic
		);
	end component;



      signal A0_1              :    std_logic;     
      signal A1_1              :    std_logic;     
      signal A2_1              :    std_logic;     
      signal A3_1              :    std_logic;     
      signal adder_vhdl_0_Cout :    std_logic;     
      signal adder_vhdl_0_S    :    std_logic;     
      signal adder_vhdl_1_Cout :    std_logic;     
      signal adder_vhdl_1_S    :    std_logic;     
      signal adder_vhdl_2_Cout :    std_logic;     
      signal adder_vhdl_2_S    :    std_logic;     
      signal adder_vhdl_3_Cout :    std_logic;     
      signal adder_vhdl_3_S    :    std_logic;     
      signal B0_1              :    std_logic;     
      signal B1_1              :    std_logic;     
      signal B2_1              :    std_logic;     
      signal B3_1              :    std_logic;     
      signal Cin_1             :    std_logic;     
begin
	A0_1 <= A0;
	A1_1 <= A1;
	A2_1 <= A2;
	A3_1 <= A3;
	B0_1 <= B0;
	B1_1 <= B1;
	B2_1 <= B2;
	B3_1 <= B3;
	Cin_1 <= Cin;
	Cout <= adder_vhdl_3_Cout;
	S0 <= adder_vhdl_0_S;
	S1 <= adder_vhdl_1_S;
	S2 <= adder_vhdl_2_S;
	S3 <= adder_vhdl_3_S;


	-- adder_vhdl_0
	inst_adder_vhdl_0 : adder_vhdl
		port map (
			A    =>  A0_1,
			B    =>  B0_1,
			Cin  =>  Cin_1,
			Cout =>  adder_vhdl_0_Cout,
			S    =>  adder_vhdl_0_S
		);

	-- adder_vhdl_1
	inst_adder_vhdl_1 : adder_vhdl
		port map (
			A    =>  A1_1,
			B    =>  B1_1,
			Cin  =>  adder_vhdl_0_Cout,
			Cout =>  adder_vhdl_1_Cout,
			S    =>  adder_vhdl_1_S
		);

	-- adder_vhdl_2
	inst_adder_vhdl_2 : adder_vhdl
		port map (
			A    =>  A2_1,
			B    =>  B2_1,
			Cin  =>  adder_vhdl_1_Cout,
			Cout =>  adder_vhdl_2_Cout,
			S    =>  adder_vhdl_2_S
		);

	-- adder_vhdl_3
	inst_adder_vhdl_3 : adder_vhdl
		port map (
			A    =>  A3_1,
			B    =>  B3_1,
			Cin  =>  adder_vhdl_2_Cout,
			Cout =>  adder_vhdl_3_Cout,
			S    =>  adder_vhdl_3_S
		);

end Behavioral;
