//`timescale 1ns

module tb_iir_adv;

   wire CLK_i;
   wire RST_n_i;
   wire [10:0] DIN_i;
   wire VIN_i;
   wire [10:0] B0_i;
   wire [10:0] B1_i;
   wire [10:0] B2_i;
   wire [10:0] A1_i;
   wire [10:0] A2_i;
   wire [10:0] A1_NEG_i;
   wire [10:0] A1_2_A2_i;
   wire [10:0] A1A2_i;
   wire VOUT_i;
   wire [10:0] DOUT_i;
	wire SMPL_END_i;
   wire END_SIM_i;

   clk_gen CG(	.END_SIM(END_SIM_i),
					.CLK(CLK_i),
				   .RST_n(RST_n_i)
				 );

   data_maker_adv DM( .CLK(CLK_i),
							 .RST_n(RST_n_i),
							 .SMPL_END(SMPL_END_i),
							 .VOUT(VIN_i),
							 .DOUT(DIN_i),
							 .B0(B0_i),
							 .B1(B1_i),
							 .B2(B2_i),
							 .A1_NEG(A1_NEG_i),
							 .A1_2_A2(A1_2_A2_i),
							 .A1A2(A1A2_i)
						  );

   IIR_FILTER_ADV UUT(.clk(CLK_i),
							 .rst_n(RST_n_i),
							 .din(DIN_i),
							 .vin(VIN_i),
							 .b0(B0_i),
							 .b1(B1_i),
							 .b2(B2_i),
							 .a1_neg(A1_NEG_i),
							 .a1_2_a2(A1_2_A2_i),
							 .a1a2(A1A2_i),
							 .dout(DOUT_i),
							 .vout(VOUT_i)
							);

   data_sink_adv DS ( .CLK(CLK_i),
							 .RST_n(RST_n_i),
							 .VIN(VOUT_i),
							 .SMPL_END(SMPL_END_i),
							 .DIN(DOUT_i),
							 .END_SIM(END_SIM_i)
						  );   
endmodule

		   