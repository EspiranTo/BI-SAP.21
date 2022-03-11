library IEEE;
use IEEE.std_logic_1164.all;

library xil_defaultlib;
use xil_defaultlib.all;

entity schema_vhdl is
   port (
      A     :  in  std_logic;
      B     :  in  std_logic;
      C     :  in  std_logic;
      D     :  in  std_logic;
      AN0   :  out std_logic;
      AN1   :  out std_logic;
      AN2   :  out std_logic;
      AN3   :  out std_logic;
      f_a_0 :  out std_logic;
      f_b_0 :  out std_logic;
      f_c_0 :  out std_logic;
      f_d_0 :  out std_logic;
      f_e_0 :  out std_logic;
      f_f_0 :  out std_logic;
      f_g_0 :  out std_logic
   );
end entity schema_vhdl;

architecture Behavioral of schema_vhdl is
	component design1
		port (
			a   :  in  std_logic;
			b   :  in  std_logic;
			c   :  in  std_logic;
			d   :  in  std_logic;
			f_a :  out std_logic
		);
	end component;

	component design2
		port (
			a   :  in  std_logic;
			b   :  in  std_logic;
			c   :  in  std_logic;
			d   :  in  std_logic;
			f_b :  out std_logic
		);
	end component;

	component design3
		port (
			a   :  in  std_logic;
			b   :  in  std_logic;
			c   :  in  std_logic;
			d   :  in  std_logic;
			f_c :  out std_logic
		);
	end component;

	component design4
		port (
			a   :  in  std_logic;
			b   :  in  std_logic;
			c   :  in  std_logic;
			d   :  in  std_logic;
			f_d :  out std_logic
		);
	end component;

	component design5
		port (
			a   :  in  std_logic;
			b   :  in  std_logic;
			c   :  in  std_logic;
			d   :  in  std_logic;
			f_e :  out std_logic
		);
	end component;

	component design6
		port (
			a   :  in  std_logic;
			b   :  in  std_logic;
			c   :  in  std_logic;
			d   :  in  std_logic;
			f_f :  out std_logic
		);
	end component;

	component design7
		port (
			a   :  in  std_logic;
			b   :  in  std_logic;
			c   :  in  std_logic;
			d   :  in  std_logic;
			f_g :  out std_logic
		);
	end component;



      signal A_1           :    std_logic; 
      signal B_1           :    std_logic; 
      signal C_1           :    std_logic; 
      signal D_1           :    std_logic; 
      signal design1_0_f_a :    std_logic; 
      signal design2_0_f_b :    std_logic; 
      signal design3_0_f_c :    std_logic; 
      signal design4_0_f_d :    std_logic; 
      signal design5_0_f_e :    std_logic; 
      signal design6_0_f_f :    std_logic; 
      signal design7_0_f_g :    std_logic; 
      signal gnd_0_O       :    std_logic; 
      signal vcc_0_O       :    std_logic; 
begin
	A_1 <= A;
	B_1 <= B;
	C_1 <= C;
	D_1 <= D;
	AN0 <= gnd_0_O;
	AN1 <= vcc_0_O;
	AN2 <= vcc_0_O;
	AN3 <= vcc_0_O;
	f_a_0 <= design1_0_f_a;
	f_b_0 <= design2_0_f_b;
	f_c_0 <= design3_0_f_c;
	f_d_0 <= design4_0_f_d;
	f_e_0 <= design5_0_f_e;
	f_f_0 <= design6_0_f_f;
	f_g_0 <= design7_0_f_g;


	-- design1_0
	inst_design1_0 : design1
		port map (
			a   =>  A_1,
			b   =>  B_1,
			c   =>  C_1,
			d   =>  D_1,
			f_a =>  design1_0_f_a
		);

	-- design2_0
	inst_design2_0 : design2
		port map (
			a   =>  A_1,
			b   =>  B_1,
			c   =>  C_1,
			d   =>  D_1,
			f_b =>  design2_0_f_b
		);

	-- design3_0
	inst_design3_0 : design3
		port map (
			a   =>  A_1,
			b   =>  B_1,
			c   =>  C_1,
			d   =>  D_1,
			f_c =>  design3_0_f_c
		);

	-- design4_0
	inst_design4_0 : design4
		port map (
			a   =>  A_1,
			b   =>  B_1,
			c   =>  C_1,
			d   =>  D_1,
			f_d =>  design4_0_f_d
		);

	-- design5_0
	inst_design5_0 : design5
		port map (
			a   =>  A_1,
			b   =>  B_1,
			c   =>  C_1,
			d   =>  D_1,
			f_e =>  design5_0_f_e
		);

	-- design6_0
	inst_design6_0 : design6
		port map (
			a   =>  A_1,
			b   =>  B_1,
			c   =>  C_1,
			d   =>  D_1,
			f_f =>  design6_0_f_f
		);

	-- design7_0
	inst_design7_0 : design7
		port map (
			a   =>  A_1,
			b   =>  B_1,
			c   =>  C_1,
			d   =>  D_1,
			f_g =>  design7_0_f_g
		);

	-- gnd_0
	gnd_0_O <= '0';

	-- vcc_0
	vcc_0_O <= '1';

end Behavioral;
