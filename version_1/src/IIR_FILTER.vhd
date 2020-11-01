LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY IIR_FILTER IS 
							PORT
							(	din,b0,b1,b2,a1,a2: IN SIGNED(8 DOWNTO 0);
								clk,vin,rst_n:IN STD_LOGIC;
								dout:	OUT SIGNED(8 DOWNTO 0);
								vout:	OUT STD_LOGIC
							);
END ENTITY;

ARCHITECTURE BEHAVIOR OF IIR_FILTER IS

COMPONENT ADDER IS 	GENERIC(N:INTEGER);
							PORT
							(add1,add2: IN SIGNED(N-1 DOWNTO 0);
									sum:	OUT SIGNED(N-1 DOWNTO 0)
							);
END COMPONENT;

COMPONENT MULTIPLIER IS GENERIC(N:INTEGER);
								PORT
									(fact1,fact2: IN SIGNED(N-1 DOWNTO 0);
									 fract_product:OUT SIGNED(2*N-2 DOWNTO 0)
									);
END COMPONENT;

COMPONENT REG IS 	GENERIC (N:INTEGER);
						PORT (
								d:IN SIGNED(N-1 DOWNTO 0);
								clk,rst_n,en:IN STD_LOGIC;
								q:OUT SIGNED(N-1 DOWNTO 0)
								);
END COMPONENT;

COMPONENT FLIP_FLOP IS
					PORT (
							d:IN STD_LOGIC;
							clk,rst_n,en:IN STD_LOGIC;
							q:OUT STD_LOGIC
							);
END COMPONENT;

SIGNAL ff,fb:SIGNED(5 DOWNTO 0);
SIGNAL x,coeff_a1,coeff_a2,coeff_b0,coeff_b1,coeff_b2:SIGNED(8 DOWNTO 0);
SIGNAL w,sw0,sw1:SIGNED(8 DOWNTO 0);
SIGNAL ff0,ff1,fb0,fb1,y: SIGNED (16 DOWNTO 0);
SIGNAL ff0_approx,ff1_approx,fb0_approx,fb1_approx,y_approx,fb0_approx_neg,fb1_approx_neg,fb0_approx_tmp,fb1_approx_tmp,y_tmp:SIGNED(5 DOWNTO 0);
SIGNAL vout_tmp:STD_LOGIC;
SIGNAL fb_ext,y_ext:SIGNED(8 DOWNTO 0);

BEGIN


din_reg:	REG			GENERIC MAP(9)
							PORT MAP(din,clk,rst_n,vin,x);		

a1_reg:	REG			GENERIC MAP(9)
							PORT MAP(a1,clk,rst_n,vin,coeff_a1);		
							
a2_reg:	REG			GENERIC MAP(9)
							PORT MAP(a2,clk,rst_n,vin,coeff_a2);		
							
b0_reg:	REG			GENERIC MAP(9)
							PORT MAP(b0,clk,rst_n,vin,coeff_b0);		
							
b1_reg:	REG			GENERIC MAP(9)
							PORT MAP(b1,clk,rst_n,vin,coeff_b1);		
							
b2_reg:	REG			GENERIC MAP(9)
							PORT MAP(b2,clk,rst_n,vin,coeff_b2);								
							
fb_mult0:MULTIPLIER 	GENERIC MAP(9)	--sw[0]*a[0]
							PORT MAP(sw0,coeff_a1,fb0); --coeff_a1_ext is a[0] in c model, and a1 in matlab
							
							fb0_approx<=fb0(16 DOWNTO 11);--9 least significant bits truncated

fb_mult1:MULTIPLIER 	GENERIC MAP(9)	--sw[1]*a[1]
							PORT MAP(sw1,coeff_a2,fb1);

							fb1_approx<=fb1(16 DOWNTO 11);

fb0_approx_tmp<=NOT fb0_approx;
fb1_approx_tmp<=NOT fb1_approx;
							
fb0_neg:	ADDER			GENERIC MAP(6)
							PORT MAP(fb0_approx_tmp,"000001",fb0_approx_neg);
							
fb1_neg:	ADDER			GENERIC MAP(6)
							PORT MAP(fb1_approx_tmp,"000001",fb1_approx_neg);				
							
fb_add:	ADDER			GENERIC MAP(6)
							PORT MAP(fb0_approx_neg,fb1_approx_neg,fb);
							
							fb_ext<=fb(5) & fb(5) & fb(5) & fb;
							
ff_mult0:MULTIPLIER 	GENERIC MAP(9)	--sw[0]*b[0]
							PORT MAP(sw0,coeff_b1,ff0);

							ff0_approx<=ff0(16 DOWNTO 11);
							
ff_mult1:MULTIPLIER 	GENERIC MAP(9)	--sw[0]*b[1]
							PORT MAP(sw1,coeff_b2,ff1);
							
							ff1_approx<=ff1(16 DOWNTO 11);
							
ff_add:	ADDER			GENERIC MAP(6)
							PORT MAP(ff0_approx,ff1_approx,ff);
							
w_add:	ADDER			GENERIC MAP(9)
							PORT MAP(x,fb_ext,w);
		
y_mult:	MULTIPLIER 	GENERIC MAP(9)	
							PORT MAP(w,coeff_b0,y);

							y_approx<=y(16 DOWNTO 11);
							
							
							
y_add:	ADDER			GENERIC MAP(6)
							PORT MAP(y_approx,ff,y_tmp);

							y_ext<=y_tmp(5) & y_tmp(5) & y_tmp(5) & y_tmp;
							
y_reg:	REG			GENERIC MAP(9)
							PORT MAP(y_ext,clk,rst_n,'1',dout);		
							
w_1_reg:	REG			GENERIC MAP(9)
							PORT MAP(w,clk,rst_n,vin,sw0);
							
w_2_reg:	REG			GENERIC MAP(9)
							PORT MAP(sw0,clk,rst_n,vin,sw1);		

vout_ff_1: FLIP_FLOP	PORT MAP(vin,clk,rst_n,'1',vout_tmp);
vout_ff_2: FLIP_FLOP	PORT MAP(vout_tmp,clk,rst_n,'1',vout);

END ARCHITECTURE;