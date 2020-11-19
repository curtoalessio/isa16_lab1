LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY IIR_FILTER_ADV IS 
							PORT
							(	din,b0,b1,b2,a1_neg : IN SIGNED(10 DOWNTO 0);
								a1_2_a2, a1a2: IN SIGNED(10 DOWNTO 0);
								clk,vin,rst_n:IN STD_LOGIC;
								dout:	OUT SIGNED(10 DOWNTO 0);
								vout:	OUT STD_LOGIC
							);
END ENTITY;

ARCHITECTURE BEHAVIOR OF IIR_FILTER_ADV IS

COMPONENT ADDER IS 	GENERIC(N:INTEGER);
							PORT
							( add1,add2: IN SIGNED(N-1 DOWNTO 0);
									sum:	OUT SIGNED(N-1 DOWNTO 0)
							);
END COMPONENT;

COMPONENT MULTIPLIER IS GENERIC(N:INTEGER);
								PORT
									( fact1,fact2: IN SIGNED(N-1 DOWNTO 0);
									  fract_product:OUT SIGNED(2*N-2 DOWNTO 0)
									 );
END COMPONENT;

COMPONENT REG IS 	GENERIC (N:INTEGER);
						PORT 
							( d:IN SIGNED(N-1 DOWNTO 0);
							  clk,rst_n,en:IN STD_LOGIC;
							  q:OUT SIGNED(N-1 DOWNTO 0)
							);
END COMPONENT;

COMPONENT FLIP_FLOP IS
					PORT 
							(d:IN STD_LOGIC;
							clk,rst_n,en:IN STD_LOGIC;
							q:OUT STD_LOGIC
							);
END COMPONENT;


SIGNAL x,coeff_b0,coeff_b1,coeff_b2:SIGNED(10 DOWNTO 0);
SIGNAL coeff_a1_2_a2,coeff_a1a2:SIGNED(10 DOWNTO 0);
SIGNAL a1x1_sum,a1x1_sum_1: SIGNED (10 DOWNTO 0);
SIGNAL coeff_a1_neg,w,sw0,sw1,a1x1_ext:SIGNED(10 DOWNTO 0);
SIGNAL y_ext,fb_ext:SIGNED(10 DOWNTO 0);
SIGNAL ff0_approx,ff1_approx,fb0_approx,fb1_approx,fb0_1,fb1_1,ff0_1,ff1_1:SIGNED(8 DOWNTO 0);
SIGNAL y_approx,y_tmp:SIGNED(8 DOWNTO 0);
SIGNAL fb,ff,ff_1,ax_approx,y_1,a1x1:SIGNED(8 downto 0);
SIGNAL ff0,ff1,fb0,fb1: SIGNED (20 DOWNTO 0);
SIGNAL y,ax: SIGNED (20 DOWNTO 0);
SIGNAL vout_tmp1,vout_tmp2,vout_tmp3,vout_tmp4:STD_LOGIC;

BEGIN																			
																				--input registers
din_reg:		REG		GENERIC MAP(11)
							PORT MAP(din,clk,rst_n,vin,x);	
							
b0_reg:		REG		GENERIC MAP(11)
							PORT MAP(b0,clk,rst_n,vin,coeff_b0);	
							
b1_reg:		REG		GENERIC MAP(11)
							PORT MAP(b1,clk,rst_n,vin,coeff_b1);		
							
b2_reg:		REG		GENERIC MAP(11)
							PORT MAP(b2,clk,rst_n,vin,coeff_b2);	
							
a1_neg_reg:	REG		GENERIC MAP(11)
							PORT MAP(a1_neg,clk,rst_n,vin,coeff_a1_neg);	
							
a1_2_a2_reg:REG		GENERIC MAP(11)
							PORT MAP(a1_2_a2,clk,rst_n,vin,coeff_a1_2_a2);
							
a1a2_reg:	REG		GENERIC MAP(11)
							PORT MAP(a1a2,clk,rst_n,vin,coeff_a1a2);		

xa1_mult: MULTIPLIER	GENERIC MAP(11)
							PORT MAP(x,coeff_a1_neg,ax);
							
							ax_approx<=ax(20 downto 12);
								
