LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY IIR_FILTER_ADV IS 
							PORT
								( din,b0,b1,b2,a1_neg,a1_2_a2,a1a2: IN SIGNED(10 DOWNTO 0);
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
						( d:IN STD_LOGIC;
						  clk,rst_n,en:IN STD_LOGIC;
						  q:OUT STD_LOGIC
						);
END COMPONENT;

SIGNAL x,coeff_b0,coeff_b1,coeff_b2,coeff_a1_2_a2,coeff_a1a2,coeff_a1_neg:SIGNED(10 DOWNTO 0);
SIGNAL w,sw0,sw1,a1x1_sum,a1x1_sum_1,a1x1_ext,y_ext,ff_ext,fb_ext:SIGNED(10 DOWNTO 0);
SIGNAL ff0_approx,ff1_approx,fb0_approx,fb1_approx:SIGNED(8 DOWNTO 0);
SIGNAL fb,fb_1,ff,ff_1,ax_approx,a1x1,y_approx,y_tmp:SIGNED(8 DOWNTO 0);
SIGNAL ax,ff0,ff1,fb0,fb1,y: SIGNED (20 DOWNTO 0);	
SIGNAL vout_tmp1,vout_tmp2,vout_tmp3:STD_LOGIC;		

BEGIN
																			-- input registers
din_reg:	 	 REG	GENERIC MAP(11)
						PORT MAP(din,clk,rst_n,vin,x);
							
b0_reg:		 REG	GENERIC MAP(11)
						PORT MAP(b0,clk,rst_n,vin,coeff_b0);		

b1_reg:		 REG	GENERIC MAP(11)
						PORT MAP(b1,clk,rst_n,vin,coeff_b1);
							
b2_reg:		 REG	GENERIC MAP(11)
						PORT MAP(b2,clk,rst_n,vin,coeff_b2);	
							
a1_neg_reg:	 REG	GENERIC MAP(11)
						PORT MAP(a1_neg,clk,rst_n,vin,coeff_a1_neg);	
							
a1_2_a2_reg: REG	GENERIC MAP(11)
						PORT MAP(a1_2_a2,clk,rst_n,vin,coeff_a1_2_a2);	
							
a1_a2_reg:	 REG	GENERIC MAP(11)
						PORT MAP(a1a2,clk,rst_n,vin,coeff_a1a2);		

a1x_mult: MULTIPLIER	GENERIC MAP(11)				-- -a1*x[n]
							PORT MAP(x,coeff_a1_neg,ax);
							
							ax_approx<=ax(20 downto 12);  --13 least significant bits truncated
								
a1x1_reg:	  REG		GENERIC MAP(9)											-- -a1*x[n-1]
							PORT MAP(ax_approx,clk,rst_n,vout_tmp1,a1x1);
							
							a1x1_ext<=a1x1(8) & a1x1(8) & a1x1;	--extension on 11 bits
							
a1x1_add:	ADDER		GENERIC MAP(11)					-- x[n] -a1*x[n-1]
							PORT MAP(a1x1_ext,x,a1x1_sum);
							
a1x1_add_reg: REG		GENERIC MAP(11)
							PORT MAP(a1x1_sum,clk,rst_n,vout_tmp1,a1x1_sum_1);
							
w_add:		ADDER		GENERIC MAP(11)								--adding fb
							PORT MAP(a1x1_sum_1,fb_ext,w);

fb_mult0: MULTIPLIER	GENERIC MAP(11)							--first feedback contribute
							PORT MAP(sw0,coeff_a1_2_a2,fb0);
									
							fb0_approx<=fb0(20 downto 12);		--13 least significant bits truncated
							
fb_mult1: MULTIPLIER	GENERIC MAP(11)							-- second feedback contribute
							PORT MAP(sw1,coeff_a1a2,fb1);
							
							fb1_approx<=fb1(20 downto 12);		--13 least significant bits truncated
							
fb_add:	ADDER			GENERIC MAP(9)									--adding fb contributes together
							PORT MAP(fb0_approx,fb1_approx,fb);
							
fb_reg:	REG			GENERIC MAP(9)									--total fb is stored in a register
							PORT MAP(fb,clk,rst_n,vout_tmp2,fb_1);
							
							fb_ext<=fb_1(8) & fb_1(8) & fb_1; --extension on 11 bits	
							
ff_mult0:MULTIPLIER 	GENERIC MAP(11)						--first feed-forward contribute
							PORT MAP(sw0,coeff_b1,ff0);

							ff0_approx<=ff0(20 DOWNTO 12);	--13 least significant bits truncated
							
ff_mult1:MULTIPLIER 	GENERIC MAP(11)						--second feed-forward contribute
							PORT MAP(sw1,coeff_b2,ff1);
							
							ff1_approx<=ff1(20 DOWNTO 12);	--13 least significant bits truncated
							
ff_add:	ADDER			GENERIC MAP(9)									--adding ff contributes together
							PORT MAP(ff0_approx,ff1_approx,ff);
							
ff_reg:	REG			GENERIC MAP(9)									--total ff is stored in a register
							PORT MAP(ff,clk,rst_n,vout_tmp3,ff_1);
	
y_mult:	MULTIPLIER 	GENERIC MAP(11)	
							PORT MAP(sw0,coeff_b0,y);
							
							y_approx<=y(20 DOWNTO 12);			--13 least significant bits truncated
							
y_add:	ADDER			GENERIC MAP(9)							--last operation to evaluate the output
							PORT MAP(y_approx,ff_1,y_tmp);
							
							y_ext<=y_tmp(8) & y_tmp(8) & y_tmp;	--extension on 11 bits so din,dout same bitwidth
							
y_reg:	REG			GENERIC MAP(11)							--output register
							PORT MAP(y_ext,clk,rst_n,'1',dout);
							
w_reg:	REG			GENERIC MAP(11)							--first buffer register
							PORT MAP(w,clk,rst_n,vout_tmp2,sw0);
							
w_1_reg:	REG			GENERIC MAP(11)							--second buffer register
							PORT MAP(sw0,clk,rst_n,vout_tmp2,sw1);

vout_ff_1: FLIP_FLOP	PORT MAP(vin,clk,rst_n,'1',vout_tmp1);			--FF chain to generate vout
vout_ff_2: FLIP_FLOP	PORT MAP(vout_tmp1,clk,rst_n,'1',vout_tmp2); --FF chain to generate vout
vout_ff_3: FLIP_FLOP	PORT MAP(vout_tmp2,clk,rst_n,'1',vout_tmp3); --FF chain to generate vout
vout_ff_4: FLIP_FLOP	PORT MAP(vout_tmp3,clk,rst_n,'1',vout); 		--FF chain to generate vout

END ARCHITECTURE;