a1x1_reg:	REG		GENERIC MAP(9)
							PORT MAP(ax_approx,clk,rst_n,vout_tmp1,a1x1);
							
							a1x1_ext<=a1x1(8) & a1x1(8) & a1x1;
							
x1a1_add:	ADDER		GENERIC MAP(11)
							PORT MAP(a1x1_ext,x,a1x1_sum);
							
x1a1add_reg:	REG	GENERIC MAP(11)
							PORT MAP(a1x1_sum,clk,rst_n,vout_tmp1,a1x1_sum_1);

a1_2_a2_mult: MULTIPLIER	GENERIC MAP(11)
									PORT MAP(sw0,coeff_a1_2_a2,fb0);
							
									fb0_approx<=fb0(20 downto 12);
							
a1_2_a2_mult_reg:	REG		GENERIC MAP(9)
									PORT MAP(fb0_approx,clk,rst_n,vout_tmp2,fb0_1);
									
									fb1_approx<=fb1(20 downto 12);
									
a1a2_mult_reg:	REG			GENERIC MAP(9)
									PORT MAP(fb1_approx,clk,rst_n,vout_tmp2,fb1_1);
									
a1a2_mult: MULTIPLIER		GENERIC MAP(11)
									PORT MAP(coeff_a1a2,sw1,fb1);
				
fb_add:	ADDER			GENERIC MAP(9)
							PORT MAP(fb0_1,fb1_1,fb);

							fb_ext<=fb(8) & fb(8) & fb;

w_reg:	REG			GENERIC MAP(11)
							PORT MAP(w,clk,rst_n,vout_tmp2,sw0);
							
w_1_reg:	REG			GENERIC MAP(11)
							PORT MAP(sw0,clk,rst_n,vout_tmp2,sw1);
							
ff_mult0:MULTIPLIER 	GENERIC MAP(11)	
							PORT MAP(sw0,coeff_b1,ff0);
							
							ff0_approx<=ff0(20 DOWNTO 12);
							
ff0_reg:	REG			GENERIC MAP(9)
							PORT MAP(ff0_approx,clk,rst_n,vout_tmp3,ff0_1);
							
ff_mult1:MULTIPLIER 	GENERIC MAP(11)	
							PORT MAP(sw1,coeff_b2,ff1);
							
							ff1_approx<=ff1(20 DOWNTO 12);
							
ff1_reg:	REG			GENERIC MAP(9)
							PORT MAP(ff1_approx,clk,rst_n,vout_tmp3,ff1_1);
							
ff_add:	ADDER			GENERIC MAP(9)
							PORT MAP(ff0_1,ff1_1,ff);
							
ff_reg:	REG			GENERIC MAP(9)
							PORT MAP(ff,clk,rst_n,vout_tmp3,ff_1);
						
w_add:	ADDER			GENERIC MAP(11)
							PORT MAP(a1x1_sum_1,fb_ext,w);

y_mult:	MULTIPLIER 	GENERIC MAP(11)	
							PORT MAP(sw0,coeff_b0,y);
							
							y_approx<=y(20 DOWNTO 12);
							
y_approx_reg:	REG	GENERIC MAP(9)
							PORT MAP(y_approx,clk,rst_n,vout_tmp3,y_1);
							
y_add:	ADDER			GENERIC MAP(9)
							PORT MAP(y_1,ff_1,y_tmp);
							
							y_ext<=y_tmp(8) & y_tmp(8) & y_tmp;
							
dout_reg:	REG		GENERIC MAP(11)
							PORT MAP(y_ext,clk,rst_n,'1',dout);	--output register
																						
vout_ff_1: FLIP_FLOP	PORT MAP(vin,clk,rst_n,'1',vout_tmp1);			--ff chain to generate vout
vout_ff_2: FLIP_FLOP	PORT MAP(vout_tmp1,clk,rst_n,'1',vout_tmp2);
vout_ff_3: FLIP_FLOP	PORT MAP(vout_tmp2,clk,rst_n,'1',vout_tmp3);
vout_ff_4: FLIP_FLOP	PORT MAP(vout_tmp3,clk,rst_n,'1',vout_tmp4);
vout_ff_5: FLIP_FLOP	PORT MAP(vout_tmp4,clk,rst_n,'1',vout);

END ARCHITECTURE;