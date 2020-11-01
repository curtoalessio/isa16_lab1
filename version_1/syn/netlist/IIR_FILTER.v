/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri Oct 30 15:02:53 2020
/////////////////////////////////////////////////////////////


module IIR_FILTER ( din, b0, b1, b2, a1, a2, clk, vin, rst_n, dout, vout );
  input [8:0] din;
  input [8:0] b0;
  input [8:0] b1;
  input [8:0] b2;
  input [8:0] a1;
  input [8:0] a2;
  output [8:0] dout;
  input clk, vin, rst_n;
  output vout;
  wire   vout_tmp, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         din_reg_n29, din_reg_n28, din_reg_n27, din_reg_n26, din_reg_n25,
         din_reg_n24, din_reg_n23, din_reg_n22, din_reg_n21, din_reg_n20,
         din_reg_n19, din_reg_n18, din_reg_n17, din_reg_n16, din_reg_n15,
         din_reg_n14, din_reg_n13, din_reg_n12, din_reg_n11, din_reg_n10,
         din_reg_n9, din_reg_n8, din_reg_n7, din_reg_n6, din_reg_n5,
         din_reg_n4, din_reg_n3, din_reg_n2, din_reg_n1, a1_reg_n56,
         a1_reg_n55, a1_reg_n54, a1_reg_n53, a1_reg_n52, a1_reg_n51,
         a1_reg_n50, a1_reg_n49, a1_reg_n48, a1_reg_n47, a1_reg_n46,
         a1_reg_n45, a1_reg_n44, a1_reg_n43, a1_reg_n42, a1_reg_n41,
         a1_reg_n40, a1_reg_n39, a1_reg_n38, a1_reg_n37, a1_reg_n36,
         a1_reg_n35, a1_reg_n34, a1_reg_n33, a1_reg_n32, a1_reg_n31,
         a1_reg_n30, a1_reg_n29, a1_reg_n28, a2_reg_n56, a2_reg_n55,
         a2_reg_n54, a2_reg_n53, a2_reg_n52, a2_reg_n51, a2_reg_n50,
         a2_reg_n49, a2_reg_n48, a2_reg_n47, a2_reg_n46, a2_reg_n45,
         a2_reg_n44, a2_reg_n43, a2_reg_n42, a2_reg_n41, a2_reg_n40,
         a2_reg_n39, a2_reg_n38, a2_reg_n37, a2_reg_n36, a2_reg_n35,
         a2_reg_n34, a2_reg_n33, a2_reg_n32, a2_reg_n31, a2_reg_n30,
         a2_reg_n29, a2_reg_n28, b0_reg_n56, b0_reg_n55, b0_reg_n54,
         b0_reg_n53, b0_reg_n52, b0_reg_n51, b0_reg_n50, b0_reg_n49,
         b0_reg_n48, b0_reg_n47, b0_reg_n46, b0_reg_n45, b0_reg_n44,
         b0_reg_n43, b0_reg_n42, b0_reg_n41, b0_reg_n40, b0_reg_n39,
         b0_reg_n38, b0_reg_n37, b0_reg_n36, b0_reg_n35, b0_reg_n34,
         b0_reg_n33, b0_reg_n32, b0_reg_n31, b0_reg_n30, b0_reg_n29,
         b0_reg_n28, b1_reg_n56, b1_reg_n55, b1_reg_n54, b1_reg_n53,
         b1_reg_n52, b1_reg_n51, b1_reg_n50, b1_reg_n49, b1_reg_n48,
         b1_reg_n47, b1_reg_n46, b1_reg_n45, b1_reg_n44, b1_reg_n43,
         b1_reg_n42, b1_reg_n41, b1_reg_n40, b1_reg_n39, b1_reg_n38,
         b1_reg_n37, b1_reg_n36, b1_reg_n35, b1_reg_n34, b1_reg_n33,
         b1_reg_n32, b1_reg_n31, b1_reg_n30, b1_reg_n29, b1_reg_n28,
         b2_reg_n56, b2_reg_n55, b2_reg_n54, b2_reg_n53, b2_reg_n52,
         b2_reg_n51, b2_reg_n50, b2_reg_n49, b2_reg_n48, b2_reg_n47,
         b2_reg_n46, b2_reg_n45, b2_reg_n44, b2_reg_n43, b2_reg_n42,
         b2_reg_n41, b2_reg_n40, b2_reg_n39, b2_reg_n38, b2_reg_n37,
         b2_reg_n36, b2_reg_n35, b2_reg_n34, b2_reg_n33, b2_reg_n32,
         b2_reg_n31, b2_reg_n30, b2_reg_n29, b2_reg_n28,
         fb_mult0_fract_product_0_, fb_mult0_mult_16_n382,
         fb_mult0_mult_16_n381, fb_mult0_mult_16_n380, fb_mult0_mult_16_n379,
         fb_mult0_mult_16_n378, fb_mult0_mult_16_n377, fb_mult0_mult_16_n376,
         fb_mult0_mult_16_n375, fb_mult0_mult_16_n374, fb_mult0_mult_16_n373,
         fb_mult0_mult_16_n372, fb_mult0_mult_16_n371, fb_mult0_mult_16_n370,
         fb_mult0_mult_16_n369, fb_mult0_mult_16_n368, fb_mult0_mult_16_n367,
         fb_mult0_mult_16_n366, fb_mult0_mult_16_n365, fb_mult0_mult_16_n364,
         fb_mult0_mult_16_n363, fb_mult0_mult_16_n362, fb_mult0_mult_16_n361,
         fb_mult0_mult_16_n360, fb_mult0_mult_16_n359, fb_mult0_mult_16_n358,
         fb_mult0_mult_16_n357, fb_mult0_mult_16_n356, fb_mult0_mult_16_n355,
         fb_mult0_mult_16_n354, fb_mult0_mult_16_n353, fb_mult0_mult_16_n352,
         fb_mult0_mult_16_n351, fb_mult0_mult_16_n350, fb_mult0_mult_16_n349,
         fb_mult0_mult_16_n348, fb_mult0_mult_16_n347, fb_mult0_mult_16_n346,
         fb_mult0_mult_16_n345, fb_mult0_mult_16_n344, fb_mult0_mult_16_n343,
         fb_mult0_mult_16_n342, fb_mult0_mult_16_n341, fb_mult0_mult_16_n340,
         fb_mult0_mult_16_n339, fb_mult0_mult_16_n338, fb_mult0_mult_16_n337,
         fb_mult0_mult_16_n336, fb_mult0_mult_16_n335, fb_mult0_mult_16_n334,
         fb_mult0_mult_16_n333, fb_mult0_mult_16_n332, fb_mult0_mult_16_n331,
         fb_mult0_mult_16_n330, fb_mult0_mult_16_n329, fb_mult0_mult_16_n328,
         fb_mult0_mult_16_n327, fb_mult0_mult_16_n326, fb_mult0_mult_16_n325,
         fb_mult0_mult_16_n324, fb_mult0_mult_16_n323, fb_mult0_mult_16_n322,
         fb_mult0_mult_16_n321, fb_mult0_mult_16_n320, fb_mult0_mult_16_n319,
         fb_mult0_mult_16_n318, fb_mult0_mult_16_n317, fb_mult0_mult_16_n316,
         fb_mult0_mult_16_n315, fb_mult0_mult_16_n314, fb_mult0_mult_16_n313,
         fb_mult0_mult_16_n312, fb_mult0_mult_16_n311, fb_mult0_mult_16_n310,
         fb_mult0_mult_16_n309, fb_mult0_mult_16_n308, fb_mult0_mult_16_n307,
         fb_mult0_mult_16_n306, fb_mult0_mult_16_n305, fb_mult0_mult_16_n304,
         fb_mult0_mult_16_n303, fb_mult0_mult_16_n302, fb_mult0_mult_16_n301,
         fb_mult0_mult_16_n300, fb_mult0_mult_16_n299, fb_mult0_mult_16_n298,
         fb_mult0_mult_16_n297, fb_mult0_mult_16_n296, fb_mult0_mult_16_n295,
         fb_mult0_mult_16_n294, fb_mult0_mult_16_n293, fb_mult0_mult_16_n292,
         fb_mult0_mult_16_n291, fb_mult0_mult_16_n290, fb_mult0_mult_16_n289,
         fb_mult0_mult_16_n288, fb_mult0_mult_16_n287, fb_mult0_mult_16_n286,
         fb_mult0_mult_16_n285, fb_mult0_mult_16_n284, fb_mult0_mult_16_n283,
         fb_mult0_mult_16_n282, fb_mult0_mult_16_n281, fb_mult0_mult_16_n280,
         fb_mult0_mult_16_n279, fb_mult0_mult_16_n278, fb_mult0_mult_16_n277,
         fb_mult0_mult_16_product_10_, fb_mult0_mult_16_product_9_,
         fb_mult0_mult_16_product_8_, fb_mult0_mult_16_product_7_,
         fb_mult0_mult_16_product_6_, fb_mult0_mult_16_product_5_,
         fb_mult0_mult_16_product_4_, fb_mult0_mult_16_product_3_,
         fb_mult0_mult_16_product_2_, fb_mult0_mult_16_product_1_,
         fb_mult0_mult_16_n141, fb_mult0_mult_16_n140, fb_mult0_mult_16_n139,
         fb_mult0_mult_16_n138, fb_mult0_mult_16_n137, fb_mult0_mult_16_n136,
         fb_mult0_mult_16_n133, fb_mult0_mult_16_n132, fb_mult0_mult_16_n131,
         fb_mult0_mult_16_n130, fb_mult0_mult_16_n129, fb_mult0_mult_16_n128,
         fb_mult0_mult_16_n127, fb_mult0_mult_16_n125, fb_mult0_mult_16_n124,
         fb_mult0_mult_16_n123, fb_mult0_mult_16_n122, fb_mult0_mult_16_n121,
         fb_mult0_mult_16_n120, fb_mult0_mult_16_n119, fb_mult0_mult_16_n118,
         fb_mult0_mult_16_n116, fb_mult0_mult_16_n115, fb_mult0_mult_16_n114,
         fb_mult0_mult_16_n112, fb_mult0_mult_16_n111, fb_mult0_mult_16_n110,
         fb_mult0_mult_16_n109, fb_mult0_mult_16_n107, fb_mult0_mult_16_n105,
         fb_mult0_mult_16_n104, fb_mult0_mult_16_n103, fb_mult0_mult_16_n102,
         fb_mult0_mult_16_n101, fb_mult0_mult_16_n100, fb_mult0_mult_16_n96,
         fb_mult0_mult_16_n95, fb_mult0_mult_16_n94, fb_mult0_mult_16_n79,
         fb_mult0_mult_16_n78, fb_mult0_mult_16_n77, fb_mult0_mult_16_n76,
         fb_mult0_mult_16_n75, fb_mult0_mult_16_n74, fb_mult0_mult_16_n73,
         fb_mult0_mult_16_n72, fb_mult0_mult_16_n71, fb_mult0_mult_16_n70,
         fb_mult0_mult_16_n69, fb_mult0_mult_16_n68, fb_mult0_mult_16_n67,
         fb_mult0_mult_16_n66, fb_mult0_mult_16_n65, fb_mult0_mult_16_n64,
         fb_mult0_mult_16_n63, fb_mult0_mult_16_n62, fb_mult0_mult_16_n61,
         fb_mult0_mult_16_n60, fb_mult0_mult_16_n59, fb_mult0_mult_16_n58,
         fb_mult0_mult_16_n57, fb_mult0_mult_16_n56, fb_mult0_mult_16_n55,
         fb_mult0_mult_16_n54, fb_mult0_mult_16_n53, fb_mult0_mult_16_n52,
         fb_mult0_mult_16_n51, fb_mult0_mult_16_n50, fb_mult0_mult_16_n49,
         fb_mult0_mult_16_n48, fb_mult0_mult_16_n46, fb_mult0_mult_16_n45,
         fb_mult0_mult_16_n44, fb_mult0_mult_16_n43, fb_mult0_mult_16_n42,
         fb_mult0_mult_16_n41, fb_mult0_mult_16_n40, fb_mult0_mult_16_n39,
         fb_mult0_mult_16_n38, fb_mult0_mult_16_n37, fb_mult0_mult_16_n36,
         fb_mult0_mult_16_n35, fb_mult0_mult_16_n34, fb_mult0_mult_16_n32,
         fb_mult0_mult_16_n31, fb_mult0_mult_16_n30, fb_mult0_mult_16_n29,
         fb_mult0_mult_16_n28, fb_mult0_mult_16_n27, fb_mult0_mult_16_n26,
         fb_mult0_mult_16_n25, fb_mult0_mult_16_n24, fb_mult0_mult_16_n22,
         fb_mult0_mult_16_n21, fb_mult0_mult_16_n20, fb_mult0_mult_16_n19,
         fb_mult0_mult_16_n18, fb_mult0_mult_16_n7, fb_mult0_mult_16_n6,
         fb_mult0_mult_16_n5, fb_mult0_mult_16_n4, fb_mult0_mult_16_n3,
         fb_mult0_mult_16_n2, fb_mult1_fract_product_0_, fb_mult1_mult_16_n378,
         fb_mult1_mult_16_n377, fb_mult1_mult_16_n376, fb_mult1_mult_16_n375,
         fb_mult1_mult_16_n374, fb_mult1_mult_16_n373, fb_mult1_mult_16_n372,
         fb_mult1_mult_16_n371, fb_mult1_mult_16_n370, fb_mult1_mult_16_n369,
         fb_mult1_mult_16_n368, fb_mult1_mult_16_n367, fb_mult1_mult_16_n366,
         fb_mult1_mult_16_n365, fb_mult1_mult_16_n364, fb_mult1_mult_16_n363,
         fb_mult1_mult_16_n362, fb_mult1_mult_16_n361, fb_mult1_mult_16_n360,
         fb_mult1_mult_16_n359, fb_mult1_mult_16_n358, fb_mult1_mult_16_n357,
         fb_mult1_mult_16_n356, fb_mult1_mult_16_n355, fb_mult1_mult_16_n354,
         fb_mult1_mult_16_n353, fb_mult1_mult_16_n352, fb_mult1_mult_16_n351,
         fb_mult1_mult_16_n350, fb_mult1_mult_16_n349, fb_mult1_mult_16_n348,
         fb_mult1_mult_16_n347, fb_mult1_mult_16_n346, fb_mult1_mult_16_n345,
         fb_mult1_mult_16_n344, fb_mult1_mult_16_n343, fb_mult1_mult_16_n342,
         fb_mult1_mult_16_n341, fb_mult1_mult_16_n340, fb_mult1_mult_16_n339,
         fb_mult1_mult_16_n338, fb_mult1_mult_16_n337, fb_mult1_mult_16_n336,
         fb_mult1_mult_16_n335, fb_mult1_mult_16_n334, fb_mult1_mult_16_n333,
         fb_mult1_mult_16_n332, fb_mult1_mult_16_n331, fb_mult1_mult_16_n330,
         fb_mult1_mult_16_n329, fb_mult1_mult_16_n328, fb_mult1_mult_16_n327,
         fb_mult1_mult_16_n326, fb_mult1_mult_16_n325, fb_mult1_mult_16_n324,
         fb_mult1_mult_16_n323, fb_mult1_mult_16_n322, fb_mult1_mult_16_n321,
         fb_mult1_mult_16_n320, fb_mult1_mult_16_n319, fb_mult1_mult_16_n318,
         fb_mult1_mult_16_n317, fb_mult1_mult_16_n316, fb_mult1_mult_16_n315,
         fb_mult1_mult_16_n314, fb_mult1_mult_16_n313, fb_mult1_mult_16_n312,
         fb_mult1_mult_16_n311, fb_mult1_mult_16_n310, fb_mult1_mult_16_n309,
         fb_mult1_mult_16_n308, fb_mult1_mult_16_n307, fb_mult1_mult_16_n306,
         fb_mult1_mult_16_n305, fb_mult1_mult_16_n304, fb_mult1_mult_16_n303,
         fb_mult1_mult_16_n302, fb_mult1_mult_16_n301, fb_mult1_mult_16_n300,
         fb_mult1_mult_16_n299, fb_mult1_mult_16_n298, fb_mult1_mult_16_n297,
         fb_mult1_mult_16_n296, fb_mult1_mult_16_n295, fb_mult1_mult_16_n294,
         fb_mult1_mult_16_n293, fb_mult1_mult_16_n292, fb_mult1_mult_16_n291,
         fb_mult1_mult_16_n290, fb_mult1_mult_16_n289, fb_mult1_mult_16_n288,
         fb_mult1_mult_16_n287, fb_mult1_mult_16_n286, fb_mult1_mult_16_n285,
         fb_mult1_mult_16_n284, fb_mult1_mult_16_n283, fb_mult1_mult_16_n282,
         fb_mult1_mult_16_n281, fb_mult1_mult_16_n280, fb_mult1_mult_16_n279,
         fb_mult1_mult_16_n278, fb_mult1_mult_16_n277,
         fb_mult1_mult_16_product_10_, fb_mult1_mult_16_product_9_,
         fb_mult1_mult_16_product_8_, fb_mult1_mult_16_product_7_,
         fb_mult1_mult_16_product_6_, fb_mult1_mult_16_product_5_,
         fb_mult1_mult_16_product_4_, fb_mult1_mult_16_product_3_,
         fb_mult1_mult_16_product_2_, fb_mult1_mult_16_product_1_,
         fb_mult1_mult_16_n141, fb_mult1_mult_16_n140, fb_mult1_mult_16_n139,
         fb_mult1_mult_16_n138, fb_mult1_mult_16_n137, fb_mult1_mult_16_n136,
         fb_mult1_mult_16_n133, fb_mult1_mult_16_n132, fb_mult1_mult_16_n131,
         fb_mult1_mult_16_n130, fb_mult1_mult_16_n129, fb_mult1_mult_16_n128,
         fb_mult1_mult_16_n127, fb_mult1_mult_16_n125, fb_mult1_mult_16_n124,
         fb_mult1_mult_16_n123, fb_mult1_mult_16_n122, fb_mult1_mult_16_n121,
         fb_mult1_mult_16_n120, fb_mult1_mult_16_n119, fb_mult1_mult_16_n118,
         fb_mult1_mult_16_n116, fb_mult1_mult_16_n115, fb_mult1_mult_16_n114,
         fb_mult1_mult_16_n112, fb_mult1_mult_16_n111, fb_mult1_mult_16_n110,
         fb_mult1_mult_16_n109, fb_mult1_mult_16_n107, fb_mult1_mult_16_n105,
         fb_mult1_mult_16_n104, fb_mult1_mult_16_n103, fb_mult1_mult_16_n102,
         fb_mult1_mult_16_n101, fb_mult1_mult_16_n100, fb_mult1_mult_16_n96,
         fb_mult1_mult_16_n95, fb_mult1_mult_16_n94, fb_mult1_mult_16_n79,
         fb_mult1_mult_16_n78, fb_mult1_mult_16_n77, fb_mult1_mult_16_n76,
         fb_mult1_mult_16_n75, fb_mult1_mult_16_n74, fb_mult1_mult_16_n73,
         fb_mult1_mult_16_n72, fb_mult1_mult_16_n71, fb_mult1_mult_16_n70,
         fb_mult1_mult_16_n69, fb_mult1_mult_16_n68, fb_mult1_mult_16_n67,
         fb_mult1_mult_16_n66, fb_mult1_mult_16_n65, fb_mult1_mult_16_n64,
         fb_mult1_mult_16_n63, fb_mult1_mult_16_n62, fb_mult1_mult_16_n61,
         fb_mult1_mult_16_n60, fb_mult1_mult_16_n59, fb_mult1_mult_16_n58,
         fb_mult1_mult_16_n57, fb_mult1_mult_16_n56, fb_mult1_mult_16_n55,
         fb_mult1_mult_16_n54, fb_mult1_mult_16_n53, fb_mult1_mult_16_n52,
         fb_mult1_mult_16_n51, fb_mult1_mult_16_n50, fb_mult1_mult_16_n49,
         fb_mult1_mult_16_n48, fb_mult1_mult_16_n46, fb_mult1_mult_16_n45,
         fb_mult1_mult_16_n44, fb_mult1_mult_16_n43, fb_mult1_mult_16_n42,
         fb_mult1_mult_16_n41, fb_mult1_mult_16_n40, fb_mult1_mult_16_n39,
         fb_mult1_mult_16_n38, fb_mult1_mult_16_n37, fb_mult1_mult_16_n36,
         fb_mult1_mult_16_n35, fb_mult1_mult_16_n34, fb_mult1_mult_16_n32,
         fb_mult1_mult_16_n31, fb_mult1_mult_16_n30, fb_mult1_mult_16_n29,
         fb_mult1_mult_16_n28, fb_mult1_mult_16_n27, fb_mult1_mult_16_n26,
         fb_mult1_mult_16_n25, fb_mult1_mult_16_n24, fb_mult1_mult_16_n22,
         fb_mult1_mult_16_n21, fb_mult1_mult_16_n20, fb_mult1_mult_16_n19,
         fb_mult1_mult_16_n18, fb_mult1_mult_16_n7, fb_mult1_mult_16_n6,
         fb_mult1_mult_16_n5, fb_mult1_mult_16_n4, fb_mult1_mult_16_n3,
         fb_mult1_mult_16_n2, fb0_neg_add_16_n1, fb1_neg_add_16_n2,
         fb_add_add_16_n1, ff_mult0_fract_product_0_, ff_mult0_mult_16_n382,
         ff_mult0_mult_16_n381, ff_mult0_mult_16_n380, ff_mult0_mult_16_n379,
         ff_mult0_mult_16_n378, ff_mult0_mult_16_n377, ff_mult0_mult_16_n376,
         ff_mult0_mult_16_n375, ff_mult0_mult_16_n374, ff_mult0_mult_16_n373,
         ff_mult0_mult_16_n372, ff_mult0_mult_16_n371, ff_mult0_mult_16_n370,
         ff_mult0_mult_16_n369, ff_mult0_mult_16_n368, ff_mult0_mult_16_n367,
         ff_mult0_mult_16_n366, ff_mult0_mult_16_n365, ff_mult0_mult_16_n364,
         ff_mult0_mult_16_n363, ff_mult0_mult_16_n362, ff_mult0_mult_16_n361,
         ff_mult0_mult_16_n360, ff_mult0_mult_16_n359, ff_mult0_mult_16_n358,
         ff_mult0_mult_16_n357, ff_mult0_mult_16_n356, ff_mult0_mult_16_n355,
         ff_mult0_mult_16_n354, ff_mult0_mult_16_n353, ff_mult0_mult_16_n352,
         ff_mult0_mult_16_n351, ff_mult0_mult_16_n350, ff_mult0_mult_16_n349,
         ff_mult0_mult_16_n348, ff_mult0_mult_16_n347, ff_mult0_mult_16_n346,
         ff_mult0_mult_16_n345, ff_mult0_mult_16_n344, ff_mult0_mult_16_n343,
         ff_mult0_mult_16_n342, ff_mult0_mult_16_n341, ff_mult0_mult_16_n340,
         ff_mult0_mult_16_n339, ff_mult0_mult_16_n338, ff_mult0_mult_16_n337,
         ff_mult0_mult_16_n336, ff_mult0_mult_16_n335, ff_mult0_mult_16_n334,
         ff_mult0_mult_16_n333, ff_mult0_mult_16_n332, ff_mult0_mult_16_n331,
         ff_mult0_mult_16_n330, ff_mult0_mult_16_n329, ff_mult0_mult_16_n328,
         ff_mult0_mult_16_n327, ff_mult0_mult_16_n326, ff_mult0_mult_16_n325,
         ff_mult0_mult_16_n324, ff_mult0_mult_16_n323, ff_mult0_mult_16_n322,
         ff_mult0_mult_16_n321, ff_mult0_mult_16_n320, ff_mult0_mult_16_n319,
         ff_mult0_mult_16_n318, ff_mult0_mult_16_n317, ff_mult0_mult_16_n316,
         ff_mult0_mult_16_n315, ff_mult0_mult_16_n314, ff_mult0_mult_16_n313,
         ff_mult0_mult_16_n312, ff_mult0_mult_16_n311, ff_mult0_mult_16_n310,
         ff_mult0_mult_16_n309, ff_mult0_mult_16_n308, ff_mult0_mult_16_n307,
         ff_mult0_mult_16_n306, ff_mult0_mult_16_n305, ff_mult0_mult_16_n304,
         ff_mult0_mult_16_n303, ff_mult0_mult_16_n302, ff_mult0_mult_16_n301,
         ff_mult0_mult_16_n300, ff_mult0_mult_16_n299, ff_mult0_mult_16_n298,
         ff_mult0_mult_16_n297, ff_mult0_mult_16_n296, ff_mult0_mult_16_n295,
         ff_mult0_mult_16_n294, ff_mult0_mult_16_n293, ff_mult0_mult_16_n292,
         ff_mult0_mult_16_n291, ff_mult0_mult_16_n290, ff_mult0_mult_16_n289,
         ff_mult0_mult_16_n288, ff_mult0_mult_16_n287, ff_mult0_mult_16_n286,
         ff_mult0_mult_16_n285, ff_mult0_mult_16_n284, ff_mult0_mult_16_n283,
         ff_mult0_mult_16_n282, ff_mult0_mult_16_n281, ff_mult0_mult_16_n280,
         ff_mult0_mult_16_n279, ff_mult0_mult_16_n278, ff_mult0_mult_16_n277,
         ff_mult0_mult_16_product_10_, ff_mult0_mult_16_product_9_,
         ff_mult0_mult_16_product_8_, ff_mult0_mult_16_product_7_,
         ff_mult0_mult_16_product_6_, ff_mult0_mult_16_product_5_,
         ff_mult0_mult_16_product_4_, ff_mult0_mult_16_product_3_,
         ff_mult0_mult_16_product_2_, ff_mult0_mult_16_product_1_,
         ff_mult0_mult_16_n141, ff_mult0_mult_16_n140, ff_mult0_mult_16_n139,
         ff_mult0_mult_16_n138, ff_mult0_mult_16_n137, ff_mult0_mult_16_n136,
         ff_mult0_mult_16_n133, ff_mult0_mult_16_n132, ff_mult0_mult_16_n131,
         ff_mult0_mult_16_n130, ff_mult0_mult_16_n129, ff_mult0_mult_16_n128,
         ff_mult0_mult_16_n127, ff_mult0_mult_16_n125, ff_mult0_mult_16_n124,
         ff_mult0_mult_16_n123, ff_mult0_mult_16_n122, ff_mult0_mult_16_n121,
         ff_mult0_mult_16_n120, ff_mult0_mult_16_n119, ff_mult0_mult_16_n118,
         ff_mult0_mult_16_n116, ff_mult0_mult_16_n115, ff_mult0_mult_16_n114,
         ff_mult0_mult_16_n112, ff_mult0_mult_16_n111, ff_mult0_mult_16_n110,
         ff_mult0_mult_16_n109, ff_mult0_mult_16_n107, ff_mult0_mult_16_n105,
         ff_mult0_mult_16_n104, ff_mult0_mult_16_n103, ff_mult0_mult_16_n102,
         ff_mult0_mult_16_n101, ff_mult0_mult_16_n100, ff_mult0_mult_16_n96,
         ff_mult0_mult_16_n95, ff_mult0_mult_16_n94, ff_mult0_mult_16_n79,
         ff_mult0_mult_16_n78, ff_mult0_mult_16_n77, ff_mult0_mult_16_n76,
         ff_mult0_mult_16_n75, ff_mult0_mult_16_n74, ff_mult0_mult_16_n73,
         ff_mult0_mult_16_n72, ff_mult0_mult_16_n71, ff_mult0_mult_16_n70,
         ff_mult0_mult_16_n69, ff_mult0_mult_16_n68, ff_mult0_mult_16_n67,
         ff_mult0_mult_16_n66, ff_mult0_mult_16_n65, ff_mult0_mult_16_n64,
         ff_mult0_mult_16_n63, ff_mult0_mult_16_n62, ff_mult0_mult_16_n61,
         ff_mult0_mult_16_n60, ff_mult0_mult_16_n59, ff_mult0_mult_16_n58,
         ff_mult0_mult_16_n57, ff_mult0_mult_16_n56, ff_mult0_mult_16_n55,
         ff_mult0_mult_16_n54, ff_mult0_mult_16_n53, ff_mult0_mult_16_n52,
         ff_mult0_mult_16_n51, ff_mult0_mult_16_n50, ff_mult0_mult_16_n49,
         ff_mult0_mult_16_n48, ff_mult0_mult_16_n46, ff_mult0_mult_16_n45,
         ff_mult0_mult_16_n44, ff_mult0_mult_16_n43, ff_mult0_mult_16_n42,
         ff_mult0_mult_16_n41, ff_mult0_mult_16_n40, ff_mult0_mult_16_n39,
         ff_mult0_mult_16_n38, ff_mult0_mult_16_n37, ff_mult0_mult_16_n36,
         ff_mult0_mult_16_n35, ff_mult0_mult_16_n34, ff_mult0_mult_16_n32,
         ff_mult0_mult_16_n31, ff_mult0_mult_16_n30, ff_mult0_mult_16_n29,
         ff_mult0_mult_16_n28, ff_mult0_mult_16_n27, ff_mult0_mult_16_n26,
         ff_mult0_mult_16_n25, ff_mult0_mult_16_n24, ff_mult0_mult_16_n22,
         ff_mult0_mult_16_n21, ff_mult0_mult_16_n20, ff_mult0_mult_16_n19,
         ff_mult0_mult_16_n18, ff_mult0_mult_16_n7, ff_mult0_mult_16_n6,
         ff_mult0_mult_16_n5, ff_mult0_mult_16_n4, ff_mult0_mult_16_n3,
         ff_mult0_mult_16_n2, ff_mult1_fract_product_0_, ff_mult1_mult_16_n382,
         ff_mult1_mult_16_n381, ff_mult1_mult_16_n380, ff_mult1_mult_16_n379,
         ff_mult1_mult_16_n378, ff_mult1_mult_16_n377, ff_mult1_mult_16_n376,
         ff_mult1_mult_16_n375, ff_mult1_mult_16_n374, ff_mult1_mult_16_n373,
         ff_mult1_mult_16_n372, ff_mult1_mult_16_n371, ff_mult1_mult_16_n370,
         ff_mult1_mult_16_n369, ff_mult1_mult_16_n368, ff_mult1_mult_16_n367,
         ff_mult1_mult_16_n366, ff_mult1_mult_16_n365, ff_mult1_mult_16_n364,
         ff_mult1_mult_16_n363, ff_mult1_mult_16_n362, ff_mult1_mult_16_n361,
         ff_mult1_mult_16_n360, ff_mult1_mult_16_n359, ff_mult1_mult_16_n358,
         ff_mult1_mult_16_n357, ff_mult1_mult_16_n356, ff_mult1_mult_16_n355,
         ff_mult1_mult_16_n354, ff_mult1_mult_16_n353, ff_mult1_mult_16_n352,
         ff_mult1_mult_16_n351, ff_mult1_mult_16_n350, ff_mult1_mult_16_n349,
         ff_mult1_mult_16_n348, ff_mult1_mult_16_n347, ff_mult1_mult_16_n346,
         ff_mult1_mult_16_n345, ff_mult1_mult_16_n344, ff_mult1_mult_16_n343,
         ff_mult1_mult_16_n342, ff_mult1_mult_16_n341, ff_mult1_mult_16_n340,
         ff_mult1_mult_16_n339, ff_mult1_mult_16_n338, ff_mult1_mult_16_n337,
         ff_mult1_mult_16_n336, ff_mult1_mult_16_n335, ff_mult1_mult_16_n334,
         ff_mult1_mult_16_n333, ff_mult1_mult_16_n332, ff_mult1_mult_16_n331,
         ff_mult1_mult_16_n330, ff_mult1_mult_16_n329, ff_mult1_mult_16_n328,
         ff_mult1_mult_16_n327, ff_mult1_mult_16_n326, ff_mult1_mult_16_n325,
         ff_mult1_mult_16_n324, ff_mult1_mult_16_n323, ff_mult1_mult_16_n322,
         ff_mult1_mult_16_n321, ff_mult1_mult_16_n320, ff_mult1_mult_16_n319,
         ff_mult1_mult_16_n318, ff_mult1_mult_16_n317, ff_mult1_mult_16_n316,
         ff_mult1_mult_16_n315, ff_mult1_mult_16_n314, ff_mult1_mult_16_n313,
         ff_mult1_mult_16_n312, ff_mult1_mult_16_n311, ff_mult1_mult_16_n310,
         ff_mult1_mult_16_n309, ff_mult1_mult_16_n308, ff_mult1_mult_16_n307,
         ff_mult1_mult_16_n306, ff_mult1_mult_16_n305, ff_mult1_mult_16_n304,
         ff_mult1_mult_16_n303, ff_mult1_mult_16_n302, ff_mult1_mult_16_n301,
         ff_mult1_mult_16_n300, ff_mult1_mult_16_n299, ff_mult1_mult_16_n298,
         ff_mult1_mult_16_n297, ff_mult1_mult_16_n296, ff_mult1_mult_16_n295,
         ff_mult1_mult_16_n294, ff_mult1_mult_16_n293, ff_mult1_mult_16_n292,
         ff_mult1_mult_16_n291, ff_mult1_mult_16_n290, ff_mult1_mult_16_n289,
         ff_mult1_mult_16_n288, ff_mult1_mult_16_n287, ff_mult1_mult_16_n286,
         ff_mult1_mult_16_n285, ff_mult1_mult_16_n284, ff_mult1_mult_16_n283,
         ff_mult1_mult_16_n282, ff_mult1_mult_16_n281, ff_mult1_mult_16_n280,
         ff_mult1_mult_16_n279, ff_mult1_mult_16_n278, ff_mult1_mult_16_n277,
         ff_mult1_mult_16_product_10_, ff_mult1_mult_16_product_9_,
         ff_mult1_mult_16_product_8_, ff_mult1_mult_16_product_7_,
         ff_mult1_mult_16_product_6_, ff_mult1_mult_16_product_5_,
         ff_mult1_mult_16_product_4_, ff_mult1_mult_16_product_3_,
         ff_mult1_mult_16_product_2_, ff_mult1_mult_16_product_1_,
         ff_mult1_mult_16_n141, ff_mult1_mult_16_n140, ff_mult1_mult_16_n139,
         ff_mult1_mult_16_n138, ff_mult1_mult_16_n137, ff_mult1_mult_16_n136,
         ff_mult1_mult_16_n133, ff_mult1_mult_16_n132, ff_mult1_mult_16_n131,
         ff_mult1_mult_16_n130, ff_mult1_mult_16_n129, ff_mult1_mult_16_n128,
         ff_mult1_mult_16_n127, ff_mult1_mult_16_n125, ff_mult1_mult_16_n124,
         ff_mult1_mult_16_n123, ff_mult1_mult_16_n122, ff_mult1_mult_16_n121,
         ff_mult1_mult_16_n120, ff_mult1_mult_16_n119, ff_mult1_mult_16_n118,
         ff_mult1_mult_16_n116, ff_mult1_mult_16_n115, ff_mult1_mult_16_n114,
         ff_mult1_mult_16_n112, ff_mult1_mult_16_n111, ff_mult1_mult_16_n110,
         ff_mult1_mult_16_n109, ff_mult1_mult_16_n107, ff_mult1_mult_16_n105,
         ff_mult1_mult_16_n104, ff_mult1_mult_16_n103, ff_mult1_mult_16_n102,
         ff_mult1_mult_16_n101, ff_mult1_mult_16_n100, ff_mult1_mult_16_n96,
         ff_mult1_mult_16_n95, ff_mult1_mult_16_n94, ff_mult1_mult_16_n79,
         ff_mult1_mult_16_n78, ff_mult1_mult_16_n77, ff_mult1_mult_16_n76,
         ff_mult1_mult_16_n75, ff_mult1_mult_16_n74, ff_mult1_mult_16_n73,
         ff_mult1_mult_16_n72, ff_mult1_mult_16_n71, ff_mult1_mult_16_n70,
         ff_mult1_mult_16_n69, ff_mult1_mult_16_n68, ff_mult1_mult_16_n67,
         ff_mult1_mult_16_n66, ff_mult1_mult_16_n65, ff_mult1_mult_16_n64,
         ff_mult1_mult_16_n63, ff_mult1_mult_16_n62, ff_mult1_mult_16_n61,
         ff_mult1_mult_16_n60, ff_mult1_mult_16_n59, ff_mult1_mult_16_n58,
         ff_mult1_mult_16_n57, ff_mult1_mult_16_n56, ff_mult1_mult_16_n55,
         ff_mult1_mult_16_n54, ff_mult1_mult_16_n53, ff_mult1_mult_16_n52,
         ff_mult1_mult_16_n51, ff_mult1_mult_16_n50, ff_mult1_mult_16_n49,
         ff_mult1_mult_16_n48, ff_mult1_mult_16_n46, ff_mult1_mult_16_n45,
         ff_mult1_mult_16_n44, ff_mult1_mult_16_n43, ff_mult1_mult_16_n42,
         ff_mult1_mult_16_n41, ff_mult1_mult_16_n40, ff_mult1_mult_16_n39,
         ff_mult1_mult_16_n38, ff_mult1_mult_16_n37, ff_mult1_mult_16_n36,
         ff_mult1_mult_16_n35, ff_mult1_mult_16_n34, ff_mult1_mult_16_n32,
         ff_mult1_mult_16_n31, ff_mult1_mult_16_n30, ff_mult1_mult_16_n29,
         ff_mult1_mult_16_n28, ff_mult1_mult_16_n27, ff_mult1_mult_16_n26,
         ff_mult1_mult_16_n25, ff_mult1_mult_16_n24, ff_mult1_mult_16_n22,
         ff_mult1_mult_16_n21, ff_mult1_mult_16_n20, ff_mult1_mult_16_n19,
         ff_mult1_mult_16_n18, ff_mult1_mult_16_n7, ff_mult1_mult_16_n6,
         ff_mult1_mult_16_n5, ff_mult1_mult_16_n4, ff_mult1_mult_16_n3,
         ff_mult1_mult_16_n2, ff_add_add_16_n2, w_add_add_16_n1,
         y_mult_fract_product_0_, y_mult_mult_16_n377, y_mult_mult_16_n376,
         y_mult_mult_16_n375, y_mult_mult_16_n374, y_mult_mult_16_n373,
         y_mult_mult_16_n372, y_mult_mult_16_n371, y_mult_mult_16_n370,
         y_mult_mult_16_n369, y_mult_mult_16_n368, y_mult_mult_16_n367,
         y_mult_mult_16_n366, y_mult_mult_16_n365, y_mult_mult_16_n364,
         y_mult_mult_16_n363, y_mult_mult_16_n362, y_mult_mult_16_n361,
         y_mult_mult_16_n360, y_mult_mult_16_n359, y_mult_mult_16_n358,
         y_mult_mult_16_n357, y_mult_mult_16_n356, y_mult_mult_16_n355,
         y_mult_mult_16_n354, y_mult_mult_16_n353, y_mult_mult_16_n352,
         y_mult_mult_16_n351, y_mult_mult_16_n350, y_mult_mult_16_n349,
         y_mult_mult_16_n348, y_mult_mult_16_n347, y_mult_mult_16_n346,
         y_mult_mult_16_n345, y_mult_mult_16_n344, y_mult_mult_16_n343,
         y_mult_mult_16_n342, y_mult_mult_16_n341, y_mult_mult_16_n340,
         y_mult_mult_16_n339, y_mult_mult_16_n338, y_mult_mult_16_n337,
         y_mult_mult_16_n336, y_mult_mult_16_n335, y_mult_mult_16_n334,
         y_mult_mult_16_n333, y_mult_mult_16_n332, y_mult_mult_16_n331,
         y_mult_mult_16_n330, y_mult_mult_16_n329, y_mult_mult_16_n328,
         y_mult_mult_16_n327, y_mult_mult_16_n326, y_mult_mult_16_n325,
         y_mult_mult_16_n324, y_mult_mult_16_n323, y_mult_mult_16_n322,
         y_mult_mult_16_n321, y_mult_mult_16_n320, y_mult_mult_16_n319,
         y_mult_mult_16_n318, y_mult_mult_16_n317, y_mult_mult_16_n316,
         y_mult_mult_16_n315, y_mult_mult_16_n314, y_mult_mult_16_n313,
         y_mult_mult_16_n312, y_mult_mult_16_n311, y_mult_mult_16_n310,
         y_mult_mult_16_n309, y_mult_mult_16_n308, y_mult_mult_16_n307,
         y_mult_mult_16_n306, y_mult_mult_16_n305, y_mult_mult_16_n304,
         y_mult_mult_16_n303, y_mult_mult_16_n302, y_mult_mult_16_n301,
         y_mult_mult_16_n300, y_mult_mult_16_n299, y_mult_mult_16_n298,
         y_mult_mult_16_n297, y_mult_mult_16_n296, y_mult_mult_16_n295,
         y_mult_mult_16_n294, y_mult_mult_16_n293, y_mult_mult_16_n292,
         y_mult_mult_16_n291, y_mult_mult_16_n290, y_mult_mult_16_n289,
         y_mult_mult_16_n288, y_mult_mult_16_n287, y_mult_mult_16_n286,
         y_mult_mult_16_n285, y_mult_mult_16_n284, y_mult_mult_16_n283,
         y_mult_mult_16_n282, y_mult_mult_16_n281, y_mult_mult_16_n280,
         y_mult_mult_16_n279, y_mult_mult_16_n278, y_mult_mult_16_n277,
         y_mult_mult_16_product_10_, y_mult_mult_16_product_9_,
         y_mult_mult_16_product_8_, y_mult_mult_16_product_7_,
         y_mult_mult_16_product_6_, y_mult_mult_16_product_5_,
         y_mult_mult_16_product_4_, y_mult_mult_16_product_3_,
         y_mult_mult_16_product_2_, y_mult_mult_16_product_1_,
         y_mult_mult_16_n141, y_mult_mult_16_n140, y_mult_mult_16_n139,
         y_mult_mult_16_n138, y_mult_mult_16_n137, y_mult_mult_16_n136,
         y_mult_mult_16_n133, y_mult_mult_16_n132, y_mult_mult_16_n131,
         y_mult_mult_16_n130, y_mult_mult_16_n129, y_mult_mult_16_n128,
         y_mult_mult_16_n127, y_mult_mult_16_n125, y_mult_mult_16_n124,
         y_mult_mult_16_n123, y_mult_mult_16_n122, y_mult_mult_16_n121,
         y_mult_mult_16_n120, y_mult_mult_16_n119, y_mult_mult_16_n118,
         y_mult_mult_16_n116, y_mult_mult_16_n115, y_mult_mult_16_n114,
         y_mult_mult_16_n112, y_mult_mult_16_n111, y_mult_mult_16_n110,
         y_mult_mult_16_n109, y_mult_mult_16_n107, y_mult_mult_16_n105,
         y_mult_mult_16_n104, y_mult_mult_16_n103, y_mult_mult_16_n102,
         y_mult_mult_16_n101, y_mult_mult_16_n100, y_mult_mult_16_n96,
         y_mult_mult_16_n95, y_mult_mult_16_n94, y_mult_mult_16_n79,
         y_mult_mult_16_n78, y_mult_mult_16_n77, y_mult_mult_16_n76,
         y_mult_mult_16_n75, y_mult_mult_16_n74, y_mult_mult_16_n73,
         y_mult_mult_16_n72, y_mult_mult_16_n71, y_mult_mult_16_n70,
         y_mult_mult_16_n69, y_mult_mult_16_n68, y_mult_mult_16_n67,
         y_mult_mult_16_n66, y_mult_mult_16_n65, y_mult_mult_16_n64,
         y_mult_mult_16_n63, y_mult_mult_16_n62, y_mult_mult_16_n61,
         y_mult_mult_16_n60, y_mult_mult_16_n59, y_mult_mult_16_n58,
         y_mult_mult_16_n57, y_mult_mult_16_n56, y_mult_mult_16_n55,
         y_mult_mult_16_n54, y_mult_mult_16_n53, y_mult_mult_16_n52,
         y_mult_mult_16_n51, y_mult_mult_16_n50, y_mult_mult_16_n49,
         y_mult_mult_16_n48, y_mult_mult_16_n46, y_mult_mult_16_n45,
         y_mult_mult_16_n44, y_mult_mult_16_n43, y_mult_mult_16_n42,
         y_mult_mult_16_n41, y_mult_mult_16_n40, y_mult_mult_16_n39,
         y_mult_mult_16_n38, y_mult_mult_16_n37, y_mult_mult_16_n36,
         y_mult_mult_16_n35, y_mult_mult_16_n34, y_mult_mult_16_n32,
         y_mult_mult_16_n31, y_mult_mult_16_n30, y_mult_mult_16_n29,
         y_mult_mult_16_n28, y_mult_mult_16_n27, y_mult_mult_16_n26,
         y_mult_mult_16_n25, y_mult_mult_16_n24, y_mult_mult_16_n22,
         y_mult_mult_16_n21, y_mult_mult_16_n20, y_mult_mult_16_n19,
         y_mult_mult_16_n18, y_mult_mult_16_n7, y_mult_mult_16_n6,
         y_mult_mult_16_n5, y_mult_mult_16_n4, y_mult_mult_16_n3,
         y_mult_mult_16_n2, y_add_add_16_n2, y_reg_n54, y_reg_n53, y_reg_n52,
         y_reg_n51, y_reg_n50, y_reg_n49, y_reg_n48, y_reg_n47, y_reg_n46,
         y_reg_n45, y_reg_n44, y_reg_n43, y_reg_n42, y_reg_n41, y_reg_n40,
         y_reg_n39, y_reg_n38, y_reg_n37, y_reg_n36, y_reg_n35, y_reg_n34,
         y_reg_n33, y_reg_n32, y_reg_n31, y_reg_n30, y_reg_n29, y_reg_n28,
         w_1_reg_n56, w_1_reg_n55, w_1_reg_n54, w_1_reg_n53, w_1_reg_n52,
         w_1_reg_n51, w_1_reg_n50, w_1_reg_n49, w_1_reg_n48, w_1_reg_n47,
         w_1_reg_n46, w_1_reg_n45, w_1_reg_n44, w_1_reg_n43, w_1_reg_n42,
         w_1_reg_n41, w_1_reg_n40, w_1_reg_n39, w_1_reg_n38, w_1_reg_n37,
         w_1_reg_n36, w_1_reg_n35, w_1_reg_n34, w_1_reg_n33, w_1_reg_n32,
         w_1_reg_n31, w_1_reg_n30, w_1_reg_n29, w_1_reg_n28, w_2_reg_n56,
         w_2_reg_n55, w_2_reg_n54, w_2_reg_n53, w_2_reg_n52, w_2_reg_n51,
         w_2_reg_n50, w_2_reg_n49, w_2_reg_n48, w_2_reg_n47, w_2_reg_n46,
         w_2_reg_n45, w_2_reg_n44, w_2_reg_n43, w_2_reg_n42, w_2_reg_n41,
         w_2_reg_n40, w_2_reg_n39, w_2_reg_n38, w_2_reg_n37, w_2_reg_n36,
         w_2_reg_n35, w_2_reg_n34, w_2_reg_n33, w_2_reg_n32, w_2_reg_n31,
         w_2_reg_n30, w_2_reg_n29, w_2_reg_n28, vout_ff_1_n3, vout_ff_1_n2,
         vout_ff_1_n1, vout_ff_2_n6, vout_ff_2_n5, vout_ff_2_n4;
  wire   [8:0] x;
  wire   [8:0] coeff_a1;
  wire   [8:0] coeff_a2;
  wire   [8:0] coeff_b0;
  wire   [8:0] coeff_b1;
  wire   [8:0] coeff_b2;
  wire   [8:0] sw0;
  wire   [16:11] fb0;
  wire   [8:0] sw1;
  wire   [16:11] fb1;
  wire   [5:0] fb0_approx_neg;
  wire   [5:0] fb1_approx_neg;
  wire   [5:0] fb;
  wire   [16:11] ff0;
  wire   [16:11] ff1;
  wire   [5:0] ff;
  wire   [8:0] w;
  wire   [16:11] y;
  wire   [5:0] y_tmp;
  wire   [5:2] fb0_neg_add_16_carry;
  wire   [5:2] fb1_neg_add_16_carry;
  wire   [5:2] fb_add_add_16_carry;
  wire   [5:2] ff_add_add_16_carry;
  wire   [8:2] w_add_add_16_carry;
  wire   [5:2] y_add_add_16_carry;

  INV_X1 U15 ( .A(fb0[12]), .ZN(n17) );
  INV_X1 U16 ( .A(fb1[12]), .ZN(n23) );
  INV_X1 U17 ( .A(fb0[11]), .ZN(n18) );
  INV_X1 U18 ( .A(fb1[11]), .ZN(n24) );
  INV_X1 U19 ( .A(fb0[16]), .ZN(n13) );
  INV_X1 U20 ( .A(fb1[16]), .ZN(n19) );
  INV_X1 U21 ( .A(fb0[13]), .ZN(n16) );
  INV_X1 U22 ( .A(fb0[14]), .ZN(n15) );
  INV_X1 U23 ( .A(fb0[15]), .ZN(n14) );
  INV_X1 U24 ( .A(fb1[15]), .ZN(n20) );
  INV_X1 U25 ( .A(fb1[13]), .ZN(n22) );
  INV_X1 U26 ( .A(fb1[14]), .ZN(n21) );
  NAND2_X1 din_reg_U21 ( .A1(din[5]), .A2(din_reg_n28), .ZN(din_reg_n6) );
  OAI21_X1 din_reg_U20 ( .B1(din_reg_n29), .B2(din_reg_n13), .A(din_reg_n6), 
        .ZN(din_reg_n24) );
  NAND2_X1 din_reg_U19 ( .A1(din[4]), .A2(din_reg_n28), .ZN(din_reg_n5) );
  OAI21_X1 din_reg_U18 ( .B1(din_reg_n29), .B2(din_reg_n14), .A(din_reg_n5), 
        .ZN(din_reg_n23) );
  NAND2_X1 din_reg_U17 ( .A1(din[3]), .A2(din_reg_n28), .ZN(din_reg_n4) );
  OAI21_X1 din_reg_U16 ( .B1(din_reg_n29), .B2(din_reg_n15), .A(din_reg_n4), 
        .ZN(din_reg_n22) );
  NAND2_X1 din_reg_U15 ( .A1(din[2]), .A2(din_reg_n28), .ZN(din_reg_n3) );
  OAI21_X1 din_reg_U14 ( .B1(din_reg_n29), .B2(din_reg_n16), .A(din_reg_n3), 
        .ZN(din_reg_n21) );
  NAND2_X1 din_reg_U13 ( .A1(din[1]), .A2(din_reg_n28), .ZN(din_reg_n2) );
  OAI21_X1 din_reg_U12 ( .B1(din_reg_n29), .B2(din_reg_n17), .A(din_reg_n2), 
        .ZN(din_reg_n20) );
  NAND2_X1 din_reg_U11 ( .A1(din[8]), .A2(din_reg_n28), .ZN(din_reg_n9) );
  OAI21_X1 din_reg_U10 ( .B1(din_reg_n28), .B2(din_reg_n10), .A(din_reg_n9), 
        .ZN(din_reg_n27) );
  NAND2_X1 din_reg_U9 ( .A1(din[7]), .A2(din_reg_n28), .ZN(din_reg_n8) );
  OAI21_X1 din_reg_U8 ( .B1(din_reg_n28), .B2(din_reg_n11), .A(din_reg_n8), 
        .ZN(din_reg_n26) );
  NAND2_X1 din_reg_U7 ( .A1(din[6]), .A2(din_reg_n28), .ZN(din_reg_n7) );
  OAI21_X1 din_reg_U6 ( .B1(din_reg_n28), .B2(din_reg_n12), .A(din_reg_n7), 
        .ZN(din_reg_n25) );
  NAND2_X1 din_reg_U5 ( .A1(din_reg_n29), .A2(din[0]), .ZN(din_reg_n1) );
  OAI21_X1 din_reg_U4 ( .B1(din_reg_n28), .B2(din_reg_n18), .A(din_reg_n1), 
        .ZN(din_reg_n19) );
  BUF_X1 din_reg_U3 ( .A(vin), .Z(din_reg_n29) );
  BUF_X1 din_reg_U2 ( .A(vin), .Z(din_reg_n28) );
  DFFR_X1 din_reg_q_reg_0_ ( .D(din_reg_n19), .CK(clk), .RN(rst_n), .Q(x[0]), 
        .QN(din_reg_n18) );
  DFFR_X1 din_reg_q_reg_1_ ( .D(din_reg_n20), .CK(clk), .RN(rst_n), .Q(x[1]), 
        .QN(din_reg_n17) );
  DFFR_X1 din_reg_q_reg_2_ ( .D(din_reg_n21), .CK(clk), .RN(rst_n), .Q(x[2]), 
        .QN(din_reg_n16) );
  DFFR_X1 din_reg_q_reg_3_ ( .D(din_reg_n22), .CK(clk), .RN(rst_n), .Q(x[3]), 
        .QN(din_reg_n15) );
  DFFR_X1 din_reg_q_reg_4_ ( .D(din_reg_n23), .CK(clk), .RN(rst_n), .Q(x[4]), 
        .QN(din_reg_n14) );
  DFFR_X1 din_reg_q_reg_5_ ( .D(din_reg_n24), .CK(clk), .RN(rst_n), .Q(x[5]), 
        .QN(din_reg_n13) );
  DFFR_X1 din_reg_q_reg_6_ ( .D(din_reg_n25), .CK(clk), .RN(rst_n), .Q(x[6]), 
        .QN(din_reg_n12) );
  DFFR_X1 din_reg_q_reg_7_ ( .D(din_reg_n26), .CK(clk), .RN(rst_n), .Q(x[7]), 
        .QN(din_reg_n11) );
  DFFR_X1 din_reg_q_reg_8_ ( .D(din_reg_n27), .CK(clk), .RN(rst_n), .Q(x[8]), 
        .QN(din_reg_n10) );
  NAND2_X1 a1_reg_U21 ( .A1(a1[5]), .A2(a1_reg_n28), .ZN(a1_reg_n51) );
  OAI21_X1 a1_reg_U20 ( .B1(a1_reg_n29), .B2(a1_reg_n44), .A(a1_reg_n51), .ZN(
        a1_reg_n33) );
  NAND2_X1 a1_reg_U19 ( .A1(a1[4]), .A2(a1_reg_n28), .ZN(a1_reg_n52) );
  OAI21_X1 a1_reg_U18 ( .B1(a1_reg_n29), .B2(a1_reg_n43), .A(a1_reg_n52), .ZN(
        a1_reg_n34) );
  NAND2_X1 a1_reg_U17 ( .A1(a1[3]), .A2(a1_reg_n28), .ZN(a1_reg_n53) );
  OAI21_X1 a1_reg_U16 ( .B1(a1_reg_n29), .B2(a1_reg_n42), .A(a1_reg_n53), .ZN(
        a1_reg_n35) );
  NAND2_X1 a1_reg_U15 ( .A1(a1[2]), .A2(a1_reg_n28), .ZN(a1_reg_n54) );
  OAI21_X1 a1_reg_U14 ( .B1(a1_reg_n29), .B2(a1_reg_n41), .A(a1_reg_n54), .ZN(
        a1_reg_n36) );
  NAND2_X1 a1_reg_U13 ( .A1(a1[1]), .A2(a1_reg_n28), .ZN(a1_reg_n55) );
  OAI21_X1 a1_reg_U12 ( .B1(a1_reg_n29), .B2(a1_reg_n40), .A(a1_reg_n55), .ZN(
        a1_reg_n37) );
  NAND2_X1 a1_reg_U11 ( .A1(a1[8]), .A2(a1_reg_n28), .ZN(a1_reg_n48) );
  OAI21_X1 a1_reg_U10 ( .B1(a1_reg_n28), .B2(a1_reg_n47), .A(a1_reg_n48), .ZN(
        a1_reg_n30) );
  NAND2_X1 a1_reg_U9 ( .A1(a1[7]), .A2(a1_reg_n28), .ZN(a1_reg_n49) );
  OAI21_X1 a1_reg_U8 ( .B1(a1_reg_n28), .B2(a1_reg_n46), .A(a1_reg_n49), .ZN(
        a1_reg_n31) );
  NAND2_X1 a1_reg_U7 ( .A1(a1[6]), .A2(a1_reg_n28), .ZN(a1_reg_n50) );
  OAI21_X1 a1_reg_U6 ( .B1(a1_reg_n28), .B2(a1_reg_n45), .A(a1_reg_n50), .ZN(
        a1_reg_n32) );
  NAND2_X1 a1_reg_U5 ( .A1(a1_reg_n29), .A2(a1[0]), .ZN(a1_reg_n56) );
  OAI21_X1 a1_reg_U4 ( .B1(a1_reg_n28), .B2(a1_reg_n39), .A(a1_reg_n56), .ZN(
        a1_reg_n38) );
  BUF_X1 a1_reg_U3 ( .A(vin), .Z(a1_reg_n29) );
  BUF_X1 a1_reg_U2 ( .A(vin), .Z(a1_reg_n28) );
  DFFR_X1 a1_reg_q_reg_0_ ( .D(a1_reg_n38), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[0]), .QN(a1_reg_n39) );
  DFFR_X1 a1_reg_q_reg_1_ ( .D(a1_reg_n37), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[1]), .QN(a1_reg_n40) );
  DFFR_X1 a1_reg_q_reg_2_ ( .D(a1_reg_n36), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[2]), .QN(a1_reg_n41) );
  DFFR_X1 a1_reg_q_reg_3_ ( .D(a1_reg_n35), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[3]), .QN(a1_reg_n42) );
  DFFR_X1 a1_reg_q_reg_4_ ( .D(a1_reg_n34), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[4]), .QN(a1_reg_n43) );
  DFFR_X1 a1_reg_q_reg_5_ ( .D(a1_reg_n33), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[5]), .QN(a1_reg_n44) );
  DFFR_X1 a1_reg_q_reg_6_ ( .D(a1_reg_n32), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[6]), .QN(a1_reg_n45) );
  DFFR_X1 a1_reg_q_reg_7_ ( .D(a1_reg_n31), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[7]), .QN(a1_reg_n46) );
  DFFR_X1 a1_reg_q_reg_8_ ( .D(a1_reg_n30), .CK(clk), .RN(rst_n), .Q(
        coeff_a1[8]), .QN(a1_reg_n47) );
  NAND2_X1 a2_reg_U21 ( .A1(a2[5]), .A2(a2_reg_n28), .ZN(a2_reg_n51) );
  OAI21_X1 a2_reg_U20 ( .B1(a2_reg_n29), .B2(a2_reg_n44), .A(a2_reg_n51), .ZN(
        a2_reg_n33) );
  NAND2_X1 a2_reg_U19 ( .A1(a2[4]), .A2(a2_reg_n28), .ZN(a2_reg_n52) );
  OAI21_X1 a2_reg_U18 ( .B1(a2_reg_n29), .B2(a2_reg_n43), .A(a2_reg_n52), .ZN(
        a2_reg_n34) );
  NAND2_X1 a2_reg_U17 ( .A1(a2[3]), .A2(a2_reg_n28), .ZN(a2_reg_n53) );
  OAI21_X1 a2_reg_U16 ( .B1(a2_reg_n29), .B2(a2_reg_n42), .A(a2_reg_n53), .ZN(
        a2_reg_n35) );
  NAND2_X1 a2_reg_U15 ( .A1(a2[2]), .A2(a2_reg_n28), .ZN(a2_reg_n54) );
  OAI21_X1 a2_reg_U14 ( .B1(a2_reg_n29), .B2(a2_reg_n41), .A(a2_reg_n54), .ZN(
        a2_reg_n36) );
  NAND2_X1 a2_reg_U13 ( .A1(a2[1]), .A2(a2_reg_n28), .ZN(a2_reg_n55) );
  OAI21_X1 a2_reg_U12 ( .B1(a2_reg_n29), .B2(a2_reg_n40), .A(a2_reg_n55), .ZN(
        a2_reg_n37) );
  NAND2_X1 a2_reg_U11 ( .A1(a2[8]), .A2(a2_reg_n28), .ZN(a2_reg_n48) );
  OAI21_X1 a2_reg_U10 ( .B1(a2_reg_n28), .B2(a2_reg_n47), .A(a2_reg_n48), .ZN(
        a2_reg_n30) );
  NAND2_X1 a2_reg_U9 ( .A1(a2[7]), .A2(a2_reg_n28), .ZN(a2_reg_n49) );
  OAI21_X1 a2_reg_U8 ( .B1(a2_reg_n28), .B2(a2_reg_n46), .A(a2_reg_n49), .ZN(
        a2_reg_n31) );
  NAND2_X1 a2_reg_U7 ( .A1(a2[6]), .A2(a2_reg_n28), .ZN(a2_reg_n50) );
  OAI21_X1 a2_reg_U6 ( .B1(a2_reg_n28), .B2(a2_reg_n45), .A(a2_reg_n50), .ZN(
        a2_reg_n32) );
  NAND2_X1 a2_reg_U5 ( .A1(a2_reg_n29), .A2(a2[0]), .ZN(a2_reg_n56) );
  OAI21_X1 a2_reg_U4 ( .B1(a2_reg_n28), .B2(a2_reg_n39), .A(a2_reg_n56), .ZN(
        a2_reg_n38) );
  BUF_X1 a2_reg_U3 ( .A(vin), .Z(a2_reg_n29) );
  BUF_X1 a2_reg_U2 ( .A(vin), .Z(a2_reg_n28) );
  DFFR_X1 a2_reg_q_reg_0_ ( .D(a2_reg_n38), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[0]), .QN(a2_reg_n39) );
  DFFR_X1 a2_reg_q_reg_1_ ( .D(a2_reg_n37), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[1]), .QN(a2_reg_n40) );
  DFFR_X1 a2_reg_q_reg_2_ ( .D(a2_reg_n36), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[2]), .QN(a2_reg_n41) );
  DFFR_X1 a2_reg_q_reg_3_ ( .D(a2_reg_n35), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[3]), .QN(a2_reg_n42) );
  DFFR_X1 a2_reg_q_reg_4_ ( .D(a2_reg_n34), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[4]), .QN(a2_reg_n43) );
  DFFR_X1 a2_reg_q_reg_5_ ( .D(a2_reg_n33), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[5]), .QN(a2_reg_n44) );
  DFFR_X1 a2_reg_q_reg_6_ ( .D(a2_reg_n32), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[6]), .QN(a2_reg_n45) );
  DFFR_X1 a2_reg_q_reg_7_ ( .D(a2_reg_n31), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[7]), .QN(a2_reg_n46) );
  DFFR_X1 a2_reg_q_reg_8_ ( .D(a2_reg_n30), .CK(clk), .RN(rst_n), .Q(
        coeff_a2[8]), .QN(a2_reg_n47) );
  NAND2_X1 b0_reg_U21 ( .A1(b0[5]), .A2(b0_reg_n28), .ZN(b0_reg_n51) );
  OAI21_X1 b0_reg_U20 ( .B1(b0_reg_n29), .B2(b0_reg_n44), .A(b0_reg_n51), .ZN(
        b0_reg_n33) );
  NAND2_X1 b0_reg_U19 ( .A1(b0[4]), .A2(b0_reg_n28), .ZN(b0_reg_n52) );
  OAI21_X1 b0_reg_U18 ( .B1(b0_reg_n29), .B2(b0_reg_n43), .A(b0_reg_n52), .ZN(
        b0_reg_n34) );
  NAND2_X1 b0_reg_U17 ( .A1(b0[3]), .A2(b0_reg_n28), .ZN(b0_reg_n53) );
  OAI21_X1 b0_reg_U16 ( .B1(b0_reg_n29), .B2(b0_reg_n42), .A(b0_reg_n53), .ZN(
        b0_reg_n35) );
  NAND2_X1 b0_reg_U15 ( .A1(b0[2]), .A2(b0_reg_n28), .ZN(b0_reg_n54) );
  OAI21_X1 b0_reg_U14 ( .B1(b0_reg_n29), .B2(b0_reg_n41), .A(b0_reg_n54), .ZN(
        b0_reg_n36) );
  NAND2_X1 b0_reg_U13 ( .A1(b0[1]), .A2(b0_reg_n28), .ZN(b0_reg_n55) );
  OAI21_X1 b0_reg_U12 ( .B1(b0_reg_n29), .B2(b0_reg_n40), .A(b0_reg_n55), .ZN(
        b0_reg_n37) );
  NAND2_X1 b0_reg_U11 ( .A1(b0[8]), .A2(b0_reg_n28), .ZN(b0_reg_n48) );
  OAI21_X1 b0_reg_U10 ( .B1(b0_reg_n28), .B2(b0_reg_n47), .A(b0_reg_n48), .ZN(
        b0_reg_n30) );
  NAND2_X1 b0_reg_U9 ( .A1(b0[7]), .A2(b0_reg_n28), .ZN(b0_reg_n49) );
  OAI21_X1 b0_reg_U8 ( .B1(b0_reg_n28), .B2(b0_reg_n46), .A(b0_reg_n49), .ZN(
        b0_reg_n31) );
  NAND2_X1 b0_reg_U7 ( .A1(b0[6]), .A2(b0_reg_n28), .ZN(b0_reg_n50) );
  OAI21_X1 b0_reg_U6 ( .B1(b0_reg_n28), .B2(b0_reg_n45), .A(b0_reg_n50), .ZN(
        b0_reg_n32) );
  NAND2_X1 b0_reg_U5 ( .A1(b0_reg_n29), .A2(b0[0]), .ZN(b0_reg_n56) );
  OAI21_X1 b0_reg_U4 ( .B1(b0_reg_n28), .B2(b0_reg_n39), .A(b0_reg_n56), .ZN(
        b0_reg_n38) );
  BUF_X1 b0_reg_U3 ( .A(vin), .Z(b0_reg_n29) );
  BUF_X1 b0_reg_U2 ( .A(vin), .Z(b0_reg_n28) );
  DFFR_X1 b0_reg_q_reg_0_ ( .D(b0_reg_n38), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[0]), .QN(b0_reg_n39) );
  DFFR_X1 b0_reg_q_reg_1_ ( .D(b0_reg_n37), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[1]), .QN(b0_reg_n40) );
  DFFR_X1 b0_reg_q_reg_2_ ( .D(b0_reg_n36), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[2]), .QN(b0_reg_n41) );
  DFFR_X1 b0_reg_q_reg_3_ ( .D(b0_reg_n35), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[3]), .QN(b0_reg_n42) );
  DFFR_X1 b0_reg_q_reg_4_ ( .D(b0_reg_n34), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[4]), .QN(b0_reg_n43) );
  DFFR_X1 b0_reg_q_reg_5_ ( .D(b0_reg_n33), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[5]), .QN(b0_reg_n44) );
  DFFR_X1 b0_reg_q_reg_6_ ( .D(b0_reg_n32), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[6]), .QN(b0_reg_n45) );
  DFFR_X1 b0_reg_q_reg_7_ ( .D(b0_reg_n31), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[7]), .QN(b0_reg_n46) );
  DFFR_X1 b0_reg_q_reg_8_ ( .D(b0_reg_n30), .CK(clk), .RN(rst_n), .Q(
        coeff_b0[8]), .QN(b0_reg_n47) );
  NAND2_X1 b1_reg_U21 ( .A1(b1[5]), .A2(b1_reg_n28), .ZN(b1_reg_n51) );
  OAI21_X1 b1_reg_U20 ( .B1(b1_reg_n29), .B2(b1_reg_n44), .A(b1_reg_n51), .ZN(
        b1_reg_n33) );
  NAND2_X1 b1_reg_U19 ( .A1(b1[4]), .A2(b1_reg_n28), .ZN(b1_reg_n52) );
  OAI21_X1 b1_reg_U18 ( .B1(b1_reg_n29), .B2(b1_reg_n43), .A(b1_reg_n52), .ZN(
        b1_reg_n34) );
  NAND2_X1 b1_reg_U17 ( .A1(b1[3]), .A2(b1_reg_n28), .ZN(b1_reg_n53) );
  OAI21_X1 b1_reg_U16 ( .B1(b1_reg_n29), .B2(b1_reg_n42), .A(b1_reg_n53), .ZN(
        b1_reg_n35) );
  NAND2_X1 b1_reg_U15 ( .A1(b1[2]), .A2(b1_reg_n28), .ZN(b1_reg_n54) );
  OAI21_X1 b1_reg_U14 ( .B1(b1_reg_n29), .B2(b1_reg_n41), .A(b1_reg_n54), .ZN(
        b1_reg_n36) );
  NAND2_X1 b1_reg_U13 ( .A1(b1[1]), .A2(b1_reg_n28), .ZN(b1_reg_n55) );
  OAI21_X1 b1_reg_U12 ( .B1(b1_reg_n29), .B2(b1_reg_n40), .A(b1_reg_n55), .ZN(
        b1_reg_n37) );
  NAND2_X1 b1_reg_U11 ( .A1(b1[8]), .A2(b1_reg_n28), .ZN(b1_reg_n48) );
  OAI21_X1 b1_reg_U10 ( .B1(b1_reg_n28), .B2(b1_reg_n47), .A(b1_reg_n48), .ZN(
        b1_reg_n30) );
  NAND2_X1 b1_reg_U9 ( .A1(b1[7]), .A2(b1_reg_n28), .ZN(b1_reg_n49) );
  OAI21_X1 b1_reg_U8 ( .B1(b1_reg_n28), .B2(b1_reg_n46), .A(b1_reg_n49), .ZN(
        b1_reg_n31) );
  NAND2_X1 b1_reg_U7 ( .A1(b1[6]), .A2(b1_reg_n28), .ZN(b1_reg_n50) );
  OAI21_X1 b1_reg_U6 ( .B1(b1_reg_n28), .B2(b1_reg_n45), .A(b1_reg_n50), .ZN(
        b1_reg_n32) );
  NAND2_X1 b1_reg_U5 ( .A1(b1_reg_n29), .A2(b1[0]), .ZN(b1_reg_n56) );
  OAI21_X1 b1_reg_U4 ( .B1(b1_reg_n28), .B2(b1_reg_n39), .A(b1_reg_n56), .ZN(
        b1_reg_n38) );
  BUF_X1 b1_reg_U3 ( .A(vin), .Z(b1_reg_n29) );
  BUF_X1 b1_reg_U2 ( .A(vin), .Z(b1_reg_n28) );
  DFFR_X1 b1_reg_q_reg_0_ ( .D(b1_reg_n38), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[0]), .QN(b1_reg_n39) );
  DFFR_X1 b1_reg_q_reg_1_ ( .D(b1_reg_n37), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[1]), .QN(b1_reg_n40) );
  DFFR_X1 b1_reg_q_reg_2_ ( .D(b1_reg_n36), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[2]), .QN(b1_reg_n41) );
  DFFR_X1 b1_reg_q_reg_3_ ( .D(b1_reg_n35), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[3]), .QN(b1_reg_n42) );
  DFFR_X1 b1_reg_q_reg_4_ ( .D(b1_reg_n34), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[4]), .QN(b1_reg_n43) );
  DFFR_X1 b1_reg_q_reg_5_ ( .D(b1_reg_n33), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[5]), .QN(b1_reg_n44) );
  DFFR_X1 b1_reg_q_reg_6_ ( .D(b1_reg_n32), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[6]), .QN(b1_reg_n45) );
  DFFR_X1 b1_reg_q_reg_7_ ( .D(b1_reg_n31), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[7]), .QN(b1_reg_n46) );
  DFFR_X1 b1_reg_q_reg_8_ ( .D(b1_reg_n30), .CK(clk), .RN(rst_n), .Q(
        coeff_b1[8]), .QN(b1_reg_n47) );
  NAND2_X1 b2_reg_U21 ( .A1(b2[5]), .A2(b2_reg_n28), .ZN(b2_reg_n51) );
  OAI21_X1 b2_reg_U20 ( .B1(b2_reg_n29), .B2(b2_reg_n44), .A(b2_reg_n51), .ZN(
        b2_reg_n33) );
  NAND2_X1 b2_reg_U19 ( .A1(b2[4]), .A2(b2_reg_n28), .ZN(b2_reg_n52) );
  OAI21_X1 b2_reg_U18 ( .B1(b2_reg_n29), .B2(b2_reg_n43), .A(b2_reg_n52), .ZN(
        b2_reg_n34) );
  NAND2_X1 b2_reg_U17 ( .A1(b2[3]), .A2(b2_reg_n28), .ZN(b2_reg_n53) );
  OAI21_X1 b2_reg_U16 ( .B1(b2_reg_n29), .B2(b2_reg_n42), .A(b2_reg_n53), .ZN(
        b2_reg_n35) );
  NAND2_X1 b2_reg_U15 ( .A1(b2[2]), .A2(b2_reg_n28), .ZN(b2_reg_n54) );
  OAI21_X1 b2_reg_U14 ( .B1(b2_reg_n29), .B2(b2_reg_n41), .A(b2_reg_n54), .ZN(
        b2_reg_n36) );
  NAND2_X1 b2_reg_U13 ( .A1(b2[1]), .A2(b2_reg_n28), .ZN(b2_reg_n55) );
  OAI21_X1 b2_reg_U12 ( .B1(b2_reg_n29), .B2(b2_reg_n40), .A(b2_reg_n55), .ZN(
        b2_reg_n37) );
  NAND2_X1 b2_reg_U11 ( .A1(b2[8]), .A2(b2_reg_n28), .ZN(b2_reg_n48) );
  OAI21_X1 b2_reg_U10 ( .B1(b2_reg_n28), .B2(b2_reg_n47), .A(b2_reg_n48), .ZN(
        b2_reg_n30) );
  NAND2_X1 b2_reg_U9 ( .A1(b2[7]), .A2(b2_reg_n28), .ZN(b2_reg_n49) );
  OAI21_X1 b2_reg_U8 ( .B1(b2_reg_n28), .B2(b2_reg_n46), .A(b2_reg_n49), .ZN(
        b2_reg_n31) );
  NAND2_X1 b2_reg_U7 ( .A1(b2[6]), .A2(b2_reg_n28), .ZN(b2_reg_n50) );
  OAI21_X1 b2_reg_U6 ( .B1(b2_reg_n28), .B2(b2_reg_n45), .A(b2_reg_n50), .ZN(
        b2_reg_n32) );
  NAND2_X1 b2_reg_U5 ( .A1(b2_reg_n29), .A2(b2[0]), .ZN(b2_reg_n56) );
  OAI21_X1 b2_reg_U4 ( .B1(b2_reg_n28), .B2(b2_reg_n39), .A(b2_reg_n56), .ZN(
        b2_reg_n38) );
  BUF_X1 b2_reg_U3 ( .A(vin), .Z(b2_reg_n29) );
  BUF_X1 b2_reg_U2 ( .A(vin), .Z(b2_reg_n28) );
  DFFR_X1 b2_reg_q_reg_0_ ( .D(b2_reg_n38), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[0]), .QN(b2_reg_n39) );
  DFFR_X1 b2_reg_q_reg_1_ ( .D(b2_reg_n37), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[1]), .QN(b2_reg_n40) );
  DFFR_X1 b2_reg_q_reg_2_ ( .D(b2_reg_n36), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[2]), .QN(b2_reg_n41) );
  DFFR_X1 b2_reg_q_reg_3_ ( .D(b2_reg_n35), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[3]), .QN(b2_reg_n42) );
  DFFR_X1 b2_reg_q_reg_4_ ( .D(b2_reg_n34), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[4]), .QN(b2_reg_n43) );
  DFFR_X1 b2_reg_q_reg_5_ ( .D(b2_reg_n33), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[5]), .QN(b2_reg_n44) );
  DFFR_X1 b2_reg_q_reg_6_ ( .D(b2_reg_n32), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[6]), .QN(b2_reg_n45) );
  DFFR_X1 b2_reg_q_reg_7_ ( .D(b2_reg_n31), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[7]), .QN(b2_reg_n46) );
  DFFR_X1 b2_reg_q_reg_8_ ( .D(b2_reg_n30), .CK(clk), .RN(rst_n), .Q(
        coeff_b2[8]), .QN(b2_reg_n47) );
  XOR2_X1 fb_mult0_mult_16_U366 ( .A(fb_mult0_mult_16_n281), .B(
        fb_mult0_mult_16_n302), .Z(fb_mult0_mult_16_n335) );
  XNOR2_X1 fb_mult0_mult_16_U365 ( .A(coeff_a1[7]), .B(fb_mult0_mult_16_n281), 
        .ZN(fb_mult0_mult_16_n382) );
  NOR2_X1 fb_mult0_mult_16_U364 ( .A1(fb_mult0_mult_16_n335), .A2(
        fb_mult0_mult_16_n382), .ZN(fb_mult0_mult_16_n100) );
  XNOR2_X1 fb_mult0_mult_16_U363 ( .A(coeff_a1[6]), .B(fb_mult0_mult_16_n281), 
        .ZN(fb_mult0_mult_16_n381) );
  NOR2_X1 fb_mult0_mult_16_U362 ( .A1(fb_mult0_mult_16_n335), .A2(
        fb_mult0_mult_16_n381), .ZN(fb_mult0_mult_16_n101) );
  XNOR2_X1 fb_mult0_mult_16_U361 ( .A(coeff_a1[5]), .B(fb_mult0_mult_16_n281), 
        .ZN(fb_mult0_mult_16_n380) );
  NOR2_X1 fb_mult0_mult_16_U360 ( .A1(fb_mult0_mult_16_n335), .A2(
        fb_mult0_mult_16_n380), .ZN(fb_mult0_mult_16_n102) );
  XNOR2_X1 fb_mult0_mult_16_U359 ( .A(coeff_a1[4]), .B(fb_mult0_mult_16_n281), 
        .ZN(fb_mult0_mult_16_n379) );
  NOR2_X1 fb_mult0_mult_16_U358 ( .A1(fb_mult0_mult_16_n335), .A2(
        fb_mult0_mult_16_n379), .ZN(fb_mult0_mult_16_n103) );
  XNOR2_X1 fb_mult0_mult_16_U357 ( .A(coeff_a1[3]), .B(fb_mult0_mult_16_n281), 
        .ZN(fb_mult0_mult_16_n378) );
  NOR2_X1 fb_mult0_mult_16_U356 ( .A1(fb_mult0_mult_16_n335), .A2(
        fb_mult0_mult_16_n378), .ZN(fb_mult0_mult_16_n104) );
  XNOR2_X1 fb_mult0_mult_16_U355 ( .A(coeff_a1[2]), .B(fb_mult0_mult_16_n281), 
        .ZN(fb_mult0_mult_16_n377) );
  NOR2_X1 fb_mult0_mult_16_U354 ( .A1(fb_mult0_mult_16_n335), .A2(
        fb_mult0_mult_16_n377), .ZN(fb_mult0_mult_16_n105) );
  NOR2_X1 fb_mult0_mult_16_U353 ( .A1(fb_mult0_mult_16_n335), .A2(
        fb_mult0_mult_16_n300), .ZN(fb_mult0_mult_16_n107) );
  XNOR2_X1 fb_mult0_mult_16_U352 ( .A(coeff_a1[8]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n344) );
  XNOR2_X1 fb_mult0_mult_16_U351 ( .A(fb_mult0_mult_16_n302), .B(sw0[6]), .ZN(
        fb_mult0_mult_16_n376) );
  NAND2_X1 fb_mult0_mult_16_U350 ( .A1(fb_mult0_mult_16_n315), .A2(
        fb_mult0_mult_16_n376), .ZN(fb_mult0_mult_16_n313) );
  OAI22_X1 fb_mult0_mult_16_U349 ( .A1(fb_mult0_mult_16_n344), .A2(
        fb_mult0_mult_16_n315), .B1(fb_mult0_mult_16_n313), .B2(
        fb_mult0_mult_16_n344), .ZN(fb_mult0_mult_16_n375) );
  XNOR2_X1 fb_mult0_mult_16_U348 ( .A(coeff_a1[6]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n374) );
  XNOR2_X1 fb_mult0_mult_16_U347 ( .A(coeff_a1[7]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n343) );
  OAI22_X1 fb_mult0_mult_16_U346 ( .A1(fb_mult0_mult_16_n374), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n343), .ZN(fb_mult0_mult_16_n109) );
  XNOR2_X1 fb_mult0_mult_16_U345 ( .A(coeff_a1[5]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n373) );
  OAI22_X1 fb_mult0_mult_16_U344 ( .A1(fb_mult0_mult_16_n373), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n374), .ZN(fb_mult0_mult_16_n110) );
  XNOR2_X1 fb_mult0_mult_16_U343 ( .A(coeff_a1[4]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n372) );
  OAI22_X1 fb_mult0_mult_16_U342 ( .A1(fb_mult0_mult_16_n372), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n373), .ZN(fb_mult0_mult_16_n111) );
  XNOR2_X1 fb_mult0_mult_16_U341 ( .A(coeff_a1[3]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n338) );
  OAI22_X1 fb_mult0_mult_16_U340 ( .A1(fb_mult0_mult_16_n338), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n372), .ZN(fb_mult0_mult_16_n112) );
  XNOR2_X1 fb_mult0_mult_16_U339 ( .A(coeff_a1[1]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n371) );
  XNOR2_X1 fb_mult0_mult_16_U338 ( .A(coeff_a1[2]), .B(fb_mult0_mult_16_n280), 
        .ZN(fb_mult0_mult_16_n337) );
  OAI22_X1 fb_mult0_mult_16_U337 ( .A1(fb_mult0_mult_16_n371), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n337), .ZN(fb_mult0_mult_16_n114) );
  XNOR2_X1 fb_mult0_mult_16_U336 ( .A(fb_mult0_mult_16_n280), .B(coeff_a1[0]), 
        .ZN(fb_mult0_mult_16_n370) );
  OAI22_X1 fb_mult0_mult_16_U335 ( .A1(fb_mult0_mult_16_n370), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n371), .ZN(fb_mult0_mult_16_n115) );
  NOR2_X1 fb_mult0_mult_16_U334 ( .A1(fb_mult0_mult_16_n315), .A2(
        fb_mult0_mult_16_n300), .ZN(fb_mult0_mult_16_n116) );
  XNOR2_X1 fb_mult0_mult_16_U333 ( .A(coeff_a1[8]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n342) );
  XNOR2_X1 fb_mult0_mult_16_U332 ( .A(fb_mult0_mult_16_n303), .B(sw0[4]), .ZN(
        fb_mult0_mult_16_n369) );
  NAND2_X1 fb_mult0_mult_16_U331 ( .A1(fb_mult0_mult_16_n312), .A2(
        fb_mult0_mult_16_n369), .ZN(fb_mult0_mult_16_n310) );
  OAI22_X1 fb_mult0_mult_16_U330 ( .A1(fb_mult0_mult_16_n342), .A2(
        fb_mult0_mult_16_n312), .B1(fb_mult0_mult_16_n310), .B2(
        fb_mult0_mult_16_n342), .ZN(fb_mult0_mult_16_n368) );
  XNOR2_X1 fb_mult0_mult_16_U329 ( .A(coeff_a1[6]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n367) );
  XNOR2_X1 fb_mult0_mult_16_U328 ( .A(coeff_a1[7]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n341) );
  OAI22_X1 fb_mult0_mult_16_U327 ( .A1(fb_mult0_mult_16_n367), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n341), .ZN(fb_mult0_mult_16_n118) );
  XNOR2_X1 fb_mult0_mult_16_U326 ( .A(coeff_a1[5]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n366) );
  OAI22_X1 fb_mult0_mult_16_U325 ( .A1(fb_mult0_mult_16_n366), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n367), .ZN(fb_mult0_mult_16_n119) );
  XNOR2_X1 fb_mult0_mult_16_U324 ( .A(coeff_a1[4]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n365) );
  OAI22_X1 fb_mult0_mult_16_U323 ( .A1(fb_mult0_mult_16_n365), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n366), .ZN(fb_mult0_mult_16_n120) );
  XNOR2_X1 fb_mult0_mult_16_U322 ( .A(coeff_a1[3]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n364) );
  OAI22_X1 fb_mult0_mult_16_U321 ( .A1(fb_mult0_mult_16_n364), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n365), .ZN(fb_mult0_mult_16_n121) );
  XNOR2_X1 fb_mult0_mult_16_U320 ( .A(coeff_a1[2]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n363) );
  OAI22_X1 fb_mult0_mult_16_U319 ( .A1(fb_mult0_mult_16_n363), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n364), .ZN(fb_mult0_mult_16_n122) );
  XNOR2_X1 fb_mult0_mult_16_U318 ( .A(coeff_a1[1]), .B(fb_mult0_mult_16_n279), 
        .ZN(fb_mult0_mult_16_n362) );
  OAI22_X1 fb_mult0_mult_16_U317 ( .A1(fb_mult0_mult_16_n362), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n363), .ZN(fb_mult0_mult_16_n123) );
  XNOR2_X1 fb_mult0_mult_16_U316 ( .A(fb_mult0_mult_16_n279), .B(coeff_a1[0]), 
        .ZN(fb_mult0_mult_16_n361) );
  OAI22_X1 fb_mult0_mult_16_U315 ( .A1(fb_mult0_mult_16_n361), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n362), .ZN(fb_mult0_mult_16_n124) );
  NOR2_X1 fb_mult0_mult_16_U314 ( .A1(fb_mult0_mult_16_n312), .A2(
        fb_mult0_mult_16_n300), .ZN(fb_mult0_mult_16_n125) );
  XNOR2_X1 fb_mult0_mult_16_U313 ( .A(coeff_a1[8]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n340) );
  XOR2_X1 fb_mult0_mult_16_U312 ( .A(sw0[2]), .B(fb_mult0_mult_16_n277), .Z(
        fb_mult0_mult_16_n326) );
  XNOR2_X1 fb_mult0_mult_16_U311 ( .A(fb_mult0_mult_16_n304), .B(sw0[2]), .ZN(
        fb_mult0_mult_16_n360) );
  NAND2_X1 fb_mult0_mult_16_U310 ( .A1(fb_mult0_mult_16_n305), .A2(
        fb_mult0_mult_16_n360), .ZN(fb_mult0_mult_16_n324) );
  OAI22_X1 fb_mult0_mult_16_U309 ( .A1(fb_mult0_mult_16_n340), .A2(
        fb_mult0_mult_16_n305), .B1(fb_mult0_mult_16_n324), .B2(
        fb_mult0_mult_16_n340), .ZN(fb_mult0_mult_16_n359) );
  XNOR2_X1 fb_mult0_mult_16_U308 ( .A(coeff_a1[6]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n358) );
  XNOR2_X1 fb_mult0_mult_16_U307 ( .A(coeff_a1[7]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n339) );
  OAI22_X1 fb_mult0_mult_16_U306 ( .A1(fb_mult0_mult_16_n358), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n339), .ZN(fb_mult0_mult_16_n127) );
  XNOR2_X1 fb_mult0_mult_16_U305 ( .A(coeff_a1[5]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n357) );
  OAI22_X1 fb_mult0_mult_16_U304 ( .A1(fb_mult0_mult_16_n357), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n358), .ZN(fb_mult0_mult_16_n128) );
  XNOR2_X1 fb_mult0_mult_16_U303 ( .A(coeff_a1[4]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n356) );
  OAI22_X1 fb_mult0_mult_16_U302 ( .A1(fb_mult0_mult_16_n356), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n357), .ZN(fb_mult0_mult_16_n129) );
  XNOR2_X1 fb_mult0_mult_16_U301 ( .A(coeff_a1[3]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n355) );
  OAI22_X1 fb_mult0_mult_16_U300 ( .A1(fb_mult0_mult_16_n355), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n356), .ZN(fb_mult0_mult_16_n130) );
  XNOR2_X1 fb_mult0_mult_16_U299 ( .A(coeff_a1[2]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n354) );
  OAI22_X1 fb_mult0_mult_16_U298 ( .A1(fb_mult0_mult_16_n354), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n355), .ZN(fb_mult0_mult_16_n131) );
  XNOR2_X1 fb_mult0_mult_16_U297 ( .A(coeff_a1[1]), .B(fb_mult0_mult_16_n278), 
        .ZN(fb_mult0_mult_16_n353) );
  OAI22_X1 fb_mult0_mult_16_U296 ( .A1(fb_mult0_mult_16_n353), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n354), .ZN(fb_mult0_mult_16_n132) );
  XNOR2_X1 fb_mult0_mult_16_U295 ( .A(fb_mult0_mult_16_n278), .B(coeff_a1[0]), 
        .ZN(fb_mult0_mult_16_n352) );
  OAI22_X1 fb_mult0_mult_16_U294 ( .A1(fb_mult0_mult_16_n352), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n353), .ZN(fb_mult0_mult_16_n133) );
  XNOR2_X1 fb_mult0_mult_16_U293 ( .A(coeff_a1[8]), .B(fb_mult0_mult_16_n277), 
        .ZN(fb_mult0_mult_16_n350) );
  NAND2_X1 fb_mult0_mult_16_U292 ( .A1(fb_mult0_mult_16_n277), .A2(
        fb_mult0_mult_16_n306), .ZN(fb_mult0_mult_16_n331) );
  OAI22_X1 fb_mult0_mult_16_U291 ( .A1(fb_mult0_mult_16_n306), .A2(
        fb_mult0_mult_16_n350), .B1(fb_mult0_mult_16_n331), .B2(
        fb_mult0_mult_16_n350), .ZN(fb_mult0_mult_16_n351) );
  XNOR2_X1 fb_mult0_mult_16_U290 ( .A(coeff_a1[7]), .B(fb_mult0_mult_16_n277), 
        .ZN(fb_mult0_mult_16_n349) );
  OAI22_X1 fb_mult0_mult_16_U289 ( .A1(fb_mult0_mult_16_n349), .A2(
        fb_mult0_mult_16_n331), .B1(fb_mult0_mult_16_n350), .B2(
        fb_mult0_mult_16_n306), .ZN(fb_mult0_mult_16_n136) );
  XNOR2_X1 fb_mult0_mult_16_U288 ( .A(coeff_a1[6]), .B(fb_mult0_mult_16_n277), 
        .ZN(fb_mult0_mult_16_n348) );
  OAI22_X1 fb_mult0_mult_16_U287 ( .A1(fb_mult0_mult_16_n348), .A2(
        fb_mult0_mult_16_n331), .B1(fb_mult0_mult_16_n349), .B2(
        fb_mult0_mult_16_n306), .ZN(fb_mult0_mult_16_n137) );
  XNOR2_X1 fb_mult0_mult_16_U286 ( .A(coeff_a1[5]), .B(fb_mult0_mult_16_n277), 
        .ZN(fb_mult0_mult_16_n347) );
  OAI22_X1 fb_mult0_mult_16_U285 ( .A1(fb_mult0_mult_16_n347), .A2(
        fb_mult0_mult_16_n331), .B1(fb_mult0_mult_16_n348), .B2(
        fb_mult0_mult_16_n306), .ZN(fb_mult0_mult_16_n138) );
  XNOR2_X1 fb_mult0_mult_16_U284 ( .A(coeff_a1[4]), .B(fb_mult0_mult_16_n277), 
        .ZN(fb_mult0_mult_16_n346) );
  OAI22_X1 fb_mult0_mult_16_U283 ( .A1(fb_mult0_mult_16_n346), .A2(
        fb_mult0_mult_16_n331), .B1(fb_mult0_mult_16_n347), .B2(
        fb_mult0_mult_16_n306), .ZN(fb_mult0_mult_16_n139) );
  XNOR2_X1 fb_mult0_mult_16_U282 ( .A(coeff_a1[3]), .B(fb_mult0_mult_16_n277), 
        .ZN(fb_mult0_mult_16_n345) );
  OAI22_X1 fb_mult0_mult_16_U281 ( .A1(fb_mult0_mult_16_n345), .A2(
        fb_mult0_mult_16_n331), .B1(fb_mult0_mult_16_n346), .B2(
        fb_mult0_mult_16_n306), .ZN(fb_mult0_mult_16_n140) );
  XNOR2_X1 fb_mult0_mult_16_U280 ( .A(coeff_a1[2]), .B(fb_mult0_mult_16_n277), 
        .ZN(fb_mult0_mult_16_n332) );
  OAI22_X1 fb_mult0_mult_16_U279 ( .A1(fb_mult0_mult_16_n332), .A2(
        fb_mult0_mult_16_n331), .B1(fb_mult0_mult_16_n345), .B2(
        fb_mult0_mult_16_n306), .ZN(fb_mult0_mult_16_n141) );
  OAI22_X1 fb_mult0_mult_16_U278 ( .A1(fb_mult0_mult_16_n343), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n344), .ZN(fb_mult0_mult_16_n22) );
  OAI22_X1 fb_mult0_mult_16_U277 ( .A1(fb_mult0_mult_16_n341), .A2(
        fb_mult0_mult_16_n310), .B1(fb_mult0_mult_16_n312), .B2(
        fb_mult0_mult_16_n342), .ZN(fb_mult0_mult_16_n32) );
  OAI22_X1 fb_mult0_mult_16_U276 ( .A1(fb_mult0_mult_16_n339), .A2(
        fb_mult0_mult_16_n324), .B1(fb_mult0_mult_16_n305), .B2(
        fb_mult0_mult_16_n340), .ZN(fb_mult0_mult_16_n46) );
  OAI22_X1 fb_mult0_mult_16_U275 ( .A1(fb_mult0_mult_16_n337), .A2(
        fb_mult0_mult_16_n313), .B1(fb_mult0_mult_16_n315), .B2(
        fb_mult0_mult_16_n338), .ZN(fb_mult0_mult_16_n336) );
  XNOR2_X1 fb_mult0_mult_16_U274 ( .A(fb_mult0_mult_16_n299), .B(
        fb_mult0_mult_16_n281), .ZN(fb_mult0_mult_16_n334) );
  NAND2_X1 fb_mult0_mult_16_U273 ( .A1(fb_mult0_mult_16_n334), .A2(
        fb_mult0_mult_16_n301), .ZN(fb_mult0_mult_16_n333) );
  NAND2_X1 fb_mult0_mult_16_U272 ( .A1(fb_mult0_mult_16_n297), .A2(
        fb_mult0_mult_16_n333), .ZN(fb_mult0_mult_16_n54) );
  XNOR2_X1 fb_mult0_mult_16_U271 ( .A(fb_mult0_mult_16_n333), .B(
        fb_mult0_mult_16_n297), .ZN(fb_mult0_mult_16_n55) );
  OAI22_X1 fb_mult0_mult_16_U270 ( .A1(coeff_a1[1]), .A2(fb_mult0_mult_16_n331), .B1(fb_mult0_mult_16_n332), .B2(fb_mult0_mult_16_n306), .ZN(
        fb_mult0_mult_16_n330) );
  NAND2_X1 fb_mult0_mult_16_U269 ( .A1(fb_mult0_mult_16_n326), .A2(
        fb_mult0_mult_16_n330), .ZN(fb_mult0_mult_16_n328) );
  NAND3_X1 fb_mult0_mult_16_U268 ( .A1(fb_mult0_mult_16_n330), .A2(
        fb_mult0_mult_16_n299), .A3(fb_mult0_mult_16_n277), .ZN(
        fb_mult0_mult_16_n329) );
  MUX2_X1 fb_mult0_mult_16_U267 ( .A(fb_mult0_mult_16_n328), .B(
        fb_mult0_mult_16_n329), .S(fb_mult0_mult_16_n300), .Z(
        fb_mult0_mult_16_n327) );
  NAND3_X1 fb_mult0_mult_16_U266 ( .A1(fb_mult0_mult_16_n326), .A2(
        fb_mult0_mult_16_n300), .A3(fb_mult0_mult_16_n278), .ZN(
        fb_mult0_mult_16_n325) );
  OAI21_X1 fb_mult0_mult_16_U265 ( .B1(fb_mult0_mult_16_n304), .B2(
        fb_mult0_mult_16_n324), .A(fb_mult0_mult_16_n325), .ZN(
        fb_mult0_mult_16_n323) );
  AOI222_X1 fb_mult0_mult_16_U264 ( .A1(fb_mult0_mult_16_n298), .A2(
        fb_mult0_mult_16_n79), .B1(fb_mult0_mult_16_n323), .B2(
        fb_mult0_mult_16_n298), .C1(fb_mult0_mult_16_n323), .C2(
        fb_mult0_mult_16_n79), .ZN(fb_mult0_mult_16_n322) );
  AOI222_X1 fb_mult0_mult_16_U263 ( .A1(fb_mult0_mult_16_n296), .A2(
        fb_mult0_mult_16_n77), .B1(fb_mult0_mult_16_n296), .B2(
        fb_mult0_mult_16_n78), .C1(fb_mult0_mult_16_n78), .C2(
        fb_mult0_mult_16_n77), .ZN(fb_mult0_mult_16_n321) );
  AOI222_X1 fb_mult0_mult_16_U262 ( .A1(fb_mult0_mult_16_n295), .A2(
        fb_mult0_mult_16_n73), .B1(fb_mult0_mult_16_n295), .B2(
        fb_mult0_mult_16_n76), .C1(fb_mult0_mult_16_n76), .C2(
        fb_mult0_mult_16_n73), .ZN(fb_mult0_mult_16_n320) );
  AOI222_X1 fb_mult0_mult_16_U261 ( .A1(fb_mult0_mult_16_n294), .A2(
        fb_mult0_mult_16_n69), .B1(fb_mult0_mult_16_n294), .B2(
        fb_mult0_mult_16_n72), .C1(fb_mult0_mult_16_n72), .C2(
        fb_mult0_mult_16_n69), .ZN(fb_mult0_mult_16_n319) );
  AOI222_X1 fb_mult0_mult_16_U260 ( .A1(fb_mult0_mult_16_n293), .A2(
        fb_mult0_mult_16_n63), .B1(fb_mult0_mult_16_n293), .B2(
        fb_mult0_mult_16_n68), .C1(fb_mult0_mult_16_n68), .C2(
        fb_mult0_mult_16_n63), .ZN(fb_mult0_mult_16_n318) );
  OAI222_X1 fb_mult0_mult_16_U259 ( .A1(fb_mult0_mult_16_n318), .A2(
        fb_mult0_mult_16_n285), .B1(fb_mult0_mult_16_n318), .B2(
        fb_mult0_mult_16_n292), .C1(fb_mult0_mult_16_n292), .C2(
        fb_mult0_mult_16_n285), .ZN(fb_mult0_mult_16_n317) );
  AOI222_X1 fb_mult0_mult_16_U258 ( .A1(fb_mult0_mult_16_n317), .A2(
        fb_mult0_mult_16_n49), .B1(fb_mult0_mult_16_n317), .B2(
        fb_mult0_mult_16_n56), .C1(fb_mult0_mult_16_n56), .C2(
        fb_mult0_mult_16_n49), .ZN(fb_mult0_mult_16_n316) );
  OAI222_X1 fb_mult0_mult_16_U257 ( .A1(fb_mult0_mult_16_n316), .A2(
        fb_mult0_mult_16_n282), .B1(fb_mult0_mult_16_n316), .B2(
        fb_mult0_mult_16_n283), .C1(fb_mult0_mult_16_n283), .C2(
        fb_mult0_mult_16_n282), .ZN(fb_mult0_mult_16_n7) );
  AND3_X1 fb_mult0_mult_16_U256 ( .A1(fb_mult0_mult_16_n281), .A2(
        fb_mult0_mult_16_n300), .A3(fb_mult0_mult_16_n301), .ZN(
        fb_mult0_mult_16_n94) );
  OR3_X1 fb_mult0_mult_16_U255 ( .A1(fb_mult0_mult_16_n315), .A2(coeff_a1[0]), 
        .A3(fb_mult0_mult_16_n302), .ZN(fb_mult0_mult_16_n314) );
  OAI21_X1 fb_mult0_mult_16_U254 ( .B1(fb_mult0_mult_16_n302), .B2(
        fb_mult0_mult_16_n313), .A(fb_mult0_mult_16_n314), .ZN(
        fb_mult0_mult_16_n95) );
  OR3_X1 fb_mult0_mult_16_U253 ( .A1(fb_mult0_mult_16_n312), .A2(coeff_a1[0]), 
        .A3(fb_mult0_mult_16_n303), .ZN(fb_mult0_mult_16_n311) );
  OAI21_X1 fb_mult0_mult_16_U252 ( .B1(fb_mult0_mult_16_n303), .B2(
        fb_mult0_mult_16_n310), .A(fb_mult0_mult_16_n311), .ZN(
        fb_mult0_mult_16_n96) );
  NOR2_X1 fb_mult0_mult_16_U251 ( .A1(fb_mult0_mult_16_n306), .A2(
        fb_mult0_mult_16_n300), .ZN(fb_mult0_fract_product_0_) );
  XOR2_X1 fb_mult0_mult_16_U250 ( .A(coeff_a1[8]), .B(fb_mult0_mult_16_n281), 
        .Z(fb_mult0_mult_16_n309) );
  NAND2_X1 fb_mult0_mult_16_U249 ( .A1(fb_mult0_mult_16_n309), .A2(
        fb_mult0_mult_16_n301), .ZN(fb_mult0_mult_16_n307) );
  XOR2_X1 fb_mult0_mult_16_U248 ( .A(fb_mult0_mult_16_n2), .B(
        fb_mult0_mult_16_n18), .Z(fb_mult0_mult_16_n308) );
  XOR2_X1 fb_mult0_mult_16_U247 ( .A(fb_mult0_mult_16_n307), .B(
        fb_mult0_mult_16_n308), .Z(fb0[16]) );
  INV_X1 fb_mult0_mult_16_U246 ( .A(fb_mult0_mult_16_n375), .ZN(
        fb_mult0_mult_16_n290) );
  INV_X1 fb_mult0_mult_16_U245 ( .A(coeff_a1[1]), .ZN(fb_mult0_mult_16_n299)
         );
  BUF_X1 fb_mult0_mult_16_U244 ( .A(sw0[8]), .Z(fb_mult0_mult_16_n281) );
  BUF_X1 fb_mult0_mult_16_U243 ( .A(sw0[5]), .Z(fb_mult0_mult_16_n279) );
  BUF_X1 fb_mult0_mult_16_U242 ( .A(sw0[7]), .Z(fb_mult0_mult_16_n280) );
  BUF_X1 fb_mult0_mult_16_U241 ( .A(sw0[3]), .Z(fb_mult0_mult_16_n278) );
  INV_X1 fb_mult0_mult_16_U240 ( .A(fb_mult0_mult_16_n22), .ZN(
        fb_mult0_mult_16_n291) );
  INV_X1 fb_mult0_mult_16_U239 ( .A(coeff_a1[0]), .ZN(fb_mult0_mult_16_n300)
         );
  INV_X1 fb_mult0_mult_16_U238 ( .A(sw0[0]), .ZN(fb_mult0_mult_16_n306) );
  XOR2_X1 fb_mult0_mult_16_U237 ( .A(sw0[6]), .B(fb_mult0_mult_16_n303), .Z(
        fb_mult0_mult_16_n315) );
  XOR2_X1 fb_mult0_mult_16_U236 ( .A(sw0[4]), .B(fb_mult0_mult_16_n304), .Z(
        fb_mult0_mult_16_n312) );
  BUF_X1 fb_mult0_mult_16_U235 ( .A(sw0[1]), .Z(fb_mult0_mult_16_n277) );
  INV_X1 fb_mult0_mult_16_U234 ( .A(fb_mult0_mult_16_n336), .ZN(
        fb_mult0_mult_16_n297) );
  INV_X1 fb_mult0_mult_16_U233 ( .A(fb_mult0_mult_16_n280), .ZN(
        fb_mult0_mult_16_n302) );
  INV_X1 fb_mult0_mult_16_U232 ( .A(fb_mult0_mult_16_n278), .ZN(
        fb_mult0_mult_16_n304) );
  INV_X1 fb_mult0_mult_16_U231 ( .A(fb_mult0_mult_16_n279), .ZN(
        fb_mult0_mult_16_n303) );
  INV_X1 fb_mult0_mult_16_U230 ( .A(fb_mult0_mult_16_n368), .ZN(
        fb_mult0_mult_16_n288) );
  INV_X1 fb_mult0_mult_16_U229 ( .A(fb_mult0_mult_16_n359), .ZN(
        fb_mult0_mult_16_n286) );
  INV_X1 fb_mult0_mult_16_U228 ( .A(fb_mult0_mult_16_n32), .ZN(
        fb_mult0_mult_16_n289) );
  INV_X1 fb_mult0_mult_16_U227 ( .A(fb_mult0_mult_16_n351), .ZN(
        fb_mult0_mult_16_n284) );
  INV_X1 fb_mult0_mult_16_U226 ( .A(fb_mult0_mult_16_n327), .ZN(
        fb_mult0_mult_16_n298) );
  INV_X1 fb_mult0_mult_16_U225 ( .A(fb_mult0_mult_16_n322), .ZN(
        fb_mult0_mult_16_n296) );
  INV_X1 fb_mult0_mult_16_U224 ( .A(fb_mult0_mult_16_n321), .ZN(
        fb_mult0_mult_16_n295) );
  INV_X1 fb_mult0_mult_16_U223 ( .A(fb_mult0_mult_16_n320), .ZN(
        fb_mult0_mult_16_n294) );
  INV_X1 fb_mult0_mult_16_U222 ( .A(fb_mult0_mult_16_n326), .ZN(
        fb_mult0_mult_16_n305) );
  INV_X1 fb_mult0_mult_16_U221 ( .A(fb_mult0_mult_16_n319), .ZN(
        fb_mult0_mult_16_n293) );
  INV_X1 fb_mult0_mult_16_U220 ( .A(fb_mult0_mult_16_n46), .ZN(
        fb_mult0_mult_16_n287) );
  INV_X1 fb_mult0_mult_16_U219 ( .A(fb_mult0_mult_16_n335), .ZN(
        fb_mult0_mult_16_n301) );
  INV_X1 fb_mult0_mult_16_U218 ( .A(fb_mult0_mult_16_n57), .ZN(
        fb_mult0_mult_16_n285) );
  INV_X1 fb_mult0_mult_16_U217 ( .A(fb_mult0_mult_16_n62), .ZN(
        fb_mult0_mult_16_n292) );
  INV_X1 fb_mult0_mult_16_U216 ( .A(fb_mult0_mult_16_n41), .ZN(
        fb_mult0_mult_16_n282) );
  INV_X1 fb_mult0_mult_16_U215 ( .A(fb_mult0_mult_16_n48), .ZN(
        fb_mult0_mult_16_n283) );
  HA_X1 fb_mult0_mult_16_U50 ( .A(fb_mult0_mult_16_n133), .B(
        fb_mult0_mult_16_n141), .CO(fb_mult0_mult_16_n78), .S(
        fb_mult0_mult_16_n79) );
  FA_X1 fb_mult0_mult_16_U49 ( .A(fb_mult0_mult_16_n140), .B(
        fb_mult0_mult_16_n125), .CI(fb_mult0_mult_16_n132), .CO(
        fb_mult0_mult_16_n76), .S(fb_mult0_mult_16_n77) );
  HA_X1 fb_mult0_mult_16_U48 ( .A(fb_mult0_mult_16_n96), .B(
        fb_mult0_mult_16_n124), .CO(fb_mult0_mult_16_n74), .S(
        fb_mult0_mult_16_n75) );
  FA_X1 fb_mult0_mult_16_U47 ( .A(fb_mult0_mult_16_n131), .B(
        fb_mult0_mult_16_n139), .CI(fb_mult0_mult_16_n75), .CO(
        fb_mult0_mult_16_n72), .S(fb_mult0_mult_16_n73) );
  FA_X1 fb_mult0_mult_16_U46 ( .A(fb_mult0_mult_16_n138), .B(
        fb_mult0_mult_16_n116), .CI(fb_mult0_mult_16_n130), .CO(
        fb_mult0_mult_16_n70), .S(fb_mult0_mult_16_n71) );
  FA_X1 fb_mult0_mult_16_U45 ( .A(fb_mult0_mult_16_n74), .B(
        fb_mult0_mult_16_n123), .CI(fb_mult0_mult_16_n71), .CO(
        fb_mult0_mult_16_n68), .S(fb_mult0_mult_16_n69) );
  HA_X1 fb_mult0_mult_16_U44 ( .A(fb_mult0_mult_16_n95), .B(
        fb_mult0_mult_16_n115), .CO(fb_mult0_mult_16_n66), .S(
        fb_mult0_mult_16_n67) );
  FA_X1 fb_mult0_mult_16_U43 ( .A(fb_mult0_mult_16_n122), .B(
        fb_mult0_mult_16_n137), .CI(fb_mult0_mult_16_n129), .CO(
        fb_mult0_mult_16_n64), .S(fb_mult0_mult_16_n65) );
  FA_X1 fb_mult0_mult_16_U42 ( .A(fb_mult0_mult_16_n70), .B(
        fb_mult0_mult_16_n67), .CI(fb_mult0_mult_16_n65), .CO(
        fb_mult0_mult_16_n62), .S(fb_mult0_mult_16_n63) );
  FA_X1 fb_mult0_mult_16_U41 ( .A(fb_mult0_mult_16_n121), .B(
        fb_mult0_mult_16_n107), .CI(fb_mult0_mult_16_n136), .CO(
        fb_mult0_mult_16_n60), .S(fb_mult0_mult_16_n61) );
  FA_X1 fb_mult0_mult_16_U40 ( .A(fb_mult0_mult_16_n114), .B(
        fb_mult0_mult_16_n128), .CI(fb_mult0_mult_16_n66), .CO(
        fb_mult0_mult_16_n58), .S(fb_mult0_mult_16_n59) );
  FA_X1 fb_mult0_mult_16_U39 ( .A(fb_mult0_mult_16_n61), .B(
        fb_mult0_mult_16_n64), .CI(fb_mult0_mult_16_n59), .CO(
        fb_mult0_mult_16_n56), .S(fb_mult0_mult_16_n57) );
  FA_X1 fb_mult0_mult_16_U36 ( .A(fb_mult0_mult_16_n94), .B(
        fb_mult0_mult_16_n120), .CI(fb_mult0_mult_16_n284), .CO(
        fb_mult0_mult_16_n52), .S(fb_mult0_mult_16_n53) );
  FA_X1 fb_mult0_mult_16_U35 ( .A(fb_mult0_mult_16_n55), .B(
        fb_mult0_mult_16_n127), .CI(fb_mult0_mult_16_n60), .CO(
        fb_mult0_mult_16_n50), .S(fb_mult0_mult_16_n51) );
  FA_X1 fb_mult0_mult_16_U34 ( .A(fb_mult0_mult_16_n53), .B(
        fb_mult0_mult_16_n58), .CI(fb_mult0_mult_16_n51), .CO(
        fb_mult0_mult_16_n48), .S(fb_mult0_mult_16_n49) );
  FA_X1 fb_mult0_mult_16_U32 ( .A(fb_mult0_mult_16_n112), .B(
        fb_mult0_mult_16_n105), .CI(fb_mult0_mult_16_n119), .CO(
        fb_mult0_mult_16_n44), .S(fb_mult0_mult_16_n45) );
  FA_X1 fb_mult0_mult_16_U31 ( .A(fb_mult0_mult_16_n54), .B(
        fb_mult0_mult_16_n287), .CI(fb_mult0_mult_16_n52), .CO(
        fb_mult0_mult_16_n42), .S(fb_mult0_mult_16_n43) );
  FA_X1 fb_mult0_mult_16_U30 ( .A(fb_mult0_mult_16_n50), .B(
        fb_mult0_mult_16_n45), .CI(fb_mult0_mult_16_n43), .CO(
        fb_mult0_mult_16_n40), .S(fb_mult0_mult_16_n41) );
  FA_X1 fb_mult0_mult_16_U29 ( .A(fb_mult0_mult_16_n111), .B(
        fb_mult0_mult_16_n104), .CI(fb_mult0_mult_16_n286), .CO(
        fb_mult0_mult_16_n38), .S(fb_mult0_mult_16_n39) );
  FA_X1 fb_mult0_mult_16_U28 ( .A(fb_mult0_mult_16_n46), .B(
        fb_mult0_mult_16_n118), .CI(fb_mult0_mult_16_n44), .CO(
        fb_mult0_mult_16_n36), .S(fb_mult0_mult_16_n37) );
  FA_X1 fb_mult0_mult_16_U27 ( .A(fb_mult0_mult_16_n42), .B(
        fb_mult0_mult_16_n39), .CI(fb_mult0_mult_16_n37), .CO(
        fb_mult0_mult_16_n34), .S(fb_mult0_mult_16_n35) );
  FA_X1 fb_mult0_mult_16_U25 ( .A(fb_mult0_mult_16_n103), .B(
        fb_mult0_mult_16_n110), .CI(fb_mult0_mult_16_n289), .CO(
        fb_mult0_mult_16_n30), .S(fb_mult0_mult_16_n31) );
  FA_X1 fb_mult0_mult_16_U24 ( .A(fb_mult0_mult_16_n31), .B(
        fb_mult0_mult_16_n38), .CI(fb_mult0_mult_16_n36), .CO(
        fb_mult0_mult_16_n28), .S(fb_mult0_mult_16_n29) );
  FA_X1 fb_mult0_mult_16_U23 ( .A(fb_mult0_mult_16_n109), .B(
        fb_mult0_mult_16_n32), .CI(fb_mult0_mult_16_n288), .CO(
        fb_mult0_mult_16_n26), .S(fb_mult0_mult_16_n27) );
  FA_X1 fb_mult0_mult_16_U22 ( .A(fb_mult0_mult_16_n30), .B(
        fb_mult0_mult_16_n102), .CI(fb_mult0_mult_16_n27), .CO(
        fb_mult0_mult_16_n24), .S(fb_mult0_mult_16_n25) );
  FA_X1 fb_mult0_mult_16_U20 ( .A(fb_mult0_mult_16_n291), .B(
        fb_mult0_mult_16_n101), .CI(fb_mult0_mult_16_n26), .CO(
        fb_mult0_mult_16_n20), .S(fb_mult0_mult_16_n21) );
  FA_X1 fb_mult0_mult_16_U19 ( .A(fb_mult0_mult_16_n100), .B(
        fb_mult0_mult_16_n22), .CI(fb_mult0_mult_16_n290), .CO(
        fb_mult0_mult_16_n18), .S(fb_mult0_mult_16_n19) );
  FA_X1 fb_mult0_mult_16_U7 ( .A(fb_mult0_mult_16_n35), .B(
        fb_mult0_mult_16_n40), .CI(fb_mult0_mult_16_n7), .CO(
        fb_mult0_mult_16_n6), .S(fb0[11]) );
  FA_X1 fb_mult0_mult_16_U6 ( .A(fb_mult0_mult_16_n29), .B(
        fb_mult0_mult_16_n34), .CI(fb_mult0_mult_16_n6), .CO(
        fb_mult0_mult_16_n5), .S(fb0[12]) );
  FA_X1 fb_mult0_mult_16_U5 ( .A(fb_mult0_mult_16_n25), .B(
        fb_mult0_mult_16_n28), .CI(fb_mult0_mult_16_n5), .CO(
        fb_mult0_mult_16_n4), .S(fb0[13]) );
  FA_X1 fb_mult0_mult_16_U4 ( .A(fb_mult0_mult_16_n21), .B(
        fb_mult0_mult_16_n24), .CI(fb_mult0_mult_16_n4), .CO(
        fb_mult0_mult_16_n3), .S(fb0[14]) );
  FA_X1 fb_mult0_mult_16_U3 ( .A(fb_mult0_mult_16_n20), .B(
        fb_mult0_mult_16_n19), .CI(fb_mult0_mult_16_n3), .CO(
        fb_mult0_mult_16_n2), .S(fb0[15]) );
  XOR2_X1 fb_mult1_mult_16_U362 ( .A(sw1[8]), .B(fb_mult1_mult_16_n298), .Z(
        fb_mult1_mult_16_n331) );
  XNOR2_X1 fb_mult1_mult_16_U361 ( .A(coeff_a2[7]), .B(sw1[8]), .ZN(
        fb_mult1_mult_16_n378) );
  NOR2_X1 fb_mult1_mult_16_U360 ( .A1(fb_mult1_mult_16_n331), .A2(
        fb_mult1_mult_16_n378), .ZN(fb_mult1_mult_16_n100) );
  XNOR2_X1 fb_mult1_mult_16_U359 ( .A(coeff_a2[6]), .B(sw1[8]), .ZN(
        fb_mult1_mult_16_n377) );
  NOR2_X1 fb_mult1_mult_16_U358 ( .A1(fb_mult1_mult_16_n331), .A2(
        fb_mult1_mult_16_n377), .ZN(fb_mult1_mult_16_n101) );
  XNOR2_X1 fb_mult1_mult_16_U357 ( .A(coeff_a2[5]), .B(sw1[8]), .ZN(
        fb_mult1_mult_16_n376) );
  NOR2_X1 fb_mult1_mult_16_U356 ( .A1(fb_mult1_mult_16_n331), .A2(
        fb_mult1_mult_16_n376), .ZN(fb_mult1_mult_16_n102) );
  XNOR2_X1 fb_mult1_mult_16_U355 ( .A(coeff_a2[4]), .B(sw1[8]), .ZN(
        fb_mult1_mult_16_n375) );
  NOR2_X1 fb_mult1_mult_16_U354 ( .A1(fb_mult1_mult_16_n331), .A2(
        fb_mult1_mult_16_n375), .ZN(fb_mult1_mult_16_n103) );
  XNOR2_X1 fb_mult1_mult_16_U353 ( .A(coeff_a2[3]), .B(sw1[8]), .ZN(
        fb_mult1_mult_16_n374) );
  NOR2_X1 fb_mult1_mult_16_U352 ( .A1(fb_mult1_mult_16_n331), .A2(
        fb_mult1_mult_16_n374), .ZN(fb_mult1_mult_16_n104) );
  XNOR2_X1 fb_mult1_mult_16_U351 ( .A(coeff_a2[2]), .B(sw1[8]), .ZN(
        fb_mult1_mult_16_n373) );
  NOR2_X1 fb_mult1_mult_16_U350 ( .A1(fb_mult1_mult_16_n331), .A2(
        fb_mult1_mult_16_n373), .ZN(fb_mult1_mult_16_n105) );
  NOR2_X1 fb_mult1_mult_16_U349 ( .A1(fb_mult1_mult_16_n331), .A2(
        fb_mult1_mult_16_n296), .ZN(fb_mult1_mult_16_n107) );
  XNOR2_X1 fb_mult1_mult_16_U348 ( .A(coeff_a2[8]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n340) );
  XNOR2_X1 fb_mult1_mult_16_U347 ( .A(fb_mult1_mult_16_n298), .B(sw1[6]), .ZN(
        fb_mult1_mult_16_n372) );
  NAND2_X1 fb_mult1_mult_16_U346 ( .A1(fb_mult1_mult_16_n311), .A2(
        fb_mult1_mult_16_n372), .ZN(fb_mult1_mult_16_n309) );
  OAI22_X1 fb_mult1_mult_16_U345 ( .A1(fb_mult1_mult_16_n340), .A2(
        fb_mult1_mult_16_n311), .B1(fb_mult1_mult_16_n309), .B2(
        fb_mult1_mult_16_n340), .ZN(fb_mult1_mult_16_n371) );
  XNOR2_X1 fb_mult1_mult_16_U344 ( .A(coeff_a2[6]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n370) );
  XNOR2_X1 fb_mult1_mult_16_U343 ( .A(coeff_a2[7]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n339) );
  OAI22_X1 fb_mult1_mult_16_U342 ( .A1(fb_mult1_mult_16_n370), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n339), .ZN(fb_mult1_mult_16_n109) );
  XNOR2_X1 fb_mult1_mult_16_U341 ( .A(coeff_a2[5]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n369) );
  OAI22_X1 fb_mult1_mult_16_U340 ( .A1(fb_mult1_mult_16_n369), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n370), .ZN(fb_mult1_mult_16_n110) );
  XNOR2_X1 fb_mult1_mult_16_U339 ( .A(coeff_a2[4]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n368) );
  OAI22_X1 fb_mult1_mult_16_U338 ( .A1(fb_mult1_mult_16_n368), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n369), .ZN(fb_mult1_mult_16_n111) );
  XNOR2_X1 fb_mult1_mult_16_U337 ( .A(coeff_a2[3]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n334) );
  OAI22_X1 fb_mult1_mult_16_U336 ( .A1(fb_mult1_mult_16_n334), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n368), .ZN(fb_mult1_mult_16_n112) );
  XNOR2_X1 fb_mult1_mult_16_U335 ( .A(coeff_a2[1]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n367) );
  XNOR2_X1 fb_mult1_mult_16_U334 ( .A(coeff_a2[2]), .B(sw1[7]), .ZN(
        fb_mult1_mult_16_n333) );
  OAI22_X1 fb_mult1_mult_16_U333 ( .A1(fb_mult1_mult_16_n367), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n333), .ZN(fb_mult1_mult_16_n114) );
  XNOR2_X1 fb_mult1_mult_16_U332 ( .A(sw1[7]), .B(coeff_a2[0]), .ZN(
        fb_mult1_mult_16_n366) );
  OAI22_X1 fb_mult1_mult_16_U331 ( .A1(fb_mult1_mult_16_n366), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n367), .ZN(fb_mult1_mult_16_n115) );
  NOR2_X1 fb_mult1_mult_16_U330 ( .A1(fb_mult1_mult_16_n311), .A2(
        fb_mult1_mult_16_n296), .ZN(fb_mult1_mult_16_n116) );
  XNOR2_X1 fb_mult1_mult_16_U329 ( .A(coeff_a2[8]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n338) );
  XNOR2_X1 fb_mult1_mult_16_U328 ( .A(fb_mult1_mult_16_n299), .B(sw1[4]), .ZN(
        fb_mult1_mult_16_n365) );
  NAND2_X1 fb_mult1_mult_16_U327 ( .A1(fb_mult1_mult_16_n308), .A2(
        fb_mult1_mult_16_n365), .ZN(fb_mult1_mult_16_n306) );
  OAI22_X1 fb_mult1_mult_16_U326 ( .A1(fb_mult1_mult_16_n338), .A2(
        fb_mult1_mult_16_n308), .B1(fb_mult1_mult_16_n306), .B2(
        fb_mult1_mult_16_n338), .ZN(fb_mult1_mult_16_n364) );
  XNOR2_X1 fb_mult1_mult_16_U325 ( .A(coeff_a2[6]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n363) );
  XNOR2_X1 fb_mult1_mult_16_U324 ( .A(coeff_a2[7]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n337) );
  OAI22_X1 fb_mult1_mult_16_U323 ( .A1(fb_mult1_mult_16_n363), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n337), .ZN(fb_mult1_mult_16_n118) );
  XNOR2_X1 fb_mult1_mult_16_U322 ( .A(coeff_a2[5]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n362) );
  OAI22_X1 fb_mult1_mult_16_U321 ( .A1(fb_mult1_mult_16_n362), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n363), .ZN(fb_mult1_mult_16_n119) );
  XNOR2_X1 fb_mult1_mult_16_U320 ( .A(coeff_a2[4]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n361) );
  OAI22_X1 fb_mult1_mult_16_U319 ( .A1(fb_mult1_mult_16_n361), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n362), .ZN(fb_mult1_mult_16_n120) );
  XNOR2_X1 fb_mult1_mult_16_U318 ( .A(coeff_a2[3]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n360) );
  OAI22_X1 fb_mult1_mult_16_U317 ( .A1(fb_mult1_mult_16_n360), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n361), .ZN(fb_mult1_mult_16_n121) );
  XNOR2_X1 fb_mult1_mult_16_U316 ( .A(coeff_a2[2]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n359) );
  OAI22_X1 fb_mult1_mult_16_U315 ( .A1(fb_mult1_mult_16_n359), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n360), .ZN(fb_mult1_mult_16_n122) );
  XNOR2_X1 fb_mult1_mult_16_U314 ( .A(coeff_a2[1]), .B(sw1[5]), .ZN(
        fb_mult1_mult_16_n358) );
  OAI22_X1 fb_mult1_mult_16_U313 ( .A1(fb_mult1_mult_16_n358), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n359), .ZN(fb_mult1_mult_16_n123) );
  XNOR2_X1 fb_mult1_mult_16_U312 ( .A(sw1[5]), .B(coeff_a2[0]), .ZN(
        fb_mult1_mult_16_n357) );
  OAI22_X1 fb_mult1_mult_16_U311 ( .A1(fb_mult1_mult_16_n357), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n358), .ZN(fb_mult1_mult_16_n124) );
  NOR2_X1 fb_mult1_mult_16_U310 ( .A1(fb_mult1_mult_16_n308), .A2(
        fb_mult1_mult_16_n296), .ZN(fb_mult1_mult_16_n125) );
  XNOR2_X1 fb_mult1_mult_16_U309 ( .A(coeff_a2[8]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n336) );
  XOR2_X1 fb_mult1_mult_16_U308 ( .A(sw1[2]), .B(sw1[1]), .Z(
        fb_mult1_mult_16_n322) );
  XNOR2_X1 fb_mult1_mult_16_U307 ( .A(fb_mult1_mult_16_n300), .B(sw1[2]), .ZN(
        fb_mult1_mult_16_n356) );
  NAND2_X1 fb_mult1_mult_16_U306 ( .A1(fb_mult1_mult_16_n301), .A2(
        fb_mult1_mult_16_n356), .ZN(fb_mult1_mult_16_n320) );
  OAI22_X1 fb_mult1_mult_16_U305 ( .A1(fb_mult1_mult_16_n336), .A2(
        fb_mult1_mult_16_n301), .B1(fb_mult1_mult_16_n320), .B2(
        fb_mult1_mult_16_n336), .ZN(fb_mult1_mult_16_n355) );
  XNOR2_X1 fb_mult1_mult_16_U304 ( .A(coeff_a2[6]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n354) );
  XNOR2_X1 fb_mult1_mult_16_U303 ( .A(coeff_a2[7]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n335) );
  OAI22_X1 fb_mult1_mult_16_U302 ( .A1(fb_mult1_mult_16_n354), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n335), .ZN(fb_mult1_mult_16_n127) );
  XNOR2_X1 fb_mult1_mult_16_U301 ( .A(coeff_a2[5]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n353) );
  OAI22_X1 fb_mult1_mult_16_U300 ( .A1(fb_mult1_mult_16_n353), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n354), .ZN(fb_mult1_mult_16_n128) );
  XNOR2_X1 fb_mult1_mult_16_U299 ( .A(coeff_a2[4]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n352) );
  OAI22_X1 fb_mult1_mult_16_U298 ( .A1(fb_mult1_mult_16_n352), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n353), .ZN(fb_mult1_mult_16_n129) );
  XNOR2_X1 fb_mult1_mult_16_U297 ( .A(coeff_a2[3]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n351) );
  OAI22_X1 fb_mult1_mult_16_U296 ( .A1(fb_mult1_mult_16_n351), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n352), .ZN(fb_mult1_mult_16_n130) );
  XNOR2_X1 fb_mult1_mult_16_U295 ( .A(coeff_a2[2]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n350) );
  OAI22_X1 fb_mult1_mult_16_U294 ( .A1(fb_mult1_mult_16_n350), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n351), .ZN(fb_mult1_mult_16_n131) );
  XNOR2_X1 fb_mult1_mult_16_U293 ( .A(coeff_a2[1]), .B(fb_mult1_mult_16_n277), 
        .ZN(fb_mult1_mult_16_n349) );
  OAI22_X1 fb_mult1_mult_16_U292 ( .A1(fb_mult1_mult_16_n349), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n350), .ZN(fb_mult1_mult_16_n132) );
  XNOR2_X1 fb_mult1_mult_16_U291 ( .A(fb_mult1_mult_16_n277), .B(coeff_a2[0]), 
        .ZN(fb_mult1_mult_16_n348) );
  OAI22_X1 fb_mult1_mult_16_U290 ( .A1(fb_mult1_mult_16_n348), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n349), .ZN(fb_mult1_mult_16_n133) );
  XNOR2_X1 fb_mult1_mult_16_U289 ( .A(coeff_a2[8]), .B(sw1[1]), .ZN(
        fb_mult1_mult_16_n346) );
  NAND2_X1 fb_mult1_mult_16_U288 ( .A1(sw1[1]), .A2(fb_mult1_mult_16_n302), 
        .ZN(fb_mult1_mult_16_n327) );
  OAI22_X1 fb_mult1_mult_16_U287 ( .A1(fb_mult1_mult_16_n302), .A2(
        fb_mult1_mult_16_n346), .B1(fb_mult1_mult_16_n327), .B2(
        fb_mult1_mult_16_n346), .ZN(fb_mult1_mult_16_n347) );
  XNOR2_X1 fb_mult1_mult_16_U286 ( .A(coeff_a2[7]), .B(sw1[1]), .ZN(
        fb_mult1_mult_16_n345) );
  OAI22_X1 fb_mult1_mult_16_U285 ( .A1(fb_mult1_mult_16_n345), .A2(
        fb_mult1_mult_16_n327), .B1(fb_mult1_mult_16_n346), .B2(
        fb_mult1_mult_16_n302), .ZN(fb_mult1_mult_16_n136) );
  XNOR2_X1 fb_mult1_mult_16_U284 ( .A(coeff_a2[6]), .B(sw1[1]), .ZN(
        fb_mult1_mult_16_n344) );
  OAI22_X1 fb_mult1_mult_16_U283 ( .A1(fb_mult1_mult_16_n344), .A2(
        fb_mult1_mult_16_n327), .B1(fb_mult1_mult_16_n345), .B2(
        fb_mult1_mult_16_n302), .ZN(fb_mult1_mult_16_n137) );
  XNOR2_X1 fb_mult1_mult_16_U282 ( .A(coeff_a2[5]), .B(sw1[1]), .ZN(
        fb_mult1_mult_16_n343) );
  OAI22_X1 fb_mult1_mult_16_U281 ( .A1(fb_mult1_mult_16_n343), .A2(
        fb_mult1_mult_16_n327), .B1(fb_mult1_mult_16_n344), .B2(
        fb_mult1_mult_16_n302), .ZN(fb_mult1_mult_16_n138) );
  XNOR2_X1 fb_mult1_mult_16_U280 ( .A(coeff_a2[4]), .B(sw1[1]), .ZN(
        fb_mult1_mult_16_n342) );
  OAI22_X1 fb_mult1_mult_16_U279 ( .A1(fb_mult1_mult_16_n342), .A2(
        fb_mult1_mult_16_n327), .B1(fb_mult1_mult_16_n343), .B2(
        fb_mult1_mult_16_n302), .ZN(fb_mult1_mult_16_n139) );
  XNOR2_X1 fb_mult1_mult_16_U278 ( .A(coeff_a2[3]), .B(sw1[1]), .ZN(
        fb_mult1_mult_16_n341) );
  OAI22_X1 fb_mult1_mult_16_U277 ( .A1(fb_mult1_mult_16_n341), .A2(
        fb_mult1_mult_16_n327), .B1(fb_mult1_mult_16_n342), .B2(
        fb_mult1_mult_16_n302), .ZN(fb_mult1_mult_16_n140) );
  XNOR2_X1 fb_mult1_mult_16_U276 ( .A(coeff_a2[2]), .B(sw1[1]), .ZN(
        fb_mult1_mult_16_n328) );
  OAI22_X1 fb_mult1_mult_16_U275 ( .A1(fb_mult1_mult_16_n328), .A2(
        fb_mult1_mult_16_n327), .B1(fb_mult1_mult_16_n341), .B2(
        fb_mult1_mult_16_n302), .ZN(fb_mult1_mult_16_n141) );
  OAI22_X1 fb_mult1_mult_16_U274 ( .A1(fb_mult1_mult_16_n339), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n340), .ZN(fb_mult1_mult_16_n22) );
  OAI22_X1 fb_mult1_mult_16_U273 ( .A1(fb_mult1_mult_16_n337), .A2(
        fb_mult1_mult_16_n306), .B1(fb_mult1_mult_16_n308), .B2(
        fb_mult1_mult_16_n338), .ZN(fb_mult1_mult_16_n32) );
  OAI22_X1 fb_mult1_mult_16_U272 ( .A1(fb_mult1_mult_16_n335), .A2(
        fb_mult1_mult_16_n320), .B1(fb_mult1_mult_16_n301), .B2(
        fb_mult1_mult_16_n336), .ZN(fb_mult1_mult_16_n46) );
  OAI22_X1 fb_mult1_mult_16_U271 ( .A1(fb_mult1_mult_16_n333), .A2(
        fb_mult1_mult_16_n309), .B1(fb_mult1_mult_16_n311), .B2(
        fb_mult1_mult_16_n334), .ZN(fb_mult1_mult_16_n332) );
  XNOR2_X1 fb_mult1_mult_16_U270 ( .A(fb_mult1_mult_16_n295), .B(sw1[8]), .ZN(
        fb_mult1_mult_16_n330) );
  NAND2_X1 fb_mult1_mult_16_U269 ( .A1(fb_mult1_mult_16_n330), .A2(
        fb_mult1_mult_16_n297), .ZN(fb_mult1_mult_16_n329) );
  NAND2_X1 fb_mult1_mult_16_U268 ( .A1(fb_mult1_mult_16_n293), .A2(
        fb_mult1_mult_16_n329), .ZN(fb_mult1_mult_16_n54) );
  XNOR2_X1 fb_mult1_mult_16_U267 ( .A(fb_mult1_mult_16_n329), .B(
        fb_mult1_mult_16_n293), .ZN(fb_mult1_mult_16_n55) );
  OAI22_X1 fb_mult1_mult_16_U266 ( .A1(coeff_a2[1]), .A2(fb_mult1_mult_16_n327), .B1(fb_mult1_mult_16_n328), .B2(fb_mult1_mult_16_n302), .ZN(
        fb_mult1_mult_16_n326) );
  NAND2_X1 fb_mult1_mult_16_U265 ( .A1(fb_mult1_mult_16_n322), .A2(
        fb_mult1_mult_16_n326), .ZN(fb_mult1_mult_16_n324) );
  NAND3_X1 fb_mult1_mult_16_U264 ( .A1(fb_mult1_mult_16_n326), .A2(
        fb_mult1_mult_16_n295), .A3(sw1[1]), .ZN(fb_mult1_mult_16_n325) );
  MUX2_X1 fb_mult1_mult_16_U263 ( .A(fb_mult1_mult_16_n324), .B(
        fb_mult1_mult_16_n325), .S(fb_mult1_mult_16_n296), .Z(
        fb_mult1_mult_16_n323) );
  NAND3_X1 fb_mult1_mult_16_U262 ( .A1(fb_mult1_mult_16_n322), .A2(
        fb_mult1_mult_16_n296), .A3(fb_mult1_mult_16_n277), .ZN(
        fb_mult1_mult_16_n321) );
  OAI21_X1 fb_mult1_mult_16_U261 ( .B1(fb_mult1_mult_16_n300), .B2(
        fb_mult1_mult_16_n320), .A(fb_mult1_mult_16_n321), .ZN(
        fb_mult1_mult_16_n319) );
  AOI222_X1 fb_mult1_mult_16_U260 ( .A1(fb_mult1_mult_16_n294), .A2(
        fb_mult1_mult_16_n79), .B1(fb_mult1_mult_16_n319), .B2(
        fb_mult1_mult_16_n294), .C1(fb_mult1_mult_16_n319), .C2(
        fb_mult1_mult_16_n79), .ZN(fb_mult1_mult_16_n318) );
  AOI222_X1 fb_mult1_mult_16_U259 ( .A1(fb_mult1_mult_16_n292), .A2(
        fb_mult1_mult_16_n77), .B1(fb_mult1_mult_16_n292), .B2(
        fb_mult1_mult_16_n78), .C1(fb_mult1_mult_16_n78), .C2(
        fb_mult1_mult_16_n77), .ZN(fb_mult1_mult_16_n317) );
  AOI222_X1 fb_mult1_mult_16_U258 ( .A1(fb_mult1_mult_16_n291), .A2(
        fb_mult1_mult_16_n73), .B1(fb_mult1_mult_16_n291), .B2(
        fb_mult1_mult_16_n76), .C1(fb_mult1_mult_16_n76), .C2(
        fb_mult1_mult_16_n73), .ZN(fb_mult1_mult_16_n316) );
  AOI222_X1 fb_mult1_mult_16_U257 ( .A1(fb_mult1_mult_16_n290), .A2(
        fb_mult1_mult_16_n69), .B1(fb_mult1_mult_16_n290), .B2(
        fb_mult1_mult_16_n72), .C1(fb_mult1_mult_16_n72), .C2(
        fb_mult1_mult_16_n69), .ZN(fb_mult1_mult_16_n315) );
  AOI222_X1 fb_mult1_mult_16_U256 ( .A1(fb_mult1_mult_16_n289), .A2(
        fb_mult1_mult_16_n63), .B1(fb_mult1_mult_16_n289), .B2(
        fb_mult1_mult_16_n68), .C1(fb_mult1_mult_16_n68), .C2(
        fb_mult1_mult_16_n63), .ZN(fb_mult1_mult_16_n314) );
  OAI222_X1 fb_mult1_mult_16_U255 ( .A1(fb_mult1_mult_16_n314), .A2(
        fb_mult1_mult_16_n281), .B1(fb_mult1_mult_16_n314), .B2(
        fb_mult1_mult_16_n288), .C1(fb_mult1_mult_16_n288), .C2(
        fb_mult1_mult_16_n281), .ZN(fb_mult1_mult_16_n313) );
  AOI222_X1 fb_mult1_mult_16_U254 ( .A1(fb_mult1_mult_16_n313), .A2(
        fb_mult1_mult_16_n49), .B1(fb_mult1_mult_16_n313), .B2(
        fb_mult1_mult_16_n56), .C1(fb_mult1_mult_16_n56), .C2(
        fb_mult1_mult_16_n49), .ZN(fb_mult1_mult_16_n312) );
  OAI222_X1 fb_mult1_mult_16_U253 ( .A1(fb_mult1_mult_16_n312), .A2(
        fb_mult1_mult_16_n278), .B1(fb_mult1_mult_16_n312), .B2(
        fb_mult1_mult_16_n279), .C1(fb_mult1_mult_16_n279), .C2(
        fb_mult1_mult_16_n278), .ZN(fb_mult1_mult_16_n7) );
  AND3_X1 fb_mult1_mult_16_U252 ( .A1(sw1[8]), .A2(fb_mult1_mult_16_n296), 
        .A3(fb_mult1_mult_16_n297), .ZN(fb_mult1_mult_16_n94) );
  OR3_X1 fb_mult1_mult_16_U251 ( .A1(fb_mult1_mult_16_n311), .A2(coeff_a2[0]), 
        .A3(fb_mult1_mult_16_n298), .ZN(fb_mult1_mult_16_n310) );
  OAI21_X1 fb_mult1_mult_16_U250 ( .B1(fb_mult1_mult_16_n298), .B2(
        fb_mult1_mult_16_n309), .A(fb_mult1_mult_16_n310), .ZN(
        fb_mult1_mult_16_n95) );
  OR3_X1 fb_mult1_mult_16_U249 ( .A1(fb_mult1_mult_16_n308), .A2(coeff_a2[0]), 
        .A3(fb_mult1_mult_16_n299), .ZN(fb_mult1_mult_16_n307) );
  OAI21_X1 fb_mult1_mult_16_U248 ( .B1(fb_mult1_mult_16_n299), .B2(
        fb_mult1_mult_16_n306), .A(fb_mult1_mult_16_n307), .ZN(
        fb_mult1_mult_16_n96) );
  NOR2_X1 fb_mult1_mult_16_U247 ( .A1(fb_mult1_mult_16_n302), .A2(
        fb_mult1_mult_16_n296), .ZN(fb_mult1_fract_product_0_) );
  XOR2_X1 fb_mult1_mult_16_U246 ( .A(coeff_a2[8]), .B(sw1[8]), .Z(
        fb_mult1_mult_16_n305) );
  NAND2_X1 fb_mult1_mult_16_U245 ( .A1(fb_mult1_mult_16_n305), .A2(
        fb_mult1_mult_16_n297), .ZN(fb_mult1_mult_16_n303) );
  XOR2_X1 fb_mult1_mult_16_U244 ( .A(fb_mult1_mult_16_n2), .B(
        fb_mult1_mult_16_n18), .Z(fb_mult1_mult_16_n304) );
  XOR2_X1 fb_mult1_mult_16_U243 ( .A(fb_mult1_mult_16_n303), .B(
        fb_mult1_mult_16_n304), .Z(fb1[16]) );
  INV_X1 fb_mult1_mult_16_U242 ( .A(fb_mult1_mult_16_n371), .ZN(
        fb_mult1_mult_16_n286) );
  INV_X1 fb_mult1_mult_16_U241 ( .A(coeff_a2[1]), .ZN(fb_mult1_mult_16_n295)
         );
  BUF_X1 fb_mult1_mult_16_U240 ( .A(sw1[3]), .Z(fb_mult1_mult_16_n277) );
  INV_X1 fb_mult1_mult_16_U239 ( .A(fb_mult1_mult_16_n22), .ZN(
        fb_mult1_mult_16_n287) );
  INV_X1 fb_mult1_mult_16_U238 ( .A(fb_mult1_mult_16_n347), .ZN(
        fb_mult1_mult_16_n280) );
  INV_X1 fb_mult1_mult_16_U237 ( .A(coeff_a2[0]), .ZN(fb_mult1_mult_16_n296)
         );
  INV_X1 fb_mult1_mult_16_U236 ( .A(sw1[0]), .ZN(fb_mult1_mult_16_n302) );
  INV_X1 fb_mult1_mult_16_U235 ( .A(sw1[7]), .ZN(fb_mult1_mult_16_n298) );
  INV_X1 fb_mult1_mult_16_U234 ( .A(sw1[5]), .ZN(fb_mult1_mult_16_n299) );
  XOR2_X1 fb_mult1_mult_16_U233 ( .A(sw1[6]), .B(fb_mult1_mult_16_n299), .Z(
        fb_mult1_mult_16_n311) );
  XOR2_X1 fb_mult1_mult_16_U232 ( .A(sw1[4]), .B(fb_mult1_mult_16_n300), .Z(
        fb_mult1_mult_16_n308) );
  INV_X1 fb_mult1_mult_16_U231 ( .A(fb_mult1_mult_16_n355), .ZN(
        fb_mult1_mult_16_n282) );
  INV_X1 fb_mult1_mult_16_U230 ( .A(fb_mult1_mult_16_n332), .ZN(
        fb_mult1_mult_16_n293) );
  INV_X1 fb_mult1_mult_16_U229 ( .A(fb_mult1_mult_16_n277), .ZN(
        fb_mult1_mult_16_n300) );
  INV_X1 fb_mult1_mult_16_U228 ( .A(fb_mult1_mult_16_n315), .ZN(
        fb_mult1_mult_16_n289) );
  INV_X1 fb_mult1_mult_16_U227 ( .A(fb_mult1_mult_16_n317), .ZN(
        fb_mult1_mult_16_n291) );
  INV_X1 fb_mult1_mult_16_U226 ( .A(fb_mult1_mult_16_n316), .ZN(
        fb_mult1_mult_16_n290) );
  INV_X1 fb_mult1_mult_16_U225 ( .A(fb_mult1_mult_16_n46), .ZN(
        fb_mult1_mult_16_n283) );
  INV_X1 fb_mult1_mult_16_U224 ( .A(fb_mult1_mult_16_n364), .ZN(
        fb_mult1_mult_16_n284) );
  INV_X1 fb_mult1_mult_16_U223 ( .A(fb_mult1_mult_16_n32), .ZN(
        fb_mult1_mult_16_n285) );
  INV_X1 fb_mult1_mult_16_U222 ( .A(fb_mult1_mult_16_n331), .ZN(
        fb_mult1_mult_16_n297) );
  INV_X1 fb_mult1_mult_16_U221 ( .A(fb_mult1_mult_16_n322), .ZN(
        fb_mult1_mult_16_n301) );
  INV_X1 fb_mult1_mult_16_U220 ( .A(fb_mult1_mult_16_n323), .ZN(
        fb_mult1_mult_16_n294) );
  INV_X1 fb_mult1_mult_16_U219 ( .A(fb_mult1_mult_16_n318), .ZN(
        fb_mult1_mult_16_n292) );
  INV_X1 fb_mult1_mult_16_U218 ( .A(fb_mult1_mult_16_n41), .ZN(
        fb_mult1_mult_16_n278) );
  INV_X1 fb_mult1_mult_16_U217 ( .A(fb_mult1_mult_16_n48), .ZN(
        fb_mult1_mult_16_n279) );
  INV_X1 fb_mult1_mult_16_U216 ( .A(fb_mult1_mult_16_n57), .ZN(
        fb_mult1_mult_16_n281) );
  INV_X1 fb_mult1_mult_16_U215 ( .A(fb_mult1_mult_16_n62), .ZN(
        fb_mult1_mult_16_n288) );
  HA_X1 fb_mult1_mult_16_U50 ( .A(fb_mult1_mult_16_n133), .B(
        fb_mult1_mult_16_n141), .CO(fb_mult1_mult_16_n78), .S(
        fb_mult1_mult_16_n79) );
  FA_X1 fb_mult1_mult_16_U49 ( .A(fb_mult1_mult_16_n140), .B(
        fb_mult1_mult_16_n125), .CI(fb_mult1_mult_16_n132), .CO(
        fb_mult1_mult_16_n76), .S(fb_mult1_mult_16_n77) );
  HA_X1 fb_mult1_mult_16_U48 ( .A(fb_mult1_mult_16_n96), .B(
        fb_mult1_mult_16_n124), .CO(fb_mult1_mult_16_n74), .S(
        fb_mult1_mult_16_n75) );
  FA_X1 fb_mult1_mult_16_U47 ( .A(fb_mult1_mult_16_n131), .B(
        fb_mult1_mult_16_n139), .CI(fb_mult1_mult_16_n75), .CO(
        fb_mult1_mult_16_n72), .S(fb_mult1_mult_16_n73) );
  FA_X1 fb_mult1_mult_16_U46 ( .A(fb_mult1_mult_16_n138), .B(
        fb_mult1_mult_16_n116), .CI(fb_mult1_mult_16_n130), .CO(
        fb_mult1_mult_16_n70), .S(fb_mult1_mult_16_n71) );
  FA_X1 fb_mult1_mult_16_U45 ( .A(fb_mult1_mult_16_n74), .B(
        fb_mult1_mult_16_n123), .CI(fb_mult1_mult_16_n71), .CO(
        fb_mult1_mult_16_n68), .S(fb_mult1_mult_16_n69) );
  HA_X1 fb_mult1_mult_16_U44 ( .A(fb_mult1_mult_16_n95), .B(
        fb_mult1_mult_16_n115), .CO(fb_mult1_mult_16_n66), .S(
        fb_mult1_mult_16_n67) );
  FA_X1 fb_mult1_mult_16_U43 ( .A(fb_mult1_mult_16_n122), .B(
        fb_mult1_mult_16_n137), .CI(fb_mult1_mult_16_n129), .CO(
        fb_mult1_mult_16_n64), .S(fb_mult1_mult_16_n65) );
  FA_X1 fb_mult1_mult_16_U42 ( .A(fb_mult1_mult_16_n70), .B(
        fb_mult1_mult_16_n67), .CI(fb_mult1_mult_16_n65), .CO(
        fb_mult1_mult_16_n62), .S(fb_mult1_mult_16_n63) );
  FA_X1 fb_mult1_mult_16_U41 ( .A(fb_mult1_mult_16_n121), .B(
        fb_mult1_mult_16_n107), .CI(fb_mult1_mult_16_n136), .CO(
        fb_mult1_mult_16_n60), .S(fb_mult1_mult_16_n61) );
  FA_X1 fb_mult1_mult_16_U40 ( .A(fb_mult1_mult_16_n114), .B(
        fb_mult1_mult_16_n128), .CI(fb_mult1_mult_16_n66), .CO(
        fb_mult1_mult_16_n58), .S(fb_mult1_mult_16_n59) );
  FA_X1 fb_mult1_mult_16_U39 ( .A(fb_mult1_mult_16_n61), .B(
        fb_mult1_mult_16_n64), .CI(fb_mult1_mult_16_n59), .CO(
        fb_mult1_mult_16_n56), .S(fb_mult1_mult_16_n57) );
  FA_X1 fb_mult1_mult_16_U36 ( .A(fb_mult1_mult_16_n94), .B(
        fb_mult1_mult_16_n120), .CI(fb_mult1_mult_16_n280), .CO(
        fb_mult1_mult_16_n52), .S(fb_mult1_mult_16_n53) );
  FA_X1 fb_mult1_mult_16_U35 ( .A(fb_mult1_mult_16_n55), .B(
        fb_mult1_mult_16_n127), .CI(fb_mult1_mult_16_n60), .CO(
        fb_mult1_mult_16_n50), .S(fb_mult1_mult_16_n51) );
  FA_X1 fb_mult1_mult_16_U34 ( .A(fb_mult1_mult_16_n53), .B(
        fb_mult1_mult_16_n58), .CI(fb_mult1_mult_16_n51), .CO(
        fb_mult1_mult_16_n48), .S(fb_mult1_mult_16_n49) );
  FA_X1 fb_mult1_mult_16_U32 ( .A(fb_mult1_mult_16_n112), .B(
        fb_mult1_mult_16_n105), .CI(fb_mult1_mult_16_n119), .CO(
        fb_mult1_mult_16_n44), .S(fb_mult1_mult_16_n45) );
  FA_X1 fb_mult1_mult_16_U31 ( .A(fb_mult1_mult_16_n54), .B(
        fb_mult1_mult_16_n283), .CI(fb_mult1_mult_16_n52), .CO(
        fb_mult1_mult_16_n42), .S(fb_mult1_mult_16_n43) );
  FA_X1 fb_mult1_mult_16_U30 ( .A(fb_mult1_mult_16_n50), .B(
        fb_mult1_mult_16_n45), .CI(fb_mult1_mult_16_n43), .CO(
        fb_mult1_mult_16_n40), .S(fb_mult1_mult_16_n41) );
  FA_X1 fb_mult1_mult_16_U29 ( .A(fb_mult1_mult_16_n111), .B(
        fb_mult1_mult_16_n104), .CI(fb_mult1_mult_16_n282), .CO(
        fb_mult1_mult_16_n38), .S(fb_mult1_mult_16_n39) );
  FA_X1 fb_mult1_mult_16_U28 ( .A(fb_mult1_mult_16_n46), .B(
        fb_mult1_mult_16_n118), .CI(fb_mult1_mult_16_n44), .CO(
        fb_mult1_mult_16_n36), .S(fb_mult1_mult_16_n37) );
  FA_X1 fb_mult1_mult_16_U27 ( .A(fb_mult1_mult_16_n42), .B(
        fb_mult1_mult_16_n39), .CI(fb_mult1_mult_16_n37), .CO(
        fb_mult1_mult_16_n34), .S(fb_mult1_mult_16_n35) );
  FA_X1 fb_mult1_mult_16_U25 ( .A(fb_mult1_mult_16_n103), .B(
        fb_mult1_mult_16_n110), .CI(fb_mult1_mult_16_n285), .CO(
        fb_mult1_mult_16_n30), .S(fb_mult1_mult_16_n31) );
  FA_X1 fb_mult1_mult_16_U24 ( .A(fb_mult1_mult_16_n31), .B(
        fb_mult1_mult_16_n38), .CI(fb_mult1_mult_16_n36), .CO(
        fb_mult1_mult_16_n28), .S(fb_mult1_mult_16_n29) );
  FA_X1 fb_mult1_mult_16_U23 ( .A(fb_mult1_mult_16_n109), .B(
        fb_mult1_mult_16_n32), .CI(fb_mult1_mult_16_n284), .CO(
        fb_mult1_mult_16_n26), .S(fb_mult1_mult_16_n27) );
  FA_X1 fb_mult1_mult_16_U22 ( .A(fb_mult1_mult_16_n30), .B(
        fb_mult1_mult_16_n102), .CI(fb_mult1_mult_16_n27), .CO(
        fb_mult1_mult_16_n24), .S(fb_mult1_mult_16_n25) );
  FA_X1 fb_mult1_mult_16_U20 ( .A(fb_mult1_mult_16_n287), .B(
        fb_mult1_mult_16_n101), .CI(fb_mult1_mult_16_n26), .CO(
        fb_mult1_mult_16_n20), .S(fb_mult1_mult_16_n21) );
  FA_X1 fb_mult1_mult_16_U19 ( .A(fb_mult1_mult_16_n100), .B(
        fb_mult1_mult_16_n22), .CI(fb_mult1_mult_16_n286), .CO(
        fb_mult1_mult_16_n18), .S(fb_mult1_mult_16_n19) );
  FA_X1 fb_mult1_mult_16_U7 ( .A(fb_mult1_mult_16_n35), .B(
        fb_mult1_mult_16_n40), .CI(fb_mult1_mult_16_n7), .CO(
        fb_mult1_mult_16_n6), .S(fb1[11]) );
  FA_X1 fb_mult1_mult_16_U6 ( .A(fb_mult1_mult_16_n29), .B(
        fb_mult1_mult_16_n34), .CI(fb_mult1_mult_16_n6), .CO(
        fb_mult1_mult_16_n5), .S(fb1[12]) );
  FA_X1 fb_mult1_mult_16_U5 ( .A(fb_mult1_mult_16_n25), .B(
        fb_mult1_mult_16_n28), .CI(fb_mult1_mult_16_n5), .CO(
        fb_mult1_mult_16_n4), .S(fb1[13]) );
  FA_X1 fb_mult1_mult_16_U4 ( .A(fb_mult1_mult_16_n21), .B(
        fb_mult1_mult_16_n24), .CI(fb_mult1_mult_16_n4), .CO(
        fb_mult1_mult_16_n3), .S(fb1[14]) );
  FA_X1 fb_mult1_mult_16_U3 ( .A(fb_mult1_mult_16_n20), .B(
        fb_mult1_mult_16_n19), .CI(fb_mult1_mult_16_n3), .CO(
        fb_mult1_mult_16_n2), .S(fb1[15]) );
  XOR2_X1 fb0_neg_add_16_U2 ( .A(1'b1), .B(n18), .Z(fb0_approx_neg[0]) );
  AND2_X1 fb0_neg_add_16_U1 ( .A1(1'b1), .A2(n18), .ZN(fb0_neg_add_16_n1) );
  FA_X1 fb0_neg_add_16_U1_1 ( .A(n17), .B(1'b0), .CI(fb0_neg_add_16_n1), .CO(
        fb0_neg_add_16_carry[2]), .S(fb0_approx_neg[1]) );
  FA_X1 fb0_neg_add_16_U1_2 ( .A(n16), .B(1'b0), .CI(fb0_neg_add_16_carry[2]), 
        .CO(fb0_neg_add_16_carry[3]), .S(fb0_approx_neg[2]) );
  FA_X1 fb0_neg_add_16_U1_3 ( .A(n15), .B(1'b0), .CI(fb0_neg_add_16_carry[3]), 
        .CO(fb0_neg_add_16_carry[4]), .S(fb0_approx_neg[3]) );
  FA_X1 fb0_neg_add_16_U1_4 ( .A(n14), .B(1'b0), .CI(fb0_neg_add_16_carry[4]), 
        .CO(fb0_neg_add_16_carry[5]), .S(fb0_approx_neg[4]) );
  FA_X1 fb0_neg_add_16_U1_5 ( .A(n13), .B(1'b0), .CI(fb0_neg_add_16_carry[5]), 
        .S(fb0_approx_neg[5]) );
  AND2_X1 fb1_neg_add_16_U2 ( .A1(1'b1), .A2(n24), .ZN(fb1_neg_add_16_n2) );
  XOR2_X1 fb1_neg_add_16_U1 ( .A(1'b1), .B(n24), .Z(fb1_approx_neg[0]) );
  FA_X1 fb1_neg_add_16_U1_1 ( .A(n23), .B(1'b0), .CI(fb1_neg_add_16_n2), .CO(
        fb1_neg_add_16_carry[2]), .S(fb1_approx_neg[1]) );
  FA_X1 fb1_neg_add_16_U1_2 ( .A(n22), .B(1'b0), .CI(fb1_neg_add_16_carry[2]), 
        .CO(fb1_neg_add_16_carry[3]), .S(fb1_approx_neg[2]) );
  FA_X1 fb1_neg_add_16_U1_3 ( .A(n21), .B(1'b0), .CI(fb1_neg_add_16_carry[3]), 
        .CO(fb1_neg_add_16_carry[4]), .S(fb1_approx_neg[3]) );
  FA_X1 fb1_neg_add_16_U1_4 ( .A(n20), .B(1'b0), .CI(fb1_neg_add_16_carry[4]), 
        .CO(fb1_neg_add_16_carry[5]), .S(fb1_approx_neg[4]) );
  FA_X1 fb1_neg_add_16_U1_5 ( .A(n19), .B(1'b0), .CI(fb1_neg_add_16_carry[5]), 
        .S(fb1_approx_neg[5]) );
  XOR2_X1 fb_add_add_16_U2 ( .A(fb1_approx_neg[0]), .B(fb0_approx_neg[0]), .Z(
        fb[0]) );
  AND2_X1 fb_add_add_16_U1 ( .A1(fb1_approx_neg[0]), .A2(fb0_approx_neg[0]), 
        .ZN(fb_add_add_16_n1) );
  FA_X1 fb_add_add_16_U1_1 ( .A(fb0_approx_neg[1]), .B(fb1_approx_neg[1]), 
        .CI(fb_add_add_16_n1), .CO(fb_add_add_16_carry[2]), .S(fb[1]) );
  FA_X1 fb_add_add_16_U1_2 ( .A(fb0_approx_neg[2]), .B(fb1_approx_neg[2]), 
        .CI(fb_add_add_16_carry[2]), .CO(fb_add_add_16_carry[3]), .S(fb[2]) );
  FA_X1 fb_add_add_16_U1_3 ( .A(fb0_approx_neg[3]), .B(fb1_approx_neg[3]), 
        .CI(fb_add_add_16_carry[3]), .CO(fb_add_add_16_carry[4]), .S(fb[3]) );
  FA_X1 fb_add_add_16_U1_4 ( .A(fb0_approx_neg[4]), .B(fb1_approx_neg[4]), 
        .CI(fb_add_add_16_carry[4]), .CO(fb_add_add_16_carry[5]), .S(fb[4]) );
  FA_X1 fb_add_add_16_U1_5 ( .A(fb0_approx_neg[5]), .B(fb1_approx_neg[5]), 
        .CI(fb_add_add_16_carry[5]), .S(fb[5]) );
  XOR2_X1 ff_mult0_mult_16_U366 ( .A(ff_mult0_mult_16_n281), .B(
        ff_mult0_mult_16_n302), .Z(ff_mult0_mult_16_n335) );
  XNOR2_X1 ff_mult0_mult_16_U365 ( .A(coeff_b1[7]), .B(ff_mult0_mult_16_n281), 
        .ZN(ff_mult0_mult_16_n382) );
  NOR2_X1 ff_mult0_mult_16_U364 ( .A1(ff_mult0_mult_16_n335), .A2(
        ff_mult0_mult_16_n382), .ZN(ff_mult0_mult_16_n100) );
  XNOR2_X1 ff_mult0_mult_16_U363 ( .A(coeff_b1[6]), .B(ff_mult0_mult_16_n281), 
        .ZN(ff_mult0_mult_16_n381) );
  NOR2_X1 ff_mult0_mult_16_U362 ( .A1(ff_mult0_mult_16_n335), .A2(
        ff_mult0_mult_16_n381), .ZN(ff_mult0_mult_16_n101) );
  XNOR2_X1 ff_mult0_mult_16_U361 ( .A(coeff_b1[5]), .B(ff_mult0_mult_16_n281), 
        .ZN(ff_mult0_mult_16_n380) );
  NOR2_X1 ff_mult0_mult_16_U360 ( .A1(ff_mult0_mult_16_n335), .A2(
        ff_mult0_mult_16_n380), .ZN(ff_mult0_mult_16_n102) );
  XNOR2_X1 ff_mult0_mult_16_U359 ( .A(coeff_b1[4]), .B(ff_mult0_mult_16_n281), 
        .ZN(ff_mult0_mult_16_n379) );
  NOR2_X1 ff_mult0_mult_16_U358 ( .A1(ff_mult0_mult_16_n335), .A2(
        ff_mult0_mult_16_n379), .ZN(ff_mult0_mult_16_n103) );
  XNOR2_X1 ff_mult0_mult_16_U357 ( .A(coeff_b1[3]), .B(ff_mult0_mult_16_n281), 
        .ZN(ff_mult0_mult_16_n378) );
  NOR2_X1 ff_mult0_mult_16_U356 ( .A1(ff_mult0_mult_16_n335), .A2(
        ff_mult0_mult_16_n378), .ZN(ff_mult0_mult_16_n104) );
  XNOR2_X1 ff_mult0_mult_16_U355 ( .A(coeff_b1[2]), .B(ff_mult0_mult_16_n281), 
        .ZN(ff_mult0_mult_16_n377) );
  NOR2_X1 ff_mult0_mult_16_U354 ( .A1(ff_mult0_mult_16_n335), .A2(
        ff_mult0_mult_16_n377), .ZN(ff_mult0_mult_16_n105) );
  NOR2_X1 ff_mult0_mult_16_U353 ( .A1(ff_mult0_mult_16_n335), .A2(
        ff_mult0_mult_16_n300), .ZN(ff_mult0_mult_16_n107) );
  XNOR2_X1 ff_mult0_mult_16_U352 ( .A(coeff_b1[8]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n344) );
  XNOR2_X1 ff_mult0_mult_16_U351 ( .A(ff_mult0_mult_16_n302), .B(sw0[6]), .ZN(
        ff_mult0_mult_16_n376) );
  NAND2_X1 ff_mult0_mult_16_U350 ( .A1(ff_mult0_mult_16_n315), .A2(
        ff_mult0_mult_16_n376), .ZN(ff_mult0_mult_16_n313) );
  OAI22_X1 ff_mult0_mult_16_U349 ( .A1(ff_mult0_mult_16_n344), .A2(
        ff_mult0_mult_16_n315), .B1(ff_mult0_mult_16_n313), .B2(
        ff_mult0_mult_16_n344), .ZN(ff_mult0_mult_16_n375) );
  XNOR2_X1 ff_mult0_mult_16_U348 ( .A(coeff_b1[6]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n374) );
  XNOR2_X1 ff_mult0_mult_16_U347 ( .A(coeff_b1[7]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n343) );
  OAI22_X1 ff_mult0_mult_16_U346 ( .A1(ff_mult0_mult_16_n374), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n343), .ZN(ff_mult0_mult_16_n109) );
  XNOR2_X1 ff_mult0_mult_16_U345 ( .A(coeff_b1[5]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n373) );
  OAI22_X1 ff_mult0_mult_16_U344 ( .A1(ff_mult0_mult_16_n373), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n374), .ZN(ff_mult0_mult_16_n110) );
  XNOR2_X1 ff_mult0_mult_16_U343 ( .A(coeff_b1[4]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n372) );
  OAI22_X1 ff_mult0_mult_16_U342 ( .A1(ff_mult0_mult_16_n372), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n373), .ZN(ff_mult0_mult_16_n111) );
  XNOR2_X1 ff_mult0_mult_16_U341 ( .A(coeff_b1[3]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n338) );
  OAI22_X1 ff_mult0_mult_16_U340 ( .A1(ff_mult0_mult_16_n338), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n372), .ZN(ff_mult0_mult_16_n112) );
  XNOR2_X1 ff_mult0_mult_16_U339 ( .A(coeff_b1[1]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n371) );
  XNOR2_X1 ff_mult0_mult_16_U338 ( .A(coeff_b1[2]), .B(ff_mult0_mult_16_n280), 
        .ZN(ff_mult0_mult_16_n337) );
  OAI22_X1 ff_mult0_mult_16_U337 ( .A1(ff_mult0_mult_16_n371), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n337), .ZN(ff_mult0_mult_16_n114) );
  XNOR2_X1 ff_mult0_mult_16_U336 ( .A(ff_mult0_mult_16_n280), .B(coeff_b1[0]), 
        .ZN(ff_mult0_mult_16_n370) );
  OAI22_X1 ff_mult0_mult_16_U335 ( .A1(ff_mult0_mult_16_n370), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n371), .ZN(ff_mult0_mult_16_n115) );
  NOR2_X1 ff_mult0_mult_16_U334 ( .A1(ff_mult0_mult_16_n315), .A2(
        ff_mult0_mult_16_n300), .ZN(ff_mult0_mult_16_n116) );
  XNOR2_X1 ff_mult0_mult_16_U333 ( .A(coeff_b1[8]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n342) );
  XNOR2_X1 ff_mult0_mult_16_U332 ( .A(ff_mult0_mult_16_n303), .B(sw0[4]), .ZN(
        ff_mult0_mult_16_n369) );
  NAND2_X1 ff_mult0_mult_16_U331 ( .A1(ff_mult0_mult_16_n312), .A2(
        ff_mult0_mult_16_n369), .ZN(ff_mult0_mult_16_n310) );
  OAI22_X1 ff_mult0_mult_16_U330 ( .A1(ff_mult0_mult_16_n342), .A2(
        ff_mult0_mult_16_n312), .B1(ff_mult0_mult_16_n310), .B2(
        ff_mult0_mult_16_n342), .ZN(ff_mult0_mult_16_n368) );
  XNOR2_X1 ff_mult0_mult_16_U329 ( .A(coeff_b1[6]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n367) );
  XNOR2_X1 ff_mult0_mult_16_U328 ( .A(coeff_b1[7]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n341) );
  OAI22_X1 ff_mult0_mult_16_U327 ( .A1(ff_mult0_mult_16_n367), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n341), .ZN(ff_mult0_mult_16_n118) );
  XNOR2_X1 ff_mult0_mult_16_U326 ( .A(coeff_b1[5]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n366) );
  OAI22_X1 ff_mult0_mult_16_U325 ( .A1(ff_mult0_mult_16_n366), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n367), .ZN(ff_mult0_mult_16_n119) );
  XNOR2_X1 ff_mult0_mult_16_U324 ( .A(coeff_b1[4]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n365) );
  OAI22_X1 ff_mult0_mult_16_U323 ( .A1(ff_mult0_mult_16_n365), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n366), .ZN(ff_mult0_mult_16_n120) );
  XNOR2_X1 ff_mult0_mult_16_U322 ( .A(coeff_b1[3]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n364) );
  OAI22_X1 ff_mult0_mult_16_U321 ( .A1(ff_mult0_mult_16_n364), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n365), .ZN(ff_mult0_mult_16_n121) );
  XNOR2_X1 ff_mult0_mult_16_U320 ( .A(coeff_b1[2]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n363) );
  OAI22_X1 ff_mult0_mult_16_U319 ( .A1(ff_mult0_mult_16_n363), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n364), .ZN(ff_mult0_mult_16_n122) );
  XNOR2_X1 ff_mult0_mult_16_U318 ( .A(coeff_b1[1]), .B(ff_mult0_mult_16_n279), 
        .ZN(ff_mult0_mult_16_n362) );
  OAI22_X1 ff_mult0_mult_16_U317 ( .A1(ff_mult0_mult_16_n362), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n363), .ZN(ff_mult0_mult_16_n123) );
  XNOR2_X1 ff_mult0_mult_16_U316 ( .A(ff_mult0_mult_16_n279), .B(coeff_b1[0]), 
        .ZN(ff_mult0_mult_16_n361) );
  OAI22_X1 ff_mult0_mult_16_U315 ( .A1(ff_mult0_mult_16_n361), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n362), .ZN(ff_mult0_mult_16_n124) );
  NOR2_X1 ff_mult0_mult_16_U314 ( .A1(ff_mult0_mult_16_n312), .A2(
        ff_mult0_mult_16_n300), .ZN(ff_mult0_mult_16_n125) );
  XNOR2_X1 ff_mult0_mult_16_U313 ( .A(coeff_b1[8]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n340) );
  XOR2_X1 ff_mult0_mult_16_U312 ( .A(sw0[2]), .B(ff_mult0_mult_16_n277), .Z(
        ff_mult0_mult_16_n326) );
  XNOR2_X1 ff_mult0_mult_16_U311 ( .A(ff_mult0_mult_16_n304), .B(sw0[2]), .ZN(
        ff_mult0_mult_16_n360) );
  NAND2_X1 ff_mult0_mult_16_U310 ( .A1(ff_mult0_mult_16_n305), .A2(
        ff_mult0_mult_16_n360), .ZN(ff_mult0_mult_16_n324) );
  OAI22_X1 ff_mult0_mult_16_U309 ( .A1(ff_mult0_mult_16_n340), .A2(
        ff_mult0_mult_16_n305), .B1(ff_mult0_mult_16_n324), .B2(
        ff_mult0_mult_16_n340), .ZN(ff_mult0_mult_16_n359) );
  XNOR2_X1 ff_mult0_mult_16_U308 ( .A(coeff_b1[6]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n358) );
  XNOR2_X1 ff_mult0_mult_16_U307 ( .A(coeff_b1[7]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n339) );
  OAI22_X1 ff_mult0_mult_16_U306 ( .A1(ff_mult0_mult_16_n358), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n339), .ZN(ff_mult0_mult_16_n127) );
  XNOR2_X1 ff_mult0_mult_16_U305 ( .A(coeff_b1[5]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n357) );
  OAI22_X1 ff_mult0_mult_16_U304 ( .A1(ff_mult0_mult_16_n357), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n358), .ZN(ff_mult0_mult_16_n128) );
  XNOR2_X1 ff_mult0_mult_16_U303 ( .A(coeff_b1[4]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n356) );
  OAI22_X1 ff_mult0_mult_16_U302 ( .A1(ff_mult0_mult_16_n356), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n357), .ZN(ff_mult0_mult_16_n129) );
  XNOR2_X1 ff_mult0_mult_16_U301 ( .A(coeff_b1[3]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n355) );
  OAI22_X1 ff_mult0_mult_16_U300 ( .A1(ff_mult0_mult_16_n355), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n356), .ZN(ff_mult0_mult_16_n130) );
  XNOR2_X1 ff_mult0_mult_16_U299 ( .A(coeff_b1[2]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n354) );
  OAI22_X1 ff_mult0_mult_16_U298 ( .A1(ff_mult0_mult_16_n354), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n355), .ZN(ff_mult0_mult_16_n131) );
  XNOR2_X1 ff_mult0_mult_16_U297 ( .A(coeff_b1[1]), .B(ff_mult0_mult_16_n278), 
        .ZN(ff_mult0_mult_16_n353) );
  OAI22_X1 ff_mult0_mult_16_U296 ( .A1(ff_mult0_mult_16_n353), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n354), .ZN(ff_mult0_mult_16_n132) );
  XNOR2_X1 ff_mult0_mult_16_U295 ( .A(ff_mult0_mult_16_n278), .B(coeff_b1[0]), 
        .ZN(ff_mult0_mult_16_n352) );
  OAI22_X1 ff_mult0_mult_16_U294 ( .A1(ff_mult0_mult_16_n352), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n353), .ZN(ff_mult0_mult_16_n133) );
  XNOR2_X1 ff_mult0_mult_16_U293 ( .A(coeff_b1[8]), .B(ff_mult0_mult_16_n277), 
        .ZN(ff_mult0_mult_16_n350) );
  NAND2_X1 ff_mult0_mult_16_U292 ( .A1(ff_mult0_mult_16_n277), .A2(
        ff_mult0_mult_16_n306), .ZN(ff_mult0_mult_16_n331) );
  OAI22_X1 ff_mult0_mult_16_U291 ( .A1(ff_mult0_mult_16_n306), .A2(
        ff_mult0_mult_16_n350), .B1(ff_mult0_mult_16_n331), .B2(
        ff_mult0_mult_16_n350), .ZN(ff_mult0_mult_16_n351) );
  XNOR2_X1 ff_mult0_mult_16_U290 ( .A(coeff_b1[7]), .B(ff_mult0_mult_16_n277), 
        .ZN(ff_mult0_mult_16_n349) );
  OAI22_X1 ff_mult0_mult_16_U289 ( .A1(ff_mult0_mult_16_n349), .A2(
        ff_mult0_mult_16_n331), .B1(ff_mult0_mult_16_n350), .B2(
        ff_mult0_mult_16_n306), .ZN(ff_mult0_mult_16_n136) );
  XNOR2_X1 ff_mult0_mult_16_U288 ( .A(coeff_b1[6]), .B(ff_mult0_mult_16_n277), 
        .ZN(ff_mult0_mult_16_n348) );
  OAI22_X1 ff_mult0_mult_16_U287 ( .A1(ff_mult0_mult_16_n348), .A2(
        ff_mult0_mult_16_n331), .B1(ff_mult0_mult_16_n349), .B2(
        ff_mult0_mult_16_n306), .ZN(ff_mult0_mult_16_n137) );
  XNOR2_X1 ff_mult0_mult_16_U286 ( .A(coeff_b1[5]), .B(ff_mult0_mult_16_n277), 
        .ZN(ff_mult0_mult_16_n347) );
  OAI22_X1 ff_mult0_mult_16_U285 ( .A1(ff_mult0_mult_16_n347), .A2(
        ff_mult0_mult_16_n331), .B1(ff_mult0_mult_16_n348), .B2(
        ff_mult0_mult_16_n306), .ZN(ff_mult0_mult_16_n138) );
  XNOR2_X1 ff_mult0_mult_16_U284 ( .A(coeff_b1[4]), .B(ff_mult0_mult_16_n277), 
        .ZN(ff_mult0_mult_16_n346) );
  OAI22_X1 ff_mult0_mult_16_U283 ( .A1(ff_mult0_mult_16_n346), .A2(
        ff_mult0_mult_16_n331), .B1(ff_mult0_mult_16_n347), .B2(
        ff_mult0_mult_16_n306), .ZN(ff_mult0_mult_16_n139) );
  XNOR2_X1 ff_mult0_mult_16_U282 ( .A(coeff_b1[3]), .B(ff_mult0_mult_16_n277), 
        .ZN(ff_mult0_mult_16_n345) );
  OAI22_X1 ff_mult0_mult_16_U281 ( .A1(ff_mult0_mult_16_n345), .A2(
        ff_mult0_mult_16_n331), .B1(ff_mult0_mult_16_n346), .B2(
        ff_mult0_mult_16_n306), .ZN(ff_mult0_mult_16_n140) );
  XNOR2_X1 ff_mult0_mult_16_U280 ( .A(coeff_b1[2]), .B(ff_mult0_mult_16_n277), 
        .ZN(ff_mult0_mult_16_n332) );
  OAI22_X1 ff_mult0_mult_16_U279 ( .A1(ff_mult0_mult_16_n332), .A2(
        ff_mult0_mult_16_n331), .B1(ff_mult0_mult_16_n345), .B2(
        ff_mult0_mult_16_n306), .ZN(ff_mult0_mult_16_n141) );
  OAI22_X1 ff_mult0_mult_16_U278 ( .A1(ff_mult0_mult_16_n343), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n344), .ZN(ff_mult0_mult_16_n22) );
  OAI22_X1 ff_mult0_mult_16_U277 ( .A1(ff_mult0_mult_16_n341), .A2(
        ff_mult0_mult_16_n310), .B1(ff_mult0_mult_16_n312), .B2(
        ff_mult0_mult_16_n342), .ZN(ff_mult0_mult_16_n32) );
  OAI22_X1 ff_mult0_mult_16_U276 ( .A1(ff_mult0_mult_16_n339), .A2(
        ff_mult0_mult_16_n324), .B1(ff_mult0_mult_16_n305), .B2(
        ff_mult0_mult_16_n340), .ZN(ff_mult0_mult_16_n46) );
  OAI22_X1 ff_mult0_mult_16_U275 ( .A1(ff_mult0_mult_16_n337), .A2(
        ff_mult0_mult_16_n313), .B1(ff_mult0_mult_16_n315), .B2(
        ff_mult0_mult_16_n338), .ZN(ff_mult0_mult_16_n336) );
  XNOR2_X1 ff_mult0_mult_16_U274 ( .A(ff_mult0_mult_16_n299), .B(
        ff_mult0_mult_16_n281), .ZN(ff_mult0_mult_16_n334) );
  NAND2_X1 ff_mult0_mult_16_U273 ( .A1(ff_mult0_mult_16_n334), .A2(
        ff_mult0_mult_16_n301), .ZN(ff_mult0_mult_16_n333) );
  NAND2_X1 ff_mult0_mult_16_U272 ( .A1(ff_mult0_mult_16_n297), .A2(
        ff_mult0_mult_16_n333), .ZN(ff_mult0_mult_16_n54) );
  XNOR2_X1 ff_mult0_mult_16_U271 ( .A(ff_mult0_mult_16_n333), .B(
        ff_mult0_mult_16_n297), .ZN(ff_mult0_mult_16_n55) );
  OAI22_X1 ff_mult0_mult_16_U270 ( .A1(coeff_b1[1]), .A2(ff_mult0_mult_16_n331), .B1(ff_mult0_mult_16_n332), .B2(ff_mult0_mult_16_n306), .ZN(
        ff_mult0_mult_16_n330) );
  NAND2_X1 ff_mult0_mult_16_U269 ( .A1(ff_mult0_mult_16_n326), .A2(
        ff_mult0_mult_16_n330), .ZN(ff_mult0_mult_16_n328) );
  NAND3_X1 ff_mult0_mult_16_U268 ( .A1(ff_mult0_mult_16_n330), .A2(
        ff_mult0_mult_16_n299), .A3(ff_mult0_mult_16_n277), .ZN(
        ff_mult0_mult_16_n329) );
  MUX2_X1 ff_mult0_mult_16_U267 ( .A(ff_mult0_mult_16_n328), .B(
        ff_mult0_mult_16_n329), .S(ff_mult0_mult_16_n300), .Z(
        ff_mult0_mult_16_n327) );
  NAND3_X1 ff_mult0_mult_16_U266 ( .A1(ff_mult0_mult_16_n326), .A2(
        ff_mult0_mult_16_n300), .A3(ff_mult0_mult_16_n278), .ZN(
        ff_mult0_mult_16_n325) );
  OAI21_X1 ff_mult0_mult_16_U265 ( .B1(ff_mult0_mult_16_n304), .B2(
        ff_mult0_mult_16_n324), .A(ff_mult0_mult_16_n325), .ZN(
        ff_mult0_mult_16_n323) );
  AOI222_X1 ff_mult0_mult_16_U264 ( .A1(ff_mult0_mult_16_n298), .A2(
        ff_mult0_mult_16_n79), .B1(ff_mult0_mult_16_n323), .B2(
        ff_mult0_mult_16_n298), .C1(ff_mult0_mult_16_n323), .C2(
        ff_mult0_mult_16_n79), .ZN(ff_mult0_mult_16_n322) );
  AOI222_X1 ff_mult0_mult_16_U263 ( .A1(ff_mult0_mult_16_n296), .A2(
        ff_mult0_mult_16_n77), .B1(ff_mult0_mult_16_n296), .B2(
        ff_mult0_mult_16_n78), .C1(ff_mult0_mult_16_n78), .C2(
        ff_mult0_mult_16_n77), .ZN(ff_mult0_mult_16_n321) );
  AOI222_X1 ff_mult0_mult_16_U262 ( .A1(ff_mult0_mult_16_n295), .A2(
        ff_mult0_mult_16_n73), .B1(ff_mult0_mult_16_n295), .B2(
        ff_mult0_mult_16_n76), .C1(ff_mult0_mult_16_n76), .C2(
        ff_mult0_mult_16_n73), .ZN(ff_mult0_mult_16_n320) );
  AOI222_X1 ff_mult0_mult_16_U261 ( .A1(ff_mult0_mult_16_n294), .A2(
        ff_mult0_mult_16_n69), .B1(ff_mult0_mult_16_n294), .B2(
        ff_mult0_mult_16_n72), .C1(ff_mult0_mult_16_n72), .C2(
        ff_mult0_mult_16_n69), .ZN(ff_mult0_mult_16_n319) );
  AOI222_X1 ff_mult0_mult_16_U260 ( .A1(ff_mult0_mult_16_n293), .A2(
        ff_mult0_mult_16_n63), .B1(ff_mult0_mult_16_n293), .B2(
        ff_mult0_mult_16_n68), .C1(ff_mult0_mult_16_n68), .C2(
        ff_mult0_mult_16_n63), .ZN(ff_mult0_mult_16_n318) );
  OAI222_X1 ff_mult0_mult_16_U259 ( .A1(ff_mult0_mult_16_n318), .A2(
        ff_mult0_mult_16_n285), .B1(ff_mult0_mult_16_n318), .B2(
        ff_mult0_mult_16_n292), .C1(ff_mult0_mult_16_n292), .C2(
        ff_mult0_mult_16_n285), .ZN(ff_mult0_mult_16_n317) );
  AOI222_X1 ff_mult0_mult_16_U258 ( .A1(ff_mult0_mult_16_n317), .A2(
        ff_mult0_mult_16_n49), .B1(ff_mult0_mult_16_n317), .B2(
        ff_mult0_mult_16_n56), .C1(ff_mult0_mult_16_n56), .C2(
        ff_mult0_mult_16_n49), .ZN(ff_mult0_mult_16_n316) );
  OAI222_X1 ff_mult0_mult_16_U257 ( .A1(ff_mult0_mult_16_n316), .A2(
        ff_mult0_mult_16_n282), .B1(ff_mult0_mult_16_n316), .B2(
        ff_mult0_mult_16_n283), .C1(ff_mult0_mult_16_n283), .C2(
        ff_mult0_mult_16_n282), .ZN(ff_mult0_mult_16_n7) );
  AND3_X1 ff_mult0_mult_16_U256 ( .A1(ff_mult0_mult_16_n281), .A2(
        ff_mult0_mult_16_n300), .A3(ff_mult0_mult_16_n301), .ZN(
        ff_mult0_mult_16_n94) );
  OR3_X1 ff_mult0_mult_16_U255 ( .A1(ff_mult0_mult_16_n315), .A2(coeff_b1[0]), 
        .A3(ff_mult0_mult_16_n302), .ZN(ff_mult0_mult_16_n314) );
  OAI21_X1 ff_mult0_mult_16_U254 ( .B1(ff_mult0_mult_16_n302), .B2(
        ff_mult0_mult_16_n313), .A(ff_mult0_mult_16_n314), .ZN(
        ff_mult0_mult_16_n95) );
  OR3_X1 ff_mult0_mult_16_U253 ( .A1(ff_mult0_mult_16_n312), .A2(coeff_b1[0]), 
        .A3(ff_mult0_mult_16_n303), .ZN(ff_mult0_mult_16_n311) );
  OAI21_X1 ff_mult0_mult_16_U252 ( .B1(ff_mult0_mult_16_n303), .B2(
        ff_mult0_mult_16_n310), .A(ff_mult0_mult_16_n311), .ZN(
        ff_mult0_mult_16_n96) );
  NOR2_X1 ff_mult0_mult_16_U251 ( .A1(ff_mult0_mult_16_n306), .A2(
        ff_mult0_mult_16_n300), .ZN(ff_mult0_fract_product_0_) );
  XOR2_X1 ff_mult0_mult_16_U250 ( .A(coeff_b1[8]), .B(ff_mult0_mult_16_n281), 
        .Z(ff_mult0_mult_16_n309) );
  NAND2_X1 ff_mult0_mult_16_U249 ( .A1(ff_mult0_mult_16_n309), .A2(
        ff_mult0_mult_16_n301), .ZN(ff_mult0_mult_16_n307) );
  XOR2_X1 ff_mult0_mult_16_U248 ( .A(ff_mult0_mult_16_n2), .B(
        ff_mult0_mult_16_n18), .Z(ff_mult0_mult_16_n308) );
  XOR2_X1 ff_mult0_mult_16_U247 ( .A(ff_mult0_mult_16_n307), .B(
        ff_mult0_mult_16_n308), .Z(ff0[16]) );
  INV_X1 ff_mult0_mult_16_U246 ( .A(ff_mult0_mult_16_n375), .ZN(
        ff_mult0_mult_16_n290) );
  INV_X1 ff_mult0_mult_16_U245 ( .A(ff_mult0_mult_16_n22), .ZN(
        ff_mult0_mult_16_n291) );
  INV_X1 ff_mult0_mult_16_U244 ( .A(coeff_b1[1]), .ZN(ff_mult0_mult_16_n299)
         );
  BUF_X1 ff_mult0_mult_16_U243 ( .A(sw0[8]), .Z(ff_mult0_mult_16_n281) );
  BUF_X1 ff_mult0_mult_16_U242 ( .A(sw0[1]), .Z(ff_mult0_mult_16_n277) );
  BUF_X1 ff_mult0_mult_16_U241 ( .A(sw0[5]), .Z(ff_mult0_mult_16_n279) );
  BUF_X1 ff_mult0_mult_16_U240 ( .A(sw0[7]), .Z(ff_mult0_mult_16_n280) );
  BUF_X1 ff_mult0_mult_16_U239 ( .A(sw0[3]), .Z(ff_mult0_mult_16_n278) );
  INV_X1 ff_mult0_mult_16_U238 ( .A(coeff_b1[0]), .ZN(ff_mult0_mult_16_n300)
         );
  INV_X1 ff_mult0_mult_16_U237 ( .A(sw0[0]), .ZN(ff_mult0_mult_16_n306) );
  XOR2_X1 ff_mult0_mult_16_U236 ( .A(sw0[6]), .B(ff_mult0_mult_16_n303), .Z(
        ff_mult0_mult_16_n315) );
  XOR2_X1 ff_mult0_mult_16_U235 ( .A(sw0[4]), .B(ff_mult0_mult_16_n304), .Z(
        ff_mult0_mult_16_n312) );
  INV_X1 ff_mult0_mult_16_U234 ( .A(ff_mult0_mult_16_n336), .ZN(
        ff_mult0_mult_16_n297) );
  INV_X1 ff_mult0_mult_16_U233 ( .A(ff_mult0_mult_16_n280), .ZN(
        ff_mult0_mult_16_n302) );
  INV_X1 ff_mult0_mult_16_U232 ( .A(ff_mult0_mult_16_n278), .ZN(
        ff_mult0_mult_16_n304) );
  INV_X1 ff_mult0_mult_16_U231 ( .A(ff_mult0_mult_16_n327), .ZN(
        ff_mult0_mult_16_n298) );
  INV_X1 ff_mult0_mult_16_U230 ( .A(ff_mult0_mult_16_n322), .ZN(
        ff_mult0_mult_16_n296) );
  INV_X1 ff_mult0_mult_16_U229 ( .A(ff_mult0_mult_16_n321), .ZN(
        ff_mult0_mult_16_n295) );
  INV_X1 ff_mult0_mult_16_U228 ( .A(ff_mult0_mult_16_n320), .ZN(
        ff_mult0_mult_16_n294) );
  INV_X1 ff_mult0_mult_16_U227 ( .A(ff_mult0_mult_16_n279), .ZN(
        ff_mult0_mult_16_n303) );
  INV_X1 ff_mult0_mult_16_U226 ( .A(ff_mult0_mult_16_n368), .ZN(
        ff_mult0_mult_16_n288) );
  INV_X1 ff_mult0_mult_16_U225 ( .A(ff_mult0_mult_16_n359), .ZN(
        ff_mult0_mult_16_n286) );
  INV_X1 ff_mult0_mult_16_U224 ( .A(ff_mult0_mult_16_n32), .ZN(
        ff_mult0_mult_16_n289) );
  INV_X1 ff_mult0_mult_16_U223 ( .A(ff_mult0_mult_16_n351), .ZN(
        ff_mult0_mult_16_n284) );
  INV_X1 ff_mult0_mult_16_U222 ( .A(ff_mult0_mult_16_n326), .ZN(
        ff_mult0_mult_16_n305) );
  INV_X1 ff_mult0_mult_16_U221 ( .A(ff_mult0_mult_16_n319), .ZN(
        ff_mult0_mult_16_n293) );
  INV_X1 ff_mult0_mult_16_U220 ( .A(ff_mult0_mult_16_n46), .ZN(
        ff_mult0_mult_16_n287) );
  INV_X1 ff_mult0_mult_16_U219 ( .A(ff_mult0_mult_16_n335), .ZN(
        ff_mult0_mult_16_n301) );
  INV_X1 ff_mult0_mult_16_U218 ( .A(ff_mult0_mult_16_n57), .ZN(
        ff_mult0_mult_16_n285) );
  INV_X1 ff_mult0_mult_16_U217 ( .A(ff_mult0_mult_16_n62), .ZN(
        ff_mult0_mult_16_n292) );
  INV_X1 ff_mult0_mult_16_U216 ( .A(ff_mult0_mult_16_n41), .ZN(
        ff_mult0_mult_16_n282) );
  INV_X1 ff_mult0_mult_16_U215 ( .A(ff_mult0_mult_16_n48), .ZN(
        ff_mult0_mult_16_n283) );
  HA_X1 ff_mult0_mult_16_U50 ( .A(ff_mult0_mult_16_n133), .B(
        ff_mult0_mult_16_n141), .CO(ff_mult0_mult_16_n78), .S(
        ff_mult0_mult_16_n79) );
  FA_X1 ff_mult0_mult_16_U49 ( .A(ff_mult0_mult_16_n140), .B(
        ff_mult0_mult_16_n125), .CI(ff_mult0_mult_16_n132), .CO(
        ff_mult0_mult_16_n76), .S(ff_mult0_mult_16_n77) );
  HA_X1 ff_mult0_mult_16_U48 ( .A(ff_mult0_mult_16_n96), .B(
        ff_mult0_mult_16_n124), .CO(ff_mult0_mult_16_n74), .S(
        ff_mult0_mult_16_n75) );
  FA_X1 ff_mult0_mult_16_U47 ( .A(ff_mult0_mult_16_n131), .B(
        ff_mult0_mult_16_n139), .CI(ff_mult0_mult_16_n75), .CO(
        ff_mult0_mult_16_n72), .S(ff_mult0_mult_16_n73) );
  FA_X1 ff_mult0_mult_16_U46 ( .A(ff_mult0_mult_16_n138), .B(
        ff_mult0_mult_16_n116), .CI(ff_mult0_mult_16_n130), .CO(
        ff_mult0_mult_16_n70), .S(ff_mult0_mult_16_n71) );
  FA_X1 ff_mult0_mult_16_U45 ( .A(ff_mult0_mult_16_n74), .B(
        ff_mult0_mult_16_n123), .CI(ff_mult0_mult_16_n71), .CO(
        ff_mult0_mult_16_n68), .S(ff_mult0_mult_16_n69) );
  HA_X1 ff_mult0_mult_16_U44 ( .A(ff_mult0_mult_16_n95), .B(
        ff_mult0_mult_16_n115), .CO(ff_mult0_mult_16_n66), .S(
        ff_mult0_mult_16_n67) );
  FA_X1 ff_mult0_mult_16_U43 ( .A(ff_mult0_mult_16_n122), .B(
        ff_mult0_mult_16_n137), .CI(ff_mult0_mult_16_n129), .CO(
        ff_mult0_mult_16_n64), .S(ff_mult0_mult_16_n65) );
  FA_X1 ff_mult0_mult_16_U42 ( .A(ff_mult0_mult_16_n70), .B(
        ff_mult0_mult_16_n67), .CI(ff_mult0_mult_16_n65), .CO(
        ff_mult0_mult_16_n62), .S(ff_mult0_mult_16_n63) );
  FA_X1 ff_mult0_mult_16_U41 ( .A(ff_mult0_mult_16_n121), .B(
        ff_mult0_mult_16_n107), .CI(ff_mult0_mult_16_n136), .CO(
        ff_mult0_mult_16_n60), .S(ff_mult0_mult_16_n61) );
  FA_X1 ff_mult0_mult_16_U40 ( .A(ff_mult0_mult_16_n114), .B(
        ff_mult0_mult_16_n128), .CI(ff_mult0_mult_16_n66), .CO(
        ff_mult0_mult_16_n58), .S(ff_mult0_mult_16_n59) );
  FA_X1 ff_mult0_mult_16_U39 ( .A(ff_mult0_mult_16_n61), .B(
        ff_mult0_mult_16_n64), .CI(ff_mult0_mult_16_n59), .CO(
        ff_mult0_mult_16_n56), .S(ff_mult0_mult_16_n57) );
  FA_X1 ff_mult0_mult_16_U36 ( .A(ff_mult0_mult_16_n94), .B(
        ff_mult0_mult_16_n120), .CI(ff_mult0_mult_16_n284), .CO(
        ff_mult0_mult_16_n52), .S(ff_mult0_mult_16_n53) );
  FA_X1 ff_mult0_mult_16_U35 ( .A(ff_mult0_mult_16_n55), .B(
        ff_mult0_mult_16_n127), .CI(ff_mult0_mult_16_n60), .CO(
        ff_mult0_mult_16_n50), .S(ff_mult0_mult_16_n51) );
  FA_X1 ff_mult0_mult_16_U34 ( .A(ff_mult0_mult_16_n53), .B(
        ff_mult0_mult_16_n58), .CI(ff_mult0_mult_16_n51), .CO(
        ff_mult0_mult_16_n48), .S(ff_mult0_mult_16_n49) );
  FA_X1 ff_mult0_mult_16_U32 ( .A(ff_mult0_mult_16_n112), .B(
        ff_mult0_mult_16_n105), .CI(ff_mult0_mult_16_n119), .CO(
        ff_mult0_mult_16_n44), .S(ff_mult0_mult_16_n45) );
  FA_X1 ff_mult0_mult_16_U31 ( .A(ff_mult0_mult_16_n54), .B(
        ff_mult0_mult_16_n287), .CI(ff_mult0_mult_16_n52), .CO(
        ff_mult0_mult_16_n42), .S(ff_mult0_mult_16_n43) );
  FA_X1 ff_mult0_mult_16_U30 ( .A(ff_mult0_mult_16_n50), .B(
        ff_mult0_mult_16_n45), .CI(ff_mult0_mult_16_n43), .CO(
        ff_mult0_mult_16_n40), .S(ff_mult0_mult_16_n41) );
  FA_X1 ff_mult0_mult_16_U29 ( .A(ff_mult0_mult_16_n111), .B(
        ff_mult0_mult_16_n104), .CI(ff_mult0_mult_16_n286), .CO(
        ff_mult0_mult_16_n38), .S(ff_mult0_mult_16_n39) );
  FA_X1 ff_mult0_mult_16_U28 ( .A(ff_mult0_mult_16_n46), .B(
        ff_mult0_mult_16_n118), .CI(ff_mult0_mult_16_n44), .CO(
        ff_mult0_mult_16_n36), .S(ff_mult0_mult_16_n37) );
  FA_X1 ff_mult0_mult_16_U27 ( .A(ff_mult0_mult_16_n42), .B(
        ff_mult0_mult_16_n39), .CI(ff_mult0_mult_16_n37), .CO(
        ff_mult0_mult_16_n34), .S(ff_mult0_mult_16_n35) );
  FA_X1 ff_mult0_mult_16_U25 ( .A(ff_mult0_mult_16_n103), .B(
        ff_mult0_mult_16_n110), .CI(ff_mult0_mult_16_n289), .CO(
        ff_mult0_mult_16_n30), .S(ff_mult0_mult_16_n31) );
  FA_X1 ff_mult0_mult_16_U24 ( .A(ff_mult0_mult_16_n31), .B(
        ff_mult0_mult_16_n38), .CI(ff_mult0_mult_16_n36), .CO(
        ff_mult0_mult_16_n28), .S(ff_mult0_mult_16_n29) );
  FA_X1 ff_mult0_mult_16_U23 ( .A(ff_mult0_mult_16_n109), .B(
        ff_mult0_mult_16_n32), .CI(ff_mult0_mult_16_n288), .CO(
        ff_mult0_mult_16_n26), .S(ff_mult0_mult_16_n27) );
  FA_X1 ff_mult0_mult_16_U22 ( .A(ff_mult0_mult_16_n30), .B(
        ff_mult0_mult_16_n102), .CI(ff_mult0_mult_16_n27), .CO(
        ff_mult0_mult_16_n24), .S(ff_mult0_mult_16_n25) );
  FA_X1 ff_mult0_mult_16_U20 ( .A(ff_mult0_mult_16_n291), .B(
        ff_mult0_mult_16_n101), .CI(ff_mult0_mult_16_n26), .CO(
        ff_mult0_mult_16_n20), .S(ff_mult0_mult_16_n21) );
  FA_X1 ff_mult0_mult_16_U19 ( .A(ff_mult0_mult_16_n100), .B(
        ff_mult0_mult_16_n22), .CI(ff_mult0_mult_16_n290), .CO(
        ff_mult0_mult_16_n18), .S(ff_mult0_mult_16_n19) );
  FA_X1 ff_mult0_mult_16_U7 ( .A(ff_mult0_mult_16_n35), .B(
        ff_mult0_mult_16_n40), .CI(ff_mult0_mult_16_n7), .CO(
        ff_mult0_mult_16_n6), .S(ff0[11]) );
  FA_X1 ff_mult0_mult_16_U6 ( .A(ff_mult0_mult_16_n29), .B(
        ff_mult0_mult_16_n34), .CI(ff_mult0_mult_16_n6), .CO(
        ff_mult0_mult_16_n5), .S(ff0[12]) );
  FA_X1 ff_mult0_mult_16_U5 ( .A(ff_mult0_mult_16_n25), .B(
        ff_mult0_mult_16_n28), .CI(ff_mult0_mult_16_n5), .CO(
        ff_mult0_mult_16_n4), .S(ff0[13]) );
  FA_X1 ff_mult0_mult_16_U4 ( .A(ff_mult0_mult_16_n21), .B(
        ff_mult0_mult_16_n24), .CI(ff_mult0_mult_16_n4), .CO(
        ff_mult0_mult_16_n3), .S(ff0[14]) );
  FA_X1 ff_mult0_mult_16_U3 ( .A(ff_mult0_mult_16_n20), .B(
        ff_mult0_mult_16_n19), .CI(ff_mult0_mult_16_n3), .CO(
        ff_mult0_mult_16_n2), .S(ff0[15]) );
  XOR2_X1 ff_mult1_mult_16_U366 ( .A(ff_mult1_mult_16_n281), .B(
        ff_mult1_mult_16_n302), .Z(ff_mult1_mult_16_n335) );
  XNOR2_X1 ff_mult1_mult_16_U365 ( .A(coeff_b2[7]), .B(ff_mult1_mult_16_n281), 
        .ZN(ff_mult1_mult_16_n382) );
  NOR2_X1 ff_mult1_mult_16_U364 ( .A1(ff_mult1_mult_16_n335), .A2(
        ff_mult1_mult_16_n382), .ZN(ff_mult1_mult_16_n100) );
  XNOR2_X1 ff_mult1_mult_16_U363 ( .A(coeff_b2[6]), .B(ff_mult1_mult_16_n281), 
        .ZN(ff_mult1_mult_16_n381) );
  NOR2_X1 ff_mult1_mult_16_U362 ( .A1(ff_mult1_mult_16_n335), .A2(
        ff_mult1_mult_16_n381), .ZN(ff_mult1_mult_16_n101) );
  XNOR2_X1 ff_mult1_mult_16_U361 ( .A(coeff_b2[5]), .B(ff_mult1_mult_16_n281), 
        .ZN(ff_mult1_mult_16_n380) );
  NOR2_X1 ff_mult1_mult_16_U360 ( .A1(ff_mult1_mult_16_n335), .A2(
        ff_mult1_mult_16_n380), .ZN(ff_mult1_mult_16_n102) );
  XNOR2_X1 ff_mult1_mult_16_U359 ( .A(coeff_b2[4]), .B(ff_mult1_mult_16_n281), 
        .ZN(ff_mult1_mult_16_n379) );
  NOR2_X1 ff_mult1_mult_16_U358 ( .A1(ff_mult1_mult_16_n335), .A2(
        ff_mult1_mult_16_n379), .ZN(ff_mult1_mult_16_n103) );
  XNOR2_X1 ff_mult1_mult_16_U357 ( .A(coeff_b2[3]), .B(ff_mult1_mult_16_n281), 
        .ZN(ff_mult1_mult_16_n378) );
  NOR2_X1 ff_mult1_mult_16_U356 ( .A1(ff_mult1_mult_16_n335), .A2(
        ff_mult1_mult_16_n378), .ZN(ff_mult1_mult_16_n104) );
  XNOR2_X1 ff_mult1_mult_16_U355 ( .A(coeff_b2[2]), .B(ff_mult1_mult_16_n281), 
        .ZN(ff_mult1_mult_16_n377) );
  NOR2_X1 ff_mult1_mult_16_U354 ( .A1(ff_mult1_mult_16_n335), .A2(
        ff_mult1_mult_16_n377), .ZN(ff_mult1_mult_16_n105) );
  NOR2_X1 ff_mult1_mult_16_U353 ( .A1(ff_mult1_mult_16_n335), .A2(
        ff_mult1_mult_16_n300), .ZN(ff_mult1_mult_16_n107) );
  XNOR2_X1 ff_mult1_mult_16_U352 ( .A(coeff_b2[8]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n344) );
  XNOR2_X1 ff_mult1_mult_16_U351 ( .A(ff_mult1_mult_16_n302), .B(sw1[6]), .ZN(
        ff_mult1_mult_16_n376) );
  NAND2_X1 ff_mult1_mult_16_U350 ( .A1(ff_mult1_mult_16_n315), .A2(
        ff_mult1_mult_16_n376), .ZN(ff_mult1_mult_16_n313) );
  OAI22_X1 ff_mult1_mult_16_U349 ( .A1(ff_mult1_mult_16_n344), .A2(
        ff_mult1_mult_16_n315), .B1(ff_mult1_mult_16_n313), .B2(
        ff_mult1_mult_16_n344), .ZN(ff_mult1_mult_16_n375) );
  XNOR2_X1 ff_mult1_mult_16_U348 ( .A(coeff_b2[6]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n374) );
  XNOR2_X1 ff_mult1_mult_16_U347 ( .A(coeff_b2[7]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n343) );
  OAI22_X1 ff_mult1_mult_16_U346 ( .A1(ff_mult1_mult_16_n374), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n343), .ZN(ff_mult1_mult_16_n109) );
  XNOR2_X1 ff_mult1_mult_16_U345 ( .A(coeff_b2[5]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n373) );
  OAI22_X1 ff_mult1_mult_16_U344 ( .A1(ff_mult1_mult_16_n373), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n374), .ZN(ff_mult1_mult_16_n110) );
  XNOR2_X1 ff_mult1_mult_16_U343 ( .A(coeff_b2[4]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n372) );
  OAI22_X1 ff_mult1_mult_16_U342 ( .A1(ff_mult1_mult_16_n372), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n373), .ZN(ff_mult1_mult_16_n111) );
  XNOR2_X1 ff_mult1_mult_16_U341 ( .A(coeff_b2[3]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n338) );
  OAI22_X1 ff_mult1_mult_16_U340 ( .A1(ff_mult1_mult_16_n338), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n372), .ZN(ff_mult1_mult_16_n112) );
  XNOR2_X1 ff_mult1_mult_16_U339 ( .A(coeff_b2[1]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n371) );
  XNOR2_X1 ff_mult1_mult_16_U338 ( .A(coeff_b2[2]), .B(ff_mult1_mult_16_n280), 
        .ZN(ff_mult1_mult_16_n337) );
  OAI22_X1 ff_mult1_mult_16_U337 ( .A1(ff_mult1_mult_16_n371), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n337), .ZN(ff_mult1_mult_16_n114) );
  XNOR2_X1 ff_mult1_mult_16_U336 ( .A(ff_mult1_mult_16_n280), .B(coeff_b2[0]), 
        .ZN(ff_mult1_mult_16_n370) );
  OAI22_X1 ff_mult1_mult_16_U335 ( .A1(ff_mult1_mult_16_n370), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n371), .ZN(ff_mult1_mult_16_n115) );
  NOR2_X1 ff_mult1_mult_16_U334 ( .A1(ff_mult1_mult_16_n315), .A2(
        ff_mult1_mult_16_n300), .ZN(ff_mult1_mult_16_n116) );
  XNOR2_X1 ff_mult1_mult_16_U333 ( .A(coeff_b2[8]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n342) );
  XNOR2_X1 ff_mult1_mult_16_U332 ( .A(ff_mult1_mult_16_n303), .B(sw1[4]), .ZN(
        ff_mult1_mult_16_n369) );
  NAND2_X1 ff_mult1_mult_16_U331 ( .A1(ff_mult1_mult_16_n312), .A2(
        ff_mult1_mult_16_n369), .ZN(ff_mult1_mult_16_n310) );
  OAI22_X1 ff_mult1_mult_16_U330 ( .A1(ff_mult1_mult_16_n342), .A2(
        ff_mult1_mult_16_n312), .B1(ff_mult1_mult_16_n310), .B2(
        ff_mult1_mult_16_n342), .ZN(ff_mult1_mult_16_n368) );
  XNOR2_X1 ff_mult1_mult_16_U329 ( .A(coeff_b2[6]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n367) );
  XNOR2_X1 ff_mult1_mult_16_U328 ( .A(coeff_b2[7]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n341) );
  OAI22_X1 ff_mult1_mult_16_U327 ( .A1(ff_mult1_mult_16_n367), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n341), .ZN(ff_mult1_mult_16_n118) );
  XNOR2_X1 ff_mult1_mult_16_U326 ( .A(coeff_b2[5]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n366) );
  OAI22_X1 ff_mult1_mult_16_U325 ( .A1(ff_mult1_mult_16_n366), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n367), .ZN(ff_mult1_mult_16_n119) );
  XNOR2_X1 ff_mult1_mult_16_U324 ( .A(coeff_b2[4]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n365) );
  OAI22_X1 ff_mult1_mult_16_U323 ( .A1(ff_mult1_mult_16_n365), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n366), .ZN(ff_mult1_mult_16_n120) );
  XNOR2_X1 ff_mult1_mult_16_U322 ( .A(coeff_b2[3]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n364) );
  OAI22_X1 ff_mult1_mult_16_U321 ( .A1(ff_mult1_mult_16_n364), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n365), .ZN(ff_mult1_mult_16_n121) );
  XNOR2_X1 ff_mult1_mult_16_U320 ( .A(coeff_b2[2]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n363) );
  OAI22_X1 ff_mult1_mult_16_U319 ( .A1(ff_mult1_mult_16_n363), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n364), .ZN(ff_mult1_mult_16_n122) );
  XNOR2_X1 ff_mult1_mult_16_U318 ( .A(coeff_b2[1]), .B(ff_mult1_mult_16_n279), 
        .ZN(ff_mult1_mult_16_n362) );
  OAI22_X1 ff_mult1_mult_16_U317 ( .A1(ff_mult1_mult_16_n362), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n363), .ZN(ff_mult1_mult_16_n123) );
  XNOR2_X1 ff_mult1_mult_16_U316 ( .A(ff_mult1_mult_16_n279), .B(coeff_b2[0]), 
        .ZN(ff_mult1_mult_16_n361) );
  OAI22_X1 ff_mult1_mult_16_U315 ( .A1(ff_mult1_mult_16_n361), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n362), .ZN(ff_mult1_mult_16_n124) );
  NOR2_X1 ff_mult1_mult_16_U314 ( .A1(ff_mult1_mult_16_n312), .A2(
        ff_mult1_mult_16_n300), .ZN(ff_mult1_mult_16_n125) );
  XNOR2_X1 ff_mult1_mult_16_U313 ( .A(coeff_b2[8]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n340) );
  XOR2_X1 ff_mult1_mult_16_U312 ( .A(sw1[2]), .B(ff_mult1_mult_16_n277), .Z(
        ff_mult1_mult_16_n326) );
  XNOR2_X1 ff_mult1_mult_16_U311 ( .A(ff_mult1_mult_16_n304), .B(sw1[2]), .ZN(
        ff_mult1_mult_16_n360) );
  NAND2_X1 ff_mult1_mult_16_U310 ( .A1(ff_mult1_mult_16_n305), .A2(
        ff_mult1_mult_16_n360), .ZN(ff_mult1_mult_16_n324) );
  OAI22_X1 ff_mult1_mult_16_U309 ( .A1(ff_mult1_mult_16_n340), .A2(
        ff_mult1_mult_16_n305), .B1(ff_mult1_mult_16_n324), .B2(
        ff_mult1_mult_16_n340), .ZN(ff_mult1_mult_16_n359) );
  XNOR2_X1 ff_mult1_mult_16_U308 ( .A(coeff_b2[6]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n358) );
  XNOR2_X1 ff_mult1_mult_16_U307 ( .A(coeff_b2[7]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n339) );
  OAI22_X1 ff_mult1_mult_16_U306 ( .A1(ff_mult1_mult_16_n358), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n339), .ZN(ff_mult1_mult_16_n127) );
  XNOR2_X1 ff_mult1_mult_16_U305 ( .A(coeff_b2[5]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n357) );
  OAI22_X1 ff_mult1_mult_16_U304 ( .A1(ff_mult1_mult_16_n357), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n358), .ZN(ff_mult1_mult_16_n128) );
  XNOR2_X1 ff_mult1_mult_16_U303 ( .A(coeff_b2[4]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n356) );
  OAI22_X1 ff_mult1_mult_16_U302 ( .A1(ff_mult1_mult_16_n356), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n357), .ZN(ff_mult1_mult_16_n129) );
  XNOR2_X1 ff_mult1_mult_16_U301 ( .A(coeff_b2[3]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n355) );
  OAI22_X1 ff_mult1_mult_16_U300 ( .A1(ff_mult1_mult_16_n355), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n356), .ZN(ff_mult1_mult_16_n130) );
  XNOR2_X1 ff_mult1_mult_16_U299 ( .A(coeff_b2[2]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n354) );
  OAI22_X1 ff_mult1_mult_16_U298 ( .A1(ff_mult1_mult_16_n354), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n355), .ZN(ff_mult1_mult_16_n131) );
  XNOR2_X1 ff_mult1_mult_16_U297 ( .A(coeff_b2[1]), .B(ff_mult1_mult_16_n278), 
        .ZN(ff_mult1_mult_16_n353) );
  OAI22_X1 ff_mult1_mult_16_U296 ( .A1(ff_mult1_mult_16_n353), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n354), .ZN(ff_mult1_mult_16_n132) );
  XNOR2_X1 ff_mult1_mult_16_U295 ( .A(ff_mult1_mult_16_n278), .B(coeff_b2[0]), 
        .ZN(ff_mult1_mult_16_n352) );
  OAI22_X1 ff_mult1_mult_16_U294 ( .A1(ff_mult1_mult_16_n352), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n353), .ZN(ff_mult1_mult_16_n133) );
  XNOR2_X1 ff_mult1_mult_16_U293 ( .A(coeff_b2[8]), .B(ff_mult1_mult_16_n277), 
        .ZN(ff_mult1_mult_16_n350) );
  NAND2_X1 ff_mult1_mult_16_U292 ( .A1(ff_mult1_mult_16_n277), .A2(
        ff_mult1_mult_16_n306), .ZN(ff_mult1_mult_16_n331) );
  OAI22_X1 ff_mult1_mult_16_U291 ( .A1(ff_mult1_mult_16_n306), .A2(
        ff_mult1_mult_16_n350), .B1(ff_mult1_mult_16_n331), .B2(
        ff_mult1_mult_16_n350), .ZN(ff_mult1_mult_16_n351) );
  XNOR2_X1 ff_mult1_mult_16_U290 ( .A(coeff_b2[7]), .B(ff_mult1_mult_16_n277), 
        .ZN(ff_mult1_mult_16_n349) );
  OAI22_X1 ff_mult1_mult_16_U289 ( .A1(ff_mult1_mult_16_n349), .A2(
        ff_mult1_mult_16_n331), .B1(ff_mult1_mult_16_n350), .B2(
        ff_mult1_mult_16_n306), .ZN(ff_mult1_mult_16_n136) );
  XNOR2_X1 ff_mult1_mult_16_U288 ( .A(coeff_b2[6]), .B(ff_mult1_mult_16_n277), 
        .ZN(ff_mult1_mult_16_n348) );
  OAI22_X1 ff_mult1_mult_16_U287 ( .A1(ff_mult1_mult_16_n348), .A2(
        ff_mult1_mult_16_n331), .B1(ff_mult1_mult_16_n349), .B2(
        ff_mult1_mult_16_n306), .ZN(ff_mult1_mult_16_n137) );
  XNOR2_X1 ff_mult1_mult_16_U286 ( .A(coeff_b2[5]), .B(ff_mult1_mult_16_n277), 
        .ZN(ff_mult1_mult_16_n347) );
  OAI22_X1 ff_mult1_mult_16_U285 ( .A1(ff_mult1_mult_16_n347), .A2(
        ff_mult1_mult_16_n331), .B1(ff_mult1_mult_16_n348), .B2(
        ff_mult1_mult_16_n306), .ZN(ff_mult1_mult_16_n138) );
  XNOR2_X1 ff_mult1_mult_16_U284 ( .A(coeff_b2[4]), .B(ff_mult1_mult_16_n277), 
        .ZN(ff_mult1_mult_16_n346) );
  OAI22_X1 ff_mult1_mult_16_U283 ( .A1(ff_mult1_mult_16_n346), .A2(
        ff_mult1_mult_16_n331), .B1(ff_mult1_mult_16_n347), .B2(
        ff_mult1_mult_16_n306), .ZN(ff_mult1_mult_16_n139) );
  XNOR2_X1 ff_mult1_mult_16_U282 ( .A(coeff_b2[3]), .B(ff_mult1_mult_16_n277), 
        .ZN(ff_mult1_mult_16_n345) );
  OAI22_X1 ff_mult1_mult_16_U281 ( .A1(ff_mult1_mult_16_n345), .A2(
        ff_mult1_mult_16_n331), .B1(ff_mult1_mult_16_n346), .B2(
        ff_mult1_mult_16_n306), .ZN(ff_mult1_mult_16_n140) );
  XNOR2_X1 ff_mult1_mult_16_U280 ( .A(coeff_b2[2]), .B(ff_mult1_mult_16_n277), 
        .ZN(ff_mult1_mult_16_n332) );
  OAI22_X1 ff_mult1_mult_16_U279 ( .A1(ff_mult1_mult_16_n332), .A2(
        ff_mult1_mult_16_n331), .B1(ff_mult1_mult_16_n345), .B2(
        ff_mult1_mult_16_n306), .ZN(ff_mult1_mult_16_n141) );
  OAI22_X1 ff_mult1_mult_16_U278 ( .A1(ff_mult1_mult_16_n343), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n344), .ZN(ff_mult1_mult_16_n22) );
  OAI22_X1 ff_mult1_mult_16_U277 ( .A1(ff_mult1_mult_16_n341), .A2(
        ff_mult1_mult_16_n310), .B1(ff_mult1_mult_16_n312), .B2(
        ff_mult1_mult_16_n342), .ZN(ff_mult1_mult_16_n32) );
  OAI22_X1 ff_mult1_mult_16_U276 ( .A1(ff_mult1_mult_16_n339), .A2(
        ff_mult1_mult_16_n324), .B1(ff_mult1_mult_16_n305), .B2(
        ff_mult1_mult_16_n340), .ZN(ff_mult1_mult_16_n46) );
  OAI22_X1 ff_mult1_mult_16_U275 ( .A1(ff_mult1_mult_16_n337), .A2(
        ff_mult1_mult_16_n313), .B1(ff_mult1_mult_16_n315), .B2(
        ff_mult1_mult_16_n338), .ZN(ff_mult1_mult_16_n336) );
  XNOR2_X1 ff_mult1_mult_16_U274 ( .A(ff_mult1_mult_16_n299), .B(
        ff_mult1_mult_16_n281), .ZN(ff_mult1_mult_16_n334) );
  NAND2_X1 ff_mult1_mult_16_U273 ( .A1(ff_mult1_mult_16_n334), .A2(
        ff_mult1_mult_16_n301), .ZN(ff_mult1_mult_16_n333) );
  NAND2_X1 ff_mult1_mult_16_U272 ( .A1(ff_mult1_mult_16_n297), .A2(
        ff_mult1_mult_16_n333), .ZN(ff_mult1_mult_16_n54) );
  XNOR2_X1 ff_mult1_mult_16_U271 ( .A(ff_mult1_mult_16_n333), .B(
        ff_mult1_mult_16_n297), .ZN(ff_mult1_mult_16_n55) );
  OAI22_X1 ff_mult1_mult_16_U270 ( .A1(coeff_b2[1]), .A2(ff_mult1_mult_16_n331), .B1(ff_mult1_mult_16_n332), .B2(ff_mult1_mult_16_n306), .ZN(
        ff_mult1_mult_16_n330) );
  NAND2_X1 ff_mult1_mult_16_U269 ( .A1(ff_mult1_mult_16_n326), .A2(
        ff_mult1_mult_16_n330), .ZN(ff_mult1_mult_16_n328) );
  NAND3_X1 ff_mult1_mult_16_U268 ( .A1(ff_mult1_mult_16_n330), .A2(
        ff_mult1_mult_16_n299), .A3(ff_mult1_mult_16_n277), .ZN(
        ff_mult1_mult_16_n329) );
  MUX2_X1 ff_mult1_mult_16_U267 ( .A(ff_mult1_mult_16_n328), .B(
        ff_mult1_mult_16_n329), .S(ff_mult1_mult_16_n300), .Z(
        ff_mult1_mult_16_n327) );
  NAND3_X1 ff_mult1_mult_16_U266 ( .A1(ff_mult1_mult_16_n326), .A2(
        ff_mult1_mult_16_n300), .A3(ff_mult1_mult_16_n278), .ZN(
        ff_mult1_mult_16_n325) );
  OAI21_X1 ff_mult1_mult_16_U265 ( .B1(ff_mult1_mult_16_n304), .B2(
        ff_mult1_mult_16_n324), .A(ff_mult1_mult_16_n325), .ZN(
        ff_mult1_mult_16_n323) );
  AOI222_X1 ff_mult1_mult_16_U264 ( .A1(ff_mult1_mult_16_n298), .A2(
        ff_mult1_mult_16_n79), .B1(ff_mult1_mult_16_n323), .B2(
        ff_mult1_mult_16_n298), .C1(ff_mult1_mult_16_n323), .C2(
        ff_mult1_mult_16_n79), .ZN(ff_mult1_mult_16_n322) );
  AOI222_X1 ff_mult1_mult_16_U263 ( .A1(ff_mult1_mult_16_n296), .A2(
        ff_mult1_mult_16_n77), .B1(ff_mult1_mult_16_n296), .B2(
        ff_mult1_mult_16_n78), .C1(ff_mult1_mult_16_n78), .C2(
        ff_mult1_mult_16_n77), .ZN(ff_mult1_mult_16_n321) );
  AOI222_X1 ff_mult1_mult_16_U262 ( .A1(ff_mult1_mult_16_n295), .A2(
        ff_mult1_mult_16_n73), .B1(ff_mult1_mult_16_n295), .B2(
        ff_mult1_mult_16_n76), .C1(ff_mult1_mult_16_n76), .C2(
        ff_mult1_mult_16_n73), .ZN(ff_mult1_mult_16_n320) );
  AOI222_X1 ff_mult1_mult_16_U261 ( .A1(ff_mult1_mult_16_n294), .A2(
        ff_mult1_mult_16_n69), .B1(ff_mult1_mult_16_n294), .B2(
        ff_mult1_mult_16_n72), .C1(ff_mult1_mult_16_n72), .C2(
        ff_mult1_mult_16_n69), .ZN(ff_mult1_mult_16_n319) );
  AOI222_X1 ff_mult1_mult_16_U260 ( .A1(ff_mult1_mult_16_n293), .A2(
        ff_mult1_mult_16_n63), .B1(ff_mult1_mult_16_n293), .B2(
        ff_mult1_mult_16_n68), .C1(ff_mult1_mult_16_n68), .C2(
        ff_mult1_mult_16_n63), .ZN(ff_mult1_mult_16_n318) );
  OAI222_X1 ff_mult1_mult_16_U259 ( .A1(ff_mult1_mult_16_n318), .A2(
        ff_mult1_mult_16_n285), .B1(ff_mult1_mult_16_n318), .B2(
        ff_mult1_mult_16_n292), .C1(ff_mult1_mult_16_n292), .C2(
        ff_mult1_mult_16_n285), .ZN(ff_mult1_mult_16_n317) );
  AOI222_X1 ff_mult1_mult_16_U258 ( .A1(ff_mult1_mult_16_n317), .A2(
        ff_mult1_mult_16_n49), .B1(ff_mult1_mult_16_n317), .B2(
        ff_mult1_mult_16_n56), .C1(ff_mult1_mult_16_n56), .C2(
        ff_mult1_mult_16_n49), .ZN(ff_mult1_mult_16_n316) );
  OAI222_X1 ff_mult1_mult_16_U257 ( .A1(ff_mult1_mult_16_n316), .A2(
        ff_mult1_mult_16_n282), .B1(ff_mult1_mult_16_n316), .B2(
        ff_mult1_mult_16_n283), .C1(ff_mult1_mult_16_n283), .C2(
        ff_mult1_mult_16_n282), .ZN(ff_mult1_mult_16_n7) );
  AND3_X1 ff_mult1_mult_16_U256 ( .A1(ff_mult1_mult_16_n281), .A2(
        ff_mult1_mult_16_n300), .A3(ff_mult1_mult_16_n301), .ZN(
        ff_mult1_mult_16_n94) );
  OR3_X1 ff_mult1_mult_16_U255 ( .A1(ff_mult1_mult_16_n315), .A2(coeff_b2[0]), 
        .A3(ff_mult1_mult_16_n302), .ZN(ff_mult1_mult_16_n314) );
  OAI21_X1 ff_mult1_mult_16_U254 ( .B1(ff_mult1_mult_16_n302), .B2(
        ff_mult1_mult_16_n313), .A(ff_mult1_mult_16_n314), .ZN(
        ff_mult1_mult_16_n95) );
  OR3_X1 ff_mult1_mult_16_U253 ( .A1(ff_mult1_mult_16_n312), .A2(coeff_b2[0]), 
        .A3(ff_mult1_mult_16_n303), .ZN(ff_mult1_mult_16_n311) );
  OAI21_X1 ff_mult1_mult_16_U252 ( .B1(ff_mult1_mult_16_n303), .B2(
        ff_mult1_mult_16_n310), .A(ff_mult1_mult_16_n311), .ZN(
        ff_mult1_mult_16_n96) );
  NOR2_X1 ff_mult1_mult_16_U251 ( .A1(ff_mult1_mult_16_n306), .A2(
        ff_mult1_mult_16_n300), .ZN(ff_mult1_fract_product_0_) );
  XOR2_X1 ff_mult1_mult_16_U250 ( .A(coeff_b2[8]), .B(ff_mult1_mult_16_n281), 
        .Z(ff_mult1_mult_16_n309) );
  NAND2_X1 ff_mult1_mult_16_U249 ( .A1(ff_mult1_mult_16_n309), .A2(
        ff_mult1_mult_16_n301), .ZN(ff_mult1_mult_16_n307) );
  XOR2_X1 ff_mult1_mult_16_U248 ( .A(ff_mult1_mult_16_n2), .B(
        ff_mult1_mult_16_n18), .Z(ff_mult1_mult_16_n308) );
  XOR2_X1 ff_mult1_mult_16_U247 ( .A(ff_mult1_mult_16_n307), .B(
        ff_mult1_mult_16_n308), .Z(ff1[16]) );
  INV_X1 ff_mult1_mult_16_U246 ( .A(ff_mult1_mult_16_n375), .ZN(
        ff_mult1_mult_16_n290) );
  INV_X1 ff_mult1_mult_16_U245 ( .A(ff_mult1_mult_16_n22), .ZN(
        ff_mult1_mult_16_n291) );
  INV_X1 ff_mult1_mult_16_U244 ( .A(coeff_b2[1]), .ZN(ff_mult1_mult_16_n299)
         );
  BUF_X1 ff_mult1_mult_16_U243 ( .A(sw1[8]), .Z(ff_mult1_mult_16_n281) );
  BUF_X1 ff_mult1_mult_16_U242 ( .A(sw1[1]), .Z(ff_mult1_mult_16_n277) );
  BUF_X1 ff_mult1_mult_16_U241 ( .A(sw1[3]), .Z(ff_mult1_mult_16_n278) );
  BUF_X1 ff_mult1_mult_16_U240 ( .A(sw1[5]), .Z(ff_mult1_mult_16_n279) );
  BUF_X1 ff_mult1_mult_16_U239 ( .A(sw1[7]), .Z(ff_mult1_mult_16_n280) );
  INV_X1 ff_mult1_mult_16_U238 ( .A(coeff_b2[0]), .ZN(ff_mult1_mult_16_n300)
         );
  INV_X1 ff_mult1_mult_16_U237 ( .A(sw1[0]), .ZN(ff_mult1_mult_16_n306) );
  XOR2_X1 ff_mult1_mult_16_U236 ( .A(sw1[6]), .B(ff_mult1_mult_16_n303), .Z(
        ff_mult1_mult_16_n315) );
  XOR2_X1 ff_mult1_mult_16_U235 ( .A(sw1[4]), .B(ff_mult1_mult_16_n304), .Z(
        ff_mult1_mult_16_n312) );
  INV_X1 ff_mult1_mult_16_U234 ( .A(ff_mult1_mult_16_n336), .ZN(
        ff_mult1_mult_16_n297) );
  INV_X1 ff_mult1_mult_16_U233 ( .A(ff_mult1_mult_16_n280), .ZN(
        ff_mult1_mult_16_n302) );
  INV_X1 ff_mult1_mult_16_U232 ( .A(ff_mult1_mult_16_n278), .ZN(
        ff_mult1_mult_16_n304) );
  INV_X1 ff_mult1_mult_16_U231 ( .A(ff_mult1_mult_16_n327), .ZN(
        ff_mult1_mult_16_n298) );
  INV_X1 ff_mult1_mult_16_U230 ( .A(ff_mult1_mult_16_n322), .ZN(
        ff_mult1_mult_16_n296) );
  INV_X1 ff_mult1_mult_16_U229 ( .A(ff_mult1_mult_16_n321), .ZN(
        ff_mult1_mult_16_n295) );
  INV_X1 ff_mult1_mult_16_U228 ( .A(ff_mult1_mult_16_n320), .ZN(
        ff_mult1_mult_16_n294) );
  INV_X1 ff_mult1_mult_16_U227 ( .A(ff_mult1_mult_16_n279), .ZN(
        ff_mult1_mult_16_n303) );
  INV_X1 ff_mult1_mult_16_U226 ( .A(ff_mult1_mult_16_n368), .ZN(
        ff_mult1_mult_16_n288) );
  INV_X1 ff_mult1_mult_16_U225 ( .A(ff_mult1_mult_16_n359), .ZN(
        ff_mult1_mult_16_n286) );
  INV_X1 ff_mult1_mult_16_U224 ( .A(ff_mult1_mult_16_n32), .ZN(
        ff_mult1_mult_16_n289) );
  INV_X1 ff_mult1_mult_16_U223 ( .A(ff_mult1_mult_16_n351), .ZN(
        ff_mult1_mult_16_n284) );
  INV_X1 ff_mult1_mult_16_U222 ( .A(ff_mult1_mult_16_n326), .ZN(
        ff_mult1_mult_16_n305) );
  INV_X1 ff_mult1_mult_16_U221 ( .A(ff_mult1_mult_16_n319), .ZN(
        ff_mult1_mult_16_n293) );
  INV_X1 ff_mult1_mult_16_U220 ( .A(ff_mult1_mult_16_n46), .ZN(
        ff_mult1_mult_16_n287) );
  INV_X1 ff_mult1_mult_16_U219 ( .A(ff_mult1_mult_16_n335), .ZN(
        ff_mult1_mult_16_n301) );
  INV_X1 ff_mult1_mult_16_U218 ( .A(ff_mult1_mult_16_n57), .ZN(
        ff_mult1_mult_16_n285) );
  INV_X1 ff_mult1_mult_16_U217 ( .A(ff_mult1_mult_16_n62), .ZN(
        ff_mult1_mult_16_n292) );
  INV_X1 ff_mult1_mult_16_U216 ( .A(ff_mult1_mult_16_n41), .ZN(
        ff_mult1_mult_16_n282) );
  INV_X1 ff_mult1_mult_16_U215 ( .A(ff_mult1_mult_16_n48), .ZN(
        ff_mult1_mult_16_n283) );
  HA_X1 ff_mult1_mult_16_U50 ( .A(ff_mult1_mult_16_n133), .B(
        ff_mult1_mult_16_n141), .CO(ff_mult1_mult_16_n78), .S(
        ff_mult1_mult_16_n79) );
  FA_X1 ff_mult1_mult_16_U49 ( .A(ff_mult1_mult_16_n140), .B(
        ff_mult1_mult_16_n125), .CI(ff_mult1_mult_16_n132), .CO(
        ff_mult1_mult_16_n76), .S(ff_mult1_mult_16_n77) );
  HA_X1 ff_mult1_mult_16_U48 ( .A(ff_mult1_mult_16_n96), .B(
        ff_mult1_mult_16_n124), .CO(ff_mult1_mult_16_n74), .S(
        ff_mult1_mult_16_n75) );
  FA_X1 ff_mult1_mult_16_U47 ( .A(ff_mult1_mult_16_n131), .B(
        ff_mult1_mult_16_n139), .CI(ff_mult1_mult_16_n75), .CO(
        ff_mult1_mult_16_n72), .S(ff_mult1_mult_16_n73) );
  FA_X1 ff_mult1_mult_16_U46 ( .A(ff_mult1_mult_16_n138), .B(
        ff_mult1_mult_16_n116), .CI(ff_mult1_mult_16_n130), .CO(
        ff_mult1_mult_16_n70), .S(ff_mult1_mult_16_n71) );
  FA_X1 ff_mult1_mult_16_U45 ( .A(ff_mult1_mult_16_n74), .B(
        ff_mult1_mult_16_n123), .CI(ff_mult1_mult_16_n71), .CO(
        ff_mult1_mult_16_n68), .S(ff_mult1_mult_16_n69) );
  HA_X1 ff_mult1_mult_16_U44 ( .A(ff_mult1_mult_16_n95), .B(
        ff_mult1_mult_16_n115), .CO(ff_mult1_mult_16_n66), .S(
        ff_mult1_mult_16_n67) );
  FA_X1 ff_mult1_mult_16_U43 ( .A(ff_mult1_mult_16_n122), .B(
        ff_mult1_mult_16_n137), .CI(ff_mult1_mult_16_n129), .CO(
        ff_mult1_mult_16_n64), .S(ff_mult1_mult_16_n65) );
  FA_X1 ff_mult1_mult_16_U42 ( .A(ff_mult1_mult_16_n70), .B(
        ff_mult1_mult_16_n67), .CI(ff_mult1_mult_16_n65), .CO(
        ff_mult1_mult_16_n62), .S(ff_mult1_mult_16_n63) );
  FA_X1 ff_mult1_mult_16_U41 ( .A(ff_mult1_mult_16_n121), .B(
        ff_mult1_mult_16_n107), .CI(ff_mult1_mult_16_n136), .CO(
        ff_mult1_mult_16_n60), .S(ff_mult1_mult_16_n61) );
  FA_X1 ff_mult1_mult_16_U40 ( .A(ff_mult1_mult_16_n114), .B(
        ff_mult1_mult_16_n128), .CI(ff_mult1_mult_16_n66), .CO(
        ff_mult1_mult_16_n58), .S(ff_mult1_mult_16_n59) );
  FA_X1 ff_mult1_mult_16_U39 ( .A(ff_mult1_mult_16_n61), .B(
        ff_mult1_mult_16_n64), .CI(ff_mult1_mult_16_n59), .CO(
        ff_mult1_mult_16_n56), .S(ff_mult1_mult_16_n57) );
  FA_X1 ff_mult1_mult_16_U36 ( .A(ff_mult1_mult_16_n94), .B(
        ff_mult1_mult_16_n120), .CI(ff_mult1_mult_16_n284), .CO(
        ff_mult1_mult_16_n52), .S(ff_mult1_mult_16_n53) );
  FA_X1 ff_mult1_mult_16_U35 ( .A(ff_mult1_mult_16_n55), .B(
        ff_mult1_mult_16_n127), .CI(ff_mult1_mult_16_n60), .CO(
        ff_mult1_mult_16_n50), .S(ff_mult1_mult_16_n51) );
  FA_X1 ff_mult1_mult_16_U34 ( .A(ff_mult1_mult_16_n53), .B(
        ff_mult1_mult_16_n58), .CI(ff_mult1_mult_16_n51), .CO(
        ff_mult1_mult_16_n48), .S(ff_mult1_mult_16_n49) );
  FA_X1 ff_mult1_mult_16_U32 ( .A(ff_mult1_mult_16_n112), .B(
        ff_mult1_mult_16_n105), .CI(ff_mult1_mult_16_n119), .CO(
        ff_mult1_mult_16_n44), .S(ff_mult1_mult_16_n45) );
  FA_X1 ff_mult1_mult_16_U31 ( .A(ff_mult1_mult_16_n54), .B(
        ff_mult1_mult_16_n287), .CI(ff_mult1_mult_16_n52), .CO(
        ff_mult1_mult_16_n42), .S(ff_mult1_mult_16_n43) );
  FA_X1 ff_mult1_mult_16_U30 ( .A(ff_mult1_mult_16_n50), .B(
        ff_mult1_mult_16_n45), .CI(ff_mult1_mult_16_n43), .CO(
        ff_mult1_mult_16_n40), .S(ff_mult1_mult_16_n41) );
  FA_X1 ff_mult1_mult_16_U29 ( .A(ff_mult1_mult_16_n111), .B(
        ff_mult1_mult_16_n104), .CI(ff_mult1_mult_16_n286), .CO(
        ff_mult1_mult_16_n38), .S(ff_mult1_mult_16_n39) );
  FA_X1 ff_mult1_mult_16_U28 ( .A(ff_mult1_mult_16_n46), .B(
        ff_mult1_mult_16_n118), .CI(ff_mult1_mult_16_n44), .CO(
        ff_mult1_mult_16_n36), .S(ff_mult1_mult_16_n37) );
  FA_X1 ff_mult1_mult_16_U27 ( .A(ff_mult1_mult_16_n42), .B(
        ff_mult1_mult_16_n39), .CI(ff_mult1_mult_16_n37), .CO(
        ff_mult1_mult_16_n34), .S(ff_mult1_mult_16_n35) );
  FA_X1 ff_mult1_mult_16_U25 ( .A(ff_mult1_mult_16_n103), .B(
        ff_mult1_mult_16_n110), .CI(ff_mult1_mult_16_n289), .CO(
        ff_mult1_mult_16_n30), .S(ff_mult1_mult_16_n31) );
  FA_X1 ff_mult1_mult_16_U24 ( .A(ff_mult1_mult_16_n31), .B(
        ff_mult1_mult_16_n38), .CI(ff_mult1_mult_16_n36), .CO(
        ff_mult1_mult_16_n28), .S(ff_mult1_mult_16_n29) );
  FA_X1 ff_mult1_mult_16_U23 ( .A(ff_mult1_mult_16_n109), .B(
        ff_mult1_mult_16_n32), .CI(ff_mult1_mult_16_n288), .CO(
        ff_mult1_mult_16_n26), .S(ff_mult1_mult_16_n27) );
  FA_X1 ff_mult1_mult_16_U22 ( .A(ff_mult1_mult_16_n30), .B(
        ff_mult1_mult_16_n102), .CI(ff_mult1_mult_16_n27), .CO(
        ff_mult1_mult_16_n24), .S(ff_mult1_mult_16_n25) );
  FA_X1 ff_mult1_mult_16_U20 ( .A(ff_mult1_mult_16_n291), .B(
        ff_mult1_mult_16_n101), .CI(ff_mult1_mult_16_n26), .CO(
        ff_mult1_mult_16_n20), .S(ff_mult1_mult_16_n21) );
  FA_X1 ff_mult1_mult_16_U19 ( .A(ff_mult1_mult_16_n100), .B(
        ff_mult1_mult_16_n22), .CI(ff_mult1_mult_16_n290), .CO(
        ff_mult1_mult_16_n18), .S(ff_mult1_mult_16_n19) );
  FA_X1 ff_mult1_mult_16_U7 ( .A(ff_mult1_mult_16_n35), .B(
        ff_mult1_mult_16_n40), .CI(ff_mult1_mult_16_n7), .CO(
        ff_mult1_mult_16_n6), .S(ff1[11]) );
  FA_X1 ff_mult1_mult_16_U6 ( .A(ff_mult1_mult_16_n29), .B(
        ff_mult1_mult_16_n34), .CI(ff_mult1_mult_16_n6), .CO(
        ff_mult1_mult_16_n5), .S(ff1[12]) );
  FA_X1 ff_mult1_mult_16_U5 ( .A(ff_mult1_mult_16_n25), .B(
        ff_mult1_mult_16_n28), .CI(ff_mult1_mult_16_n5), .CO(
        ff_mult1_mult_16_n4), .S(ff1[13]) );
  FA_X1 ff_mult1_mult_16_U4 ( .A(ff_mult1_mult_16_n21), .B(
        ff_mult1_mult_16_n24), .CI(ff_mult1_mult_16_n4), .CO(
        ff_mult1_mult_16_n3), .S(ff1[14]) );
  FA_X1 ff_mult1_mult_16_U3 ( .A(ff_mult1_mult_16_n20), .B(
        ff_mult1_mult_16_n19), .CI(ff_mult1_mult_16_n3), .CO(
        ff_mult1_mult_16_n2), .S(ff1[15]) );
  AND2_X1 ff_add_add_16_U2 ( .A1(ff1[11]), .A2(ff0[11]), .ZN(ff_add_add_16_n2)
         );
  XOR2_X1 ff_add_add_16_U1 ( .A(ff1[11]), .B(ff0[11]), .Z(ff[0]) );
  FA_X1 ff_add_add_16_U1_1 ( .A(ff0[12]), .B(ff1[12]), .CI(ff_add_add_16_n2), 
        .CO(ff_add_add_16_carry[2]), .S(ff[1]) );
  FA_X1 ff_add_add_16_U1_2 ( .A(ff0[13]), .B(ff1[13]), .CI(
        ff_add_add_16_carry[2]), .CO(ff_add_add_16_carry[3]), .S(ff[2]) );
  FA_X1 ff_add_add_16_U1_3 ( .A(ff0[14]), .B(ff1[14]), .CI(
        ff_add_add_16_carry[3]), .CO(ff_add_add_16_carry[4]), .S(ff[3]) );
  FA_X1 ff_add_add_16_U1_4 ( .A(ff0[15]), .B(ff1[15]), .CI(
        ff_add_add_16_carry[4]), .CO(ff_add_add_16_carry[5]), .S(ff[4]) );
  FA_X1 ff_add_add_16_U1_5 ( .A(ff0[16]), .B(ff1[16]), .CI(
        ff_add_add_16_carry[5]), .S(ff[5]) );
  XOR2_X1 w_add_add_16_U2 ( .A(fb[0]), .B(x[0]), .Z(w[0]) );
  AND2_X1 w_add_add_16_U1 ( .A1(fb[0]), .A2(x[0]), .ZN(w_add_add_16_n1) );
  FA_X1 w_add_add_16_U1_1 ( .A(x[1]), .B(fb[1]), .CI(w_add_add_16_n1), .CO(
        w_add_add_16_carry[2]), .S(w[1]) );
  FA_X1 w_add_add_16_U1_2 ( .A(x[2]), .B(fb[2]), .CI(w_add_add_16_carry[2]), 
        .CO(w_add_add_16_carry[3]), .S(w[2]) );
  FA_X1 w_add_add_16_U1_3 ( .A(x[3]), .B(fb[3]), .CI(w_add_add_16_carry[3]), 
        .CO(w_add_add_16_carry[4]), .S(w[3]) );
  FA_X1 w_add_add_16_U1_4 ( .A(x[4]), .B(fb[4]), .CI(w_add_add_16_carry[4]), 
        .CO(w_add_add_16_carry[5]), .S(w[4]) );
  FA_X1 w_add_add_16_U1_5 ( .A(x[5]), .B(fb[5]), .CI(w_add_add_16_carry[5]), 
        .CO(w_add_add_16_carry[6]), .S(w[5]) );
  FA_X1 w_add_add_16_U1_6 ( .A(x[6]), .B(fb[5]), .CI(w_add_add_16_carry[6]), 
        .CO(w_add_add_16_carry[7]), .S(w[6]) );
  FA_X1 w_add_add_16_U1_7 ( .A(x[7]), .B(fb[5]), .CI(w_add_add_16_carry[7]), 
        .CO(w_add_add_16_carry[8]), .S(w[7]) );
  FA_X1 w_add_add_16_U1_8 ( .A(x[8]), .B(fb[5]), .CI(w_add_add_16_carry[8]), 
        .S(w[8]) );
  XOR2_X1 y_mult_mult_16_U361 ( .A(w[8]), .B(y_mult_mult_16_n285), .Z(
        y_mult_mult_16_n330) );
  XNOR2_X1 y_mult_mult_16_U360 ( .A(coeff_b0[7]), .B(w[8]), .ZN(
        y_mult_mult_16_n377) );
  NOR2_X1 y_mult_mult_16_U359 ( .A1(y_mult_mult_16_n330), .A2(
        y_mult_mult_16_n377), .ZN(y_mult_mult_16_n100) );
  XNOR2_X1 y_mult_mult_16_U358 ( .A(coeff_b0[6]), .B(w[8]), .ZN(
        y_mult_mult_16_n376) );
  NOR2_X1 y_mult_mult_16_U357 ( .A1(y_mult_mult_16_n330), .A2(
        y_mult_mult_16_n376), .ZN(y_mult_mult_16_n101) );
  XNOR2_X1 y_mult_mult_16_U356 ( .A(coeff_b0[5]), .B(w[8]), .ZN(
        y_mult_mult_16_n375) );
  NOR2_X1 y_mult_mult_16_U355 ( .A1(y_mult_mult_16_n330), .A2(
        y_mult_mult_16_n375), .ZN(y_mult_mult_16_n102) );
  XNOR2_X1 y_mult_mult_16_U354 ( .A(coeff_b0[4]), .B(w[8]), .ZN(
        y_mult_mult_16_n374) );
  NOR2_X1 y_mult_mult_16_U353 ( .A1(y_mult_mult_16_n330), .A2(
        y_mult_mult_16_n374), .ZN(y_mult_mult_16_n103) );
  XNOR2_X1 y_mult_mult_16_U352 ( .A(coeff_b0[3]), .B(w[8]), .ZN(
        y_mult_mult_16_n373) );
  NOR2_X1 y_mult_mult_16_U351 ( .A1(y_mult_mult_16_n330), .A2(
        y_mult_mult_16_n373), .ZN(y_mult_mult_16_n104) );
  XNOR2_X1 y_mult_mult_16_U350 ( .A(coeff_b0[2]), .B(w[8]), .ZN(
        y_mult_mult_16_n372) );
  NOR2_X1 y_mult_mult_16_U349 ( .A1(y_mult_mult_16_n330), .A2(
        y_mult_mult_16_n372), .ZN(y_mult_mult_16_n105) );
  NOR2_X1 y_mult_mult_16_U348 ( .A1(y_mult_mult_16_n330), .A2(
        y_mult_mult_16_n301), .ZN(y_mult_mult_16_n107) );
  XNOR2_X1 y_mult_mult_16_U347 ( .A(coeff_b0[8]), .B(w[7]), .ZN(
        y_mult_mult_16_n339) );
  XNOR2_X1 y_mult_mult_16_U346 ( .A(y_mult_mult_16_n285), .B(w[6]), .ZN(
        y_mult_mult_16_n371) );
  NAND2_X1 y_mult_mult_16_U345 ( .A1(y_mult_mult_16_n310), .A2(
        y_mult_mult_16_n371), .ZN(y_mult_mult_16_n308) );
  OAI22_X1 y_mult_mult_16_U344 ( .A1(y_mult_mult_16_n339), .A2(
        y_mult_mult_16_n310), .B1(y_mult_mult_16_n308), .B2(
        y_mult_mult_16_n339), .ZN(y_mult_mult_16_n370) );
  XNOR2_X1 y_mult_mult_16_U343 ( .A(coeff_b0[6]), .B(w[7]), .ZN(
        y_mult_mult_16_n369) );
  XNOR2_X1 y_mult_mult_16_U342 ( .A(coeff_b0[7]), .B(w[7]), .ZN(
        y_mult_mult_16_n338) );
  OAI22_X1 y_mult_mult_16_U341 ( .A1(y_mult_mult_16_n369), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n338), .ZN(y_mult_mult_16_n109) );
  XNOR2_X1 y_mult_mult_16_U340 ( .A(coeff_b0[5]), .B(w[7]), .ZN(
        y_mult_mult_16_n368) );
  OAI22_X1 y_mult_mult_16_U339 ( .A1(y_mult_mult_16_n368), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n369), .ZN(y_mult_mult_16_n110) );
  XNOR2_X1 y_mult_mult_16_U338 ( .A(coeff_b0[4]), .B(w[7]), .ZN(
        y_mult_mult_16_n367) );
  OAI22_X1 y_mult_mult_16_U337 ( .A1(y_mult_mult_16_n367), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n368), .ZN(y_mult_mult_16_n111) );
  XNOR2_X1 y_mult_mult_16_U336 ( .A(coeff_b0[3]), .B(w[7]), .ZN(
        y_mult_mult_16_n333) );
  OAI22_X1 y_mult_mult_16_U335 ( .A1(y_mult_mult_16_n333), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n367), .ZN(y_mult_mult_16_n112) );
  XNOR2_X1 y_mult_mult_16_U334 ( .A(coeff_b0[1]), .B(w[7]), .ZN(
        y_mult_mult_16_n366) );
  XNOR2_X1 y_mult_mult_16_U333 ( .A(coeff_b0[2]), .B(w[7]), .ZN(
        y_mult_mult_16_n332) );
  OAI22_X1 y_mult_mult_16_U332 ( .A1(y_mult_mult_16_n366), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n332), .ZN(y_mult_mult_16_n114) );
  XNOR2_X1 y_mult_mult_16_U331 ( .A(w[7]), .B(coeff_b0[0]), .ZN(
        y_mult_mult_16_n365) );
  OAI22_X1 y_mult_mult_16_U330 ( .A1(y_mult_mult_16_n365), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n366), .ZN(y_mult_mult_16_n115) );
  NOR2_X1 y_mult_mult_16_U329 ( .A1(y_mult_mult_16_n310), .A2(
        y_mult_mult_16_n301), .ZN(y_mult_mult_16_n116) );
  XNOR2_X1 y_mult_mult_16_U328 ( .A(coeff_b0[8]), .B(w[5]), .ZN(
        y_mult_mult_16_n337) );
  XNOR2_X1 y_mult_mult_16_U327 ( .A(y_mult_mult_16_n290), .B(w[4]), .ZN(
        y_mult_mult_16_n364) );
  NAND2_X1 y_mult_mult_16_U326 ( .A1(y_mult_mult_16_n307), .A2(
        y_mult_mult_16_n364), .ZN(y_mult_mult_16_n305) );
  OAI22_X1 y_mult_mult_16_U325 ( .A1(y_mult_mult_16_n337), .A2(
        y_mult_mult_16_n307), .B1(y_mult_mult_16_n305), .B2(
        y_mult_mult_16_n337), .ZN(y_mult_mult_16_n363) );
  XNOR2_X1 y_mult_mult_16_U324 ( .A(coeff_b0[6]), .B(w[5]), .ZN(
        y_mult_mult_16_n362) );
  XNOR2_X1 y_mult_mult_16_U323 ( .A(coeff_b0[7]), .B(w[5]), .ZN(
        y_mult_mult_16_n336) );
  OAI22_X1 y_mult_mult_16_U322 ( .A1(y_mult_mult_16_n362), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n336), .ZN(y_mult_mult_16_n118) );
  XNOR2_X1 y_mult_mult_16_U321 ( .A(coeff_b0[5]), .B(w[5]), .ZN(
        y_mult_mult_16_n361) );
  OAI22_X1 y_mult_mult_16_U320 ( .A1(y_mult_mult_16_n361), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n362), .ZN(y_mult_mult_16_n119) );
  XNOR2_X1 y_mult_mult_16_U319 ( .A(coeff_b0[4]), .B(w[5]), .ZN(
        y_mult_mult_16_n360) );
  OAI22_X1 y_mult_mult_16_U318 ( .A1(y_mult_mult_16_n360), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n361), .ZN(y_mult_mult_16_n120) );
  XNOR2_X1 y_mult_mult_16_U317 ( .A(coeff_b0[3]), .B(w[5]), .ZN(
        y_mult_mult_16_n359) );
  OAI22_X1 y_mult_mult_16_U316 ( .A1(y_mult_mult_16_n359), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n360), .ZN(y_mult_mult_16_n121) );
  XNOR2_X1 y_mult_mult_16_U315 ( .A(coeff_b0[2]), .B(w[5]), .ZN(
        y_mult_mult_16_n358) );
  OAI22_X1 y_mult_mult_16_U314 ( .A1(y_mult_mult_16_n358), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n359), .ZN(y_mult_mult_16_n122) );
  XNOR2_X1 y_mult_mult_16_U313 ( .A(coeff_b0[1]), .B(w[5]), .ZN(
        y_mult_mult_16_n357) );
  OAI22_X1 y_mult_mult_16_U312 ( .A1(y_mult_mult_16_n357), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n358), .ZN(y_mult_mult_16_n123) );
  XNOR2_X1 y_mult_mult_16_U311 ( .A(w[5]), .B(coeff_b0[0]), .ZN(
        y_mult_mult_16_n356) );
  OAI22_X1 y_mult_mult_16_U310 ( .A1(y_mult_mult_16_n356), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n357), .ZN(y_mult_mult_16_n124) );
  NOR2_X1 y_mult_mult_16_U309 ( .A1(y_mult_mult_16_n307), .A2(
        y_mult_mult_16_n301), .ZN(y_mult_mult_16_n125) );
  XNOR2_X1 y_mult_mult_16_U308 ( .A(coeff_b0[8]), .B(w[3]), .ZN(
        y_mult_mult_16_n335) );
  XOR2_X1 y_mult_mult_16_U307 ( .A(w[2]), .B(w[1]), .Z(y_mult_mult_16_n321) );
  XNOR2_X1 y_mult_mult_16_U306 ( .A(y_mult_mult_16_n295), .B(w[2]), .ZN(
        y_mult_mult_16_n355) );
  NAND2_X1 y_mult_mult_16_U305 ( .A1(y_mult_mult_16_n296), .A2(
        y_mult_mult_16_n355), .ZN(y_mult_mult_16_n319) );
  OAI22_X1 y_mult_mult_16_U304 ( .A1(y_mult_mult_16_n335), .A2(
        y_mult_mult_16_n296), .B1(y_mult_mult_16_n319), .B2(
        y_mult_mult_16_n335), .ZN(y_mult_mult_16_n354) );
  XNOR2_X1 y_mult_mult_16_U303 ( .A(coeff_b0[6]), .B(w[3]), .ZN(
        y_mult_mult_16_n353) );
  XNOR2_X1 y_mult_mult_16_U302 ( .A(coeff_b0[7]), .B(w[3]), .ZN(
        y_mult_mult_16_n334) );
  OAI22_X1 y_mult_mult_16_U301 ( .A1(y_mult_mult_16_n353), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n334), .ZN(y_mult_mult_16_n127) );
  XNOR2_X1 y_mult_mult_16_U300 ( .A(coeff_b0[5]), .B(w[3]), .ZN(
        y_mult_mult_16_n352) );
  OAI22_X1 y_mult_mult_16_U299 ( .A1(y_mult_mult_16_n352), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n353), .ZN(y_mult_mult_16_n128) );
  XNOR2_X1 y_mult_mult_16_U298 ( .A(coeff_b0[4]), .B(w[3]), .ZN(
        y_mult_mult_16_n351) );
  OAI22_X1 y_mult_mult_16_U297 ( .A1(y_mult_mult_16_n351), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n352), .ZN(y_mult_mult_16_n129) );
  XNOR2_X1 y_mult_mult_16_U296 ( .A(coeff_b0[3]), .B(w[3]), .ZN(
        y_mult_mult_16_n350) );
  OAI22_X1 y_mult_mult_16_U295 ( .A1(y_mult_mult_16_n350), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n351), .ZN(y_mult_mult_16_n130) );
  XNOR2_X1 y_mult_mult_16_U294 ( .A(coeff_b0[2]), .B(w[3]), .ZN(
        y_mult_mult_16_n349) );
  OAI22_X1 y_mult_mult_16_U293 ( .A1(y_mult_mult_16_n349), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n350), .ZN(y_mult_mult_16_n131) );
  XNOR2_X1 y_mult_mult_16_U292 ( .A(coeff_b0[1]), .B(w[3]), .ZN(
        y_mult_mult_16_n348) );
  OAI22_X1 y_mult_mult_16_U291 ( .A1(y_mult_mult_16_n348), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n349), .ZN(y_mult_mult_16_n132) );
  XNOR2_X1 y_mult_mult_16_U290 ( .A(w[3]), .B(coeff_b0[0]), .ZN(
        y_mult_mult_16_n347) );
  OAI22_X1 y_mult_mult_16_U289 ( .A1(y_mult_mult_16_n347), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n348), .ZN(y_mult_mult_16_n133) );
  XNOR2_X1 y_mult_mult_16_U288 ( .A(coeff_b0[8]), .B(w[1]), .ZN(
        y_mult_mult_16_n345) );
  NAND2_X1 y_mult_mult_16_U287 ( .A1(w[1]), .A2(y_mult_mult_16_n299), .ZN(
        y_mult_mult_16_n326) );
  OAI22_X1 y_mult_mult_16_U286 ( .A1(y_mult_mult_16_n299), .A2(
        y_mult_mult_16_n345), .B1(y_mult_mult_16_n326), .B2(
        y_mult_mult_16_n345), .ZN(y_mult_mult_16_n346) );
  XNOR2_X1 y_mult_mult_16_U285 ( .A(coeff_b0[7]), .B(w[1]), .ZN(
        y_mult_mult_16_n344) );
  OAI22_X1 y_mult_mult_16_U284 ( .A1(y_mult_mult_16_n344), .A2(
        y_mult_mult_16_n326), .B1(y_mult_mult_16_n345), .B2(
        y_mult_mult_16_n299), .ZN(y_mult_mult_16_n136) );
  XNOR2_X1 y_mult_mult_16_U283 ( .A(coeff_b0[6]), .B(w[1]), .ZN(
        y_mult_mult_16_n343) );
  OAI22_X1 y_mult_mult_16_U282 ( .A1(y_mult_mult_16_n343), .A2(
        y_mult_mult_16_n326), .B1(y_mult_mult_16_n344), .B2(
        y_mult_mult_16_n299), .ZN(y_mult_mult_16_n137) );
  XNOR2_X1 y_mult_mult_16_U281 ( .A(coeff_b0[5]), .B(w[1]), .ZN(
        y_mult_mult_16_n342) );
  OAI22_X1 y_mult_mult_16_U280 ( .A1(y_mult_mult_16_n342), .A2(
        y_mult_mult_16_n326), .B1(y_mult_mult_16_n343), .B2(
        y_mult_mult_16_n299), .ZN(y_mult_mult_16_n138) );
  XNOR2_X1 y_mult_mult_16_U279 ( .A(coeff_b0[4]), .B(w[1]), .ZN(
        y_mult_mult_16_n341) );
  OAI22_X1 y_mult_mult_16_U278 ( .A1(y_mult_mult_16_n341), .A2(
        y_mult_mult_16_n326), .B1(y_mult_mult_16_n342), .B2(
        y_mult_mult_16_n299), .ZN(y_mult_mult_16_n139) );
  XNOR2_X1 y_mult_mult_16_U277 ( .A(coeff_b0[3]), .B(w[1]), .ZN(
        y_mult_mult_16_n340) );
  OAI22_X1 y_mult_mult_16_U276 ( .A1(y_mult_mult_16_n340), .A2(
        y_mult_mult_16_n326), .B1(y_mult_mult_16_n341), .B2(
        y_mult_mult_16_n299), .ZN(y_mult_mult_16_n140) );
  XNOR2_X1 y_mult_mult_16_U275 ( .A(coeff_b0[2]), .B(w[1]), .ZN(
        y_mult_mult_16_n327) );
  OAI22_X1 y_mult_mult_16_U274 ( .A1(y_mult_mult_16_n327), .A2(
        y_mult_mult_16_n326), .B1(y_mult_mult_16_n340), .B2(
        y_mult_mult_16_n299), .ZN(y_mult_mult_16_n141) );
  OAI22_X1 y_mult_mult_16_U273 ( .A1(y_mult_mult_16_n338), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n339), .ZN(y_mult_mult_16_n22) );
  OAI22_X1 y_mult_mult_16_U272 ( .A1(y_mult_mult_16_n336), .A2(
        y_mult_mult_16_n305), .B1(y_mult_mult_16_n307), .B2(
        y_mult_mult_16_n337), .ZN(y_mult_mult_16_n32) );
  OAI22_X1 y_mult_mult_16_U271 ( .A1(y_mult_mult_16_n334), .A2(
        y_mult_mult_16_n319), .B1(y_mult_mult_16_n296), .B2(
        y_mult_mult_16_n335), .ZN(y_mult_mult_16_n46) );
  OAI22_X1 y_mult_mult_16_U270 ( .A1(y_mult_mult_16_n332), .A2(
        y_mult_mult_16_n308), .B1(y_mult_mult_16_n310), .B2(
        y_mult_mult_16_n333), .ZN(y_mult_mult_16_n331) );
  XNOR2_X1 y_mult_mult_16_U269 ( .A(y_mult_mult_16_n300), .B(w[8]), .ZN(
        y_mult_mult_16_n329) );
  NAND2_X1 y_mult_mult_16_U268 ( .A1(y_mult_mult_16_n329), .A2(
        y_mult_mult_16_n280), .ZN(y_mult_mult_16_n328) );
  NAND2_X1 y_mult_mult_16_U267 ( .A1(y_mult_mult_16_n282), .A2(
        y_mult_mult_16_n328), .ZN(y_mult_mult_16_n54) );
  XNOR2_X1 y_mult_mult_16_U266 ( .A(y_mult_mult_16_n328), .B(
        y_mult_mult_16_n282), .ZN(y_mult_mult_16_n55) );
  OAI22_X1 y_mult_mult_16_U265 ( .A1(coeff_b0[1]), .A2(y_mult_mult_16_n326), 
        .B1(y_mult_mult_16_n327), .B2(y_mult_mult_16_n299), .ZN(
        y_mult_mult_16_n325) );
  NAND2_X1 y_mult_mult_16_U264 ( .A1(y_mult_mult_16_n321), .A2(
        y_mult_mult_16_n325), .ZN(y_mult_mult_16_n323) );
  NAND3_X1 y_mult_mult_16_U263 ( .A1(y_mult_mult_16_n325), .A2(
        y_mult_mult_16_n300), .A3(w[1]), .ZN(y_mult_mult_16_n324) );
  MUX2_X1 y_mult_mult_16_U262 ( .A(y_mult_mult_16_n323), .B(
        y_mult_mult_16_n324), .S(y_mult_mult_16_n301), .Z(y_mult_mult_16_n322)
         );
  NAND3_X1 y_mult_mult_16_U261 ( .A1(y_mult_mult_16_n321), .A2(
        y_mult_mult_16_n301), .A3(w[3]), .ZN(y_mult_mult_16_n320) );
  OAI21_X1 y_mult_mult_16_U260 ( .B1(y_mult_mult_16_n295), .B2(
        y_mult_mult_16_n319), .A(y_mult_mult_16_n320), .ZN(y_mult_mult_16_n318) );
  AOI222_X1 y_mult_mult_16_U259 ( .A1(y_mult_mult_16_n297), .A2(
        y_mult_mult_16_n79), .B1(y_mult_mult_16_n318), .B2(y_mult_mult_16_n297), .C1(y_mult_mult_16_n318), .C2(y_mult_mult_16_n79), .ZN(y_mult_mult_16_n317)
         );
  AOI222_X1 y_mult_mult_16_U258 ( .A1(y_mult_mult_16_n292), .A2(
        y_mult_mult_16_n77), .B1(y_mult_mult_16_n292), .B2(y_mult_mult_16_n78), 
        .C1(y_mult_mult_16_n78), .C2(y_mult_mult_16_n77), .ZN(
        y_mult_mult_16_n316) );
  AOI222_X1 y_mult_mult_16_U257 ( .A1(y_mult_mult_16_n291), .A2(
        y_mult_mult_16_n73), .B1(y_mult_mult_16_n291), .B2(y_mult_mult_16_n76), 
        .C1(y_mult_mult_16_n76), .C2(y_mult_mult_16_n73), .ZN(
        y_mult_mult_16_n315) );
  AOI222_X1 y_mult_mult_16_U256 ( .A1(y_mult_mult_16_n287), .A2(
        y_mult_mult_16_n69), .B1(y_mult_mult_16_n287), .B2(y_mult_mult_16_n72), 
        .C1(y_mult_mult_16_n72), .C2(y_mult_mult_16_n69), .ZN(
        y_mult_mult_16_n314) );
  AOI222_X1 y_mult_mult_16_U255 ( .A1(y_mult_mult_16_n286), .A2(
        y_mult_mult_16_n63), .B1(y_mult_mult_16_n286), .B2(y_mult_mult_16_n68), 
        .C1(y_mult_mult_16_n68), .C2(y_mult_mult_16_n63), .ZN(
        y_mult_mult_16_n313) );
  OAI222_X1 y_mult_mult_16_U254 ( .A1(y_mult_mult_16_n313), .A2(
        y_mult_mult_16_n279), .B1(y_mult_mult_16_n313), .B2(
        y_mult_mult_16_n281), .C1(y_mult_mult_16_n281), .C2(
        y_mult_mult_16_n279), .ZN(y_mult_mult_16_n312) );
  AOI222_X1 y_mult_mult_16_U253 ( .A1(y_mult_mult_16_n312), .A2(
        y_mult_mult_16_n49), .B1(y_mult_mult_16_n312), .B2(y_mult_mult_16_n56), 
        .C1(y_mult_mult_16_n56), .C2(y_mult_mult_16_n49), .ZN(
        y_mult_mult_16_n311) );
  OAI222_X1 y_mult_mult_16_U252 ( .A1(y_mult_mult_16_n311), .A2(
        y_mult_mult_16_n277), .B1(y_mult_mult_16_n311), .B2(
        y_mult_mult_16_n278), .C1(y_mult_mult_16_n278), .C2(
        y_mult_mult_16_n277), .ZN(y_mult_mult_16_n7) );
  AND3_X1 y_mult_mult_16_U251 ( .A1(w[8]), .A2(y_mult_mult_16_n301), .A3(
        y_mult_mult_16_n280), .ZN(y_mult_mult_16_n94) );
  OR3_X1 y_mult_mult_16_U250 ( .A1(y_mult_mult_16_n310), .A2(coeff_b0[0]), 
        .A3(y_mult_mult_16_n285), .ZN(y_mult_mult_16_n309) );
  OAI21_X1 y_mult_mult_16_U249 ( .B1(y_mult_mult_16_n285), .B2(
        y_mult_mult_16_n308), .A(y_mult_mult_16_n309), .ZN(y_mult_mult_16_n95)
         );
  OR3_X1 y_mult_mult_16_U248 ( .A1(y_mult_mult_16_n307), .A2(coeff_b0[0]), 
        .A3(y_mult_mult_16_n290), .ZN(y_mult_mult_16_n306) );
  OAI21_X1 y_mult_mult_16_U247 ( .B1(y_mult_mult_16_n290), .B2(
        y_mult_mult_16_n305), .A(y_mult_mult_16_n306), .ZN(y_mult_mult_16_n96)
         );
  NOR2_X1 y_mult_mult_16_U246 ( .A1(y_mult_mult_16_n299), .A2(
        y_mult_mult_16_n301), .ZN(y_mult_fract_product_0_) );
  XOR2_X1 y_mult_mult_16_U245 ( .A(coeff_b0[8]), .B(w[8]), .Z(
        y_mult_mult_16_n304) );
  NAND2_X1 y_mult_mult_16_U244 ( .A1(y_mult_mult_16_n304), .A2(
        y_mult_mult_16_n280), .ZN(y_mult_mult_16_n302) );
  XOR2_X1 y_mult_mult_16_U243 ( .A(y_mult_mult_16_n2), .B(y_mult_mult_16_n18), 
        .Z(y_mult_mult_16_n303) );
  XOR2_X1 y_mult_mult_16_U242 ( .A(y_mult_mult_16_n302), .B(
        y_mult_mult_16_n303), .Z(y[16]) );
  INV_X1 y_mult_mult_16_U241 ( .A(coeff_b0[1]), .ZN(y_mult_mult_16_n300) );
  INV_X1 y_mult_mult_16_U240 ( .A(coeff_b0[0]), .ZN(y_mult_mult_16_n301) );
  INV_X1 y_mult_mult_16_U239 ( .A(y_mult_mult_16_n22), .ZN(y_mult_mult_16_n283) );
  INV_X1 y_mult_mult_16_U238 ( .A(y_mult_mult_16_n331), .ZN(
        y_mult_mult_16_n282) );
  INV_X1 y_mult_mult_16_U237 ( .A(y_mult_mult_16_n363), .ZN(
        y_mult_mult_16_n289) );
  INV_X1 y_mult_mult_16_U236 ( .A(y_mult_mult_16_n370), .ZN(
        y_mult_mult_16_n284) );
  INV_X1 y_mult_mult_16_U235 ( .A(y_mult_mult_16_n354), .ZN(
        y_mult_mult_16_n294) );
  INV_X1 y_mult_mult_16_U234 ( .A(y_mult_mult_16_n32), .ZN(y_mult_mult_16_n288) );
  INV_X1 y_mult_mult_16_U233 ( .A(y_mult_mult_16_n346), .ZN(
        y_mult_mult_16_n298) );
  INV_X1 y_mult_mult_16_U232 ( .A(w[7]), .ZN(y_mult_mult_16_n285) );
  INV_X1 y_mult_mult_16_U231 ( .A(w[3]), .ZN(y_mult_mult_16_n295) );
  INV_X1 y_mult_mult_16_U230 ( .A(w[0]), .ZN(y_mult_mult_16_n299) );
  INV_X1 y_mult_mult_16_U229 ( .A(y_mult_mult_16_n322), .ZN(
        y_mult_mult_16_n297) );
  INV_X1 y_mult_mult_16_U228 ( .A(y_mult_mult_16_n317), .ZN(
        y_mult_mult_16_n292) );
  XOR2_X1 y_mult_mult_16_U227 ( .A(w[6]), .B(y_mult_mult_16_n290), .Z(
        y_mult_mult_16_n310) );
  XOR2_X1 y_mult_mult_16_U226 ( .A(w[4]), .B(y_mult_mult_16_n295), .Z(
        y_mult_mult_16_n307) );
  INV_X1 y_mult_mult_16_U225 ( .A(w[5]), .ZN(y_mult_mult_16_n290) );
  INV_X1 y_mult_mult_16_U224 ( .A(y_mult_mult_16_n316), .ZN(
        y_mult_mult_16_n291) );
  INV_X1 y_mult_mult_16_U223 ( .A(y_mult_mult_16_n315), .ZN(
        y_mult_mult_16_n287) );
  INV_X1 y_mult_mult_16_U222 ( .A(y_mult_mult_16_n314), .ZN(
        y_mult_mult_16_n286) );
  INV_X1 y_mult_mult_16_U221 ( .A(y_mult_mult_16_n46), .ZN(y_mult_mult_16_n293) );
  INV_X1 y_mult_mult_16_U220 ( .A(y_mult_mult_16_n330), .ZN(
        y_mult_mult_16_n280) );
  INV_X1 y_mult_mult_16_U219 ( .A(y_mult_mult_16_n321), .ZN(
        y_mult_mult_16_n296) );
  INV_X1 y_mult_mult_16_U218 ( .A(y_mult_mult_16_n57), .ZN(y_mult_mult_16_n279) );
  INV_X1 y_mult_mult_16_U217 ( .A(y_mult_mult_16_n62), .ZN(y_mult_mult_16_n281) );
  INV_X1 y_mult_mult_16_U216 ( .A(y_mult_mult_16_n41), .ZN(y_mult_mult_16_n277) );
  INV_X1 y_mult_mult_16_U215 ( .A(y_mult_mult_16_n48), .ZN(y_mult_mult_16_n278) );
  HA_X1 y_mult_mult_16_U50 ( .A(y_mult_mult_16_n133), .B(y_mult_mult_16_n141), 
        .CO(y_mult_mult_16_n78), .S(y_mult_mult_16_n79) );
  FA_X1 y_mult_mult_16_U49 ( .A(y_mult_mult_16_n140), .B(y_mult_mult_16_n125), 
        .CI(y_mult_mult_16_n132), .CO(y_mult_mult_16_n76), .S(
        y_mult_mult_16_n77) );
  HA_X1 y_mult_mult_16_U48 ( .A(y_mult_mult_16_n96), .B(y_mult_mult_16_n124), 
        .CO(y_mult_mult_16_n74), .S(y_mult_mult_16_n75) );
  FA_X1 y_mult_mult_16_U47 ( .A(y_mult_mult_16_n131), .B(y_mult_mult_16_n139), 
        .CI(y_mult_mult_16_n75), .CO(y_mult_mult_16_n72), .S(
        y_mult_mult_16_n73) );
  FA_X1 y_mult_mult_16_U46 ( .A(y_mult_mult_16_n138), .B(y_mult_mult_16_n116), 
        .CI(y_mult_mult_16_n130), .CO(y_mult_mult_16_n70), .S(
        y_mult_mult_16_n71) );
  FA_X1 y_mult_mult_16_U45 ( .A(y_mult_mult_16_n74), .B(y_mult_mult_16_n123), 
        .CI(y_mult_mult_16_n71), .CO(y_mult_mult_16_n68), .S(
        y_mult_mult_16_n69) );
  HA_X1 y_mult_mult_16_U44 ( .A(y_mult_mult_16_n95), .B(y_mult_mult_16_n115), 
        .CO(y_mult_mult_16_n66), .S(y_mult_mult_16_n67) );
  FA_X1 y_mult_mult_16_U43 ( .A(y_mult_mult_16_n122), .B(y_mult_mult_16_n137), 
        .CI(y_mult_mult_16_n129), .CO(y_mult_mult_16_n64), .S(
        y_mult_mult_16_n65) );
  FA_X1 y_mult_mult_16_U42 ( .A(y_mult_mult_16_n70), .B(y_mult_mult_16_n67), 
        .CI(y_mult_mult_16_n65), .CO(y_mult_mult_16_n62), .S(
        y_mult_mult_16_n63) );
  FA_X1 y_mult_mult_16_U41 ( .A(y_mult_mult_16_n121), .B(y_mult_mult_16_n107), 
        .CI(y_mult_mult_16_n136), .CO(y_mult_mult_16_n60), .S(
        y_mult_mult_16_n61) );
  FA_X1 y_mult_mult_16_U40 ( .A(y_mult_mult_16_n114), .B(y_mult_mult_16_n128), 
        .CI(y_mult_mult_16_n66), .CO(y_mult_mult_16_n58), .S(
        y_mult_mult_16_n59) );
  FA_X1 y_mult_mult_16_U39 ( .A(y_mult_mult_16_n61), .B(y_mult_mult_16_n64), 
        .CI(y_mult_mult_16_n59), .CO(y_mult_mult_16_n56), .S(
        y_mult_mult_16_n57) );
  FA_X1 y_mult_mult_16_U36 ( .A(y_mult_mult_16_n94), .B(y_mult_mult_16_n120), 
        .CI(y_mult_mult_16_n298), .CO(y_mult_mult_16_n52), .S(
        y_mult_mult_16_n53) );
  FA_X1 y_mult_mult_16_U35 ( .A(y_mult_mult_16_n55), .B(y_mult_mult_16_n127), 
        .CI(y_mult_mult_16_n60), .CO(y_mult_mult_16_n50), .S(
        y_mult_mult_16_n51) );
  FA_X1 y_mult_mult_16_U34 ( .A(y_mult_mult_16_n53), .B(y_mult_mult_16_n58), 
        .CI(y_mult_mult_16_n51), .CO(y_mult_mult_16_n48), .S(
        y_mult_mult_16_n49) );
  FA_X1 y_mult_mult_16_U32 ( .A(y_mult_mult_16_n112), .B(y_mult_mult_16_n105), 
        .CI(y_mult_mult_16_n119), .CO(y_mult_mult_16_n44), .S(
        y_mult_mult_16_n45) );
  FA_X1 y_mult_mult_16_U31 ( .A(y_mult_mult_16_n54), .B(y_mult_mult_16_n293), 
        .CI(y_mult_mult_16_n52), .CO(y_mult_mult_16_n42), .S(
        y_mult_mult_16_n43) );
  FA_X1 y_mult_mult_16_U30 ( .A(y_mult_mult_16_n50), .B(y_mult_mult_16_n45), 
        .CI(y_mult_mult_16_n43), .CO(y_mult_mult_16_n40), .S(
        y_mult_mult_16_n41) );
  FA_X1 y_mult_mult_16_U29 ( .A(y_mult_mult_16_n111), .B(y_mult_mult_16_n104), 
        .CI(y_mult_mult_16_n294), .CO(y_mult_mult_16_n38), .S(
        y_mult_mult_16_n39) );
  FA_X1 y_mult_mult_16_U28 ( .A(y_mult_mult_16_n46), .B(y_mult_mult_16_n118), 
        .CI(y_mult_mult_16_n44), .CO(y_mult_mult_16_n36), .S(
        y_mult_mult_16_n37) );
  FA_X1 y_mult_mult_16_U27 ( .A(y_mult_mult_16_n42), .B(y_mult_mult_16_n39), 
        .CI(y_mult_mult_16_n37), .CO(y_mult_mult_16_n34), .S(
        y_mult_mult_16_n35) );
  FA_X1 y_mult_mult_16_U25 ( .A(y_mult_mult_16_n103), .B(y_mult_mult_16_n110), 
        .CI(y_mult_mult_16_n288), .CO(y_mult_mult_16_n30), .S(
        y_mult_mult_16_n31) );
  FA_X1 y_mult_mult_16_U24 ( .A(y_mult_mult_16_n31), .B(y_mult_mult_16_n38), 
        .CI(y_mult_mult_16_n36), .CO(y_mult_mult_16_n28), .S(
        y_mult_mult_16_n29) );
  FA_X1 y_mult_mult_16_U23 ( .A(y_mult_mult_16_n109), .B(y_mult_mult_16_n32), 
        .CI(y_mult_mult_16_n289), .CO(y_mult_mult_16_n26), .S(
        y_mult_mult_16_n27) );
  FA_X1 y_mult_mult_16_U22 ( .A(y_mult_mult_16_n30), .B(y_mult_mult_16_n102), 
        .CI(y_mult_mult_16_n27), .CO(y_mult_mult_16_n24), .S(
        y_mult_mult_16_n25) );
  FA_X1 y_mult_mult_16_U20 ( .A(y_mult_mult_16_n283), .B(y_mult_mult_16_n101), 
        .CI(y_mult_mult_16_n26), .CO(y_mult_mult_16_n20), .S(
        y_mult_mult_16_n21) );
  FA_X1 y_mult_mult_16_U19 ( .A(y_mult_mult_16_n100), .B(y_mult_mult_16_n22), 
        .CI(y_mult_mult_16_n284), .CO(y_mult_mult_16_n18), .S(
        y_mult_mult_16_n19) );
  FA_X1 y_mult_mult_16_U7 ( .A(y_mult_mult_16_n35), .B(y_mult_mult_16_n40), 
        .CI(y_mult_mult_16_n7), .CO(y_mult_mult_16_n6), .S(y[11]) );
  FA_X1 y_mult_mult_16_U6 ( .A(y_mult_mult_16_n29), .B(y_mult_mult_16_n34), 
        .CI(y_mult_mult_16_n6), .CO(y_mult_mult_16_n5), .S(y[12]) );
  FA_X1 y_mult_mult_16_U5 ( .A(y_mult_mult_16_n25), .B(y_mult_mult_16_n28), 
        .CI(y_mult_mult_16_n5), .CO(y_mult_mult_16_n4), .S(y[13]) );
  FA_X1 y_mult_mult_16_U4 ( .A(y_mult_mult_16_n21), .B(y_mult_mult_16_n24), 
        .CI(y_mult_mult_16_n4), .CO(y_mult_mult_16_n3), .S(y[14]) );
  FA_X1 y_mult_mult_16_U3 ( .A(y_mult_mult_16_n20), .B(y_mult_mult_16_n19), 
        .CI(y_mult_mult_16_n3), .CO(y_mult_mult_16_n2), .S(y[15]) );
  AND2_X1 y_add_add_16_U2 ( .A1(ff[0]), .A2(y[11]), .ZN(y_add_add_16_n2) );
  XOR2_X1 y_add_add_16_U1 ( .A(ff[0]), .B(y[11]), .Z(y_tmp[0]) );
  FA_X1 y_add_add_16_U1_1 ( .A(y[12]), .B(ff[1]), .CI(y_add_add_16_n2), .CO(
        y_add_add_16_carry[2]), .S(y_tmp[1]) );
  FA_X1 y_add_add_16_U1_2 ( .A(y[13]), .B(ff[2]), .CI(y_add_add_16_carry[2]), 
        .CO(y_add_add_16_carry[3]), .S(y_tmp[2]) );
  FA_X1 y_add_add_16_U1_3 ( .A(y[14]), .B(ff[3]), .CI(y_add_add_16_carry[3]), 
        .CO(y_add_add_16_carry[4]), .S(y_tmp[3]) );
  FA_X1 y_add_add_16_U1_4 ( .A(y[15]), .B(ff[4]), .CI(y_add_add_16_carry[4]), 
        .CO(y_add_add_16_carry[5]), .S(y_tmp[4]) );
  FA_X1 y_add_add_16_U1_5 ( .A(y[16]), .B(ff[5]), .CI(y_add_add_16_carry[5]), 
        .S(y_tmp[5]) );
  NAND2_X1 y_reg_U19 ( .A1(1'b1), .A2(y_tmp[0]), .ZN(y_reg_n54) );
  OAI21_X1 y_reg_U18 ( .B1(1'b1), .B2(y_reg_n37), .A(y_reg_n54), .ZN(y_reg_n36) );
  NAND2_X1 y_reg_U17 ( .A1(y_tmp[4]), .A2(1'b1), .ZN(y_reg_n50) );
  OAI21_X1 y_reg_U16 ( .B1(1'b1), .B2(y_reg_n41), .A(y_reg_n50), .ZN(y_reg_n32) );
  NAND2_X1 y_reg_U15 ( .A1(y_tmp[3]), .A2(1'b1), .ZN(y_reg_n51) );
  OAI21_X1 y_reg_U14 ( .B1(1'b1), .B2(y_reg_n40), .A(y_reg_n51), .ZN(y_reg_n33) );
  NAND2_X1 y_reg_U13 ( .A1(y_tmp[2]), .A2(1'b1), .ZN(y_reg_n52) );
  OAI21_X1 y_reg_U12 ( .B1(1'b1), .B2(y_reg_n39), .A(y_reg_n52), .ZN(y_reg_n34) );
  NAND2_X1 y_reg_U11 ( .A1(y_tmp[1]), .A2(1'b1), .ZN(y_reg_n53) );
  OAI21_X1 y_reg_U10 ( .B1(1'b1), .B2(y_reg_n38), .A(y_reg_n53), .ZN(y_reg_n35) );
  NAND2_X1 y_reg_U9 ( .A1(y_tmp[5]), .A2(1'b1), .ZN(y_reg_n46) );
  OAI21_X1 y_reg_U8 ( .B1(1'b1), .B2(y_reg_n45), .A(y_reg_n46), .ZN(y_reg_n28)
         );
  NAND2_X1 y_reg_U7 ( .A1(y_tmp[5]), .A2(1'b1), .ZN(y_reg_n47) );
  OAI21_X1 y_reg_U6 ( .B1(1'b1), .B2(y_reg_n44), .A(y_reg_n47), .ZN(y_reg_n29)
         );
  NAND2_X1 y_reg_U5 ( .A1(y_tmp[5]), .A2(1'b1), .ZN(y_reg_n48) );
  OAI21_X1 y_reg_U4 ( .B1(1'b1), .B2(y_reg_n43), .A(y_reg_n48), .ZN(y_reg_n30)
         );
  NAND2_X1 y_reg_U3 ( .A1(y_tmp[5]), .A2(1'b1), .ZN(y_reg_n49) );
  OAI21_X1 y_reg_U2 ( .B1(1'b1), .B2(y_reg_n42), .A(y_reg_n49), .ZN(y_reg_n31)
         );
  DFFR_X1 y_reg_q_reg_0_ ( .D(y_reg_n36), .CK(clk), .RN(rst_n), .Q(dout[0]), 
        .QN(y_reg_n37) );
  DFFR_X1 y_reg_q_reg_1_ ( .D(y_reg_n35), .CK(clk), .RN(rst_n), .Q(dout[1]), 
        .QN(y_reg_n38) );
  DFFR_X1 y_reg_q_reg_2_ ( .D(y_reg_n34), .CK(clk), .RN(rst_n), .Q(dout[2]), 
        .QN(y_reg_n39) );
  DFFR_X1 y_reg_q_reg_3_ ( .D(y_reg_n33), .CK(clk), .RN(rst_n), .Q(dout[3]), 
        .QN(y_reg_n40) );
  DFFR_X1 y_reg_q_reg_4_ ( .D(y_reg_n32), .CK(clk), .RN(rst_n), .Q(dout[4]), 
        .QN(y_reg_n41) );
  DFFR_X1 y_reg_q_reg_5_ ( .D(y_reg_n31), .CK(clk), .RN(rst_n), .Q(dout[5]), 
        .QN(y_reg_n42) );
  DFFR_X1 y_reg_q_reg_6_ ( .D(y_reg_n30), .CK(clk), .RN(rst_n), .Q(dout[6]), 
        .QN(y_reg_n43) );
  DFFR_X1 y_reg_q_reg_7_ ( .D(y_reg_n29), .CK(clk), .RN(rst_n), .Q(dout[7]), 
        .QN(y_reg_n44) );
  DFFR_X1 y_reg_q_reg_8_ ( .D(y_reg_n28), .CK(clk), .RN(rst_n), .Q(dout[8]), 
        .QN(y_reg_n45) );
  BUF_X1 w_1_reg_U21 ( .A(vin), .Z(w_1_reg_n29) );
  BUF_X1 w_1_reg_U20 ( .A(vin), .Z(w_1_reg_n28) );
  NAND2_X1 w_1_reg_U19 ( .A1(w_1_reg_n29), .A2(w[0]), .ZN(w_1_reg_n56) );
  OAI21_X1 w_1_reg_U18 ( .B1(w_1_reg_n28), .B2(w_1_reg_n39), .A(w_1_reg_n56), 
        .ZN(w_1_reg_n38) );
  NAND2_X1 w_1_reg_U17 ( .A1(w[4]), .A2(w_1_reg_n28), .ZN(w_1_reg_n52) );
  OAI21_X1 w_1_reg_U16 ( .B1(w_1_reg_n29), .B2(w_1_reg_n43), .A(w_1_reg_n52), 
        .ZN(w_1_reg_n34) );
  NAND2_X1 w_1_reg_U15 ( .A1(w[3]), .A2(w_1_reg_n28), .ZN(w_1_reg_n53) );
  OAI21_X1 w_1_reg_U14 ( .B1(w_1_reg_n29), .B2(w_1_reg_n42), .A(w_1_reg_n53), 
        .ZN(w_1_reg_n35) );
  NAND2_X1 w_1_reg_U13 ( .A1(w[2]), .A2(w_1_reg_n28), .ZN(w_1_reg_n54) );
  OAI21_X1 w_1_reg_U12 ( .B1(w_1_reg_n29), .B2(w_1_reg_n41), .A(w_1_reg_n54), 
        .ZN(w_1_reg_n36) );
  NAND2_X1 w_1_reg_U11 ( .A1(w[1]), .A2(w_1_reg_n28), .ZN(w_1_reg_n55) );
  OAI21_X1 w_1_reg_U10 ( .B1(w_1_reg_n29), .B2(w_1_reg_n40), .A(w_1_reg_n55), 
        .ZN(w_1_reg_n37) );
  NAND2_X1 w_1_reg_U9 ( .A1(w[8]), .A2(w_1_reg_n28), .ZN(w_1_reg_n48) );
  OAI21_X1 w_1_reg_U8 ( .B1(w_1_reg_n28), .B2(w_1_reg_n47), .A(w_1_reg_n48), 
        .ZN(w_1_reg_n30) );
  NAND2_X1 w_1_reg_U7 ( .A1(w[7]), .A2(w_1_reg_n28), .ZN(w_1_reg_n49) );
  OAI21_X1 w_1_reg_U6 ( .B1(w_1_reg_n28), .B2(w_1_reg_n46), .A(w_1_reg_n49), 
        .ZN(w_1_reg_n31) );
  NAND2_X1 w_1_reg_U5 ( .A1(w[6]), .A2(w_1_reg_n28), .ZN(w_1_reg_n50) );
  OAI21_X1 w_1_reg_U4 ( .B1(w_1_reg_n28), .B2(w_1_reg_n45), .A(w_1_reg_n50), 
        .ZN(w_1_reg_n32) );
  NAND2_X1 w_1_reg_U3 ( .A1(w[5]), .A2(w_1_reg_n28), .ZN(w_1_reg_n51) );
  OAI21_X1 w_1_reg_U2 ( .B1(w_1_reg_n29), .B2(w_1_reg_n44), .A(w_1_reg_n51), 
        .ZN(w_1_reg_n33) );
  DFFR_X1 w_1_reg_q_reg_0_ ( .D(w_1_reg_n38), .CK(clk), .RN(rst_n), .Q(sw0[0]), 
        .QN(w_1_reg_n39) );
  DFFR_X1 w_1_reg_q_reg_1_ ( .D(w_1_reg_n37), .CK(clk), .RN(rst_n), .Q(sw0[1]), 
        .QN(w_1_reg_n40) );
  DFFR_X1 w_1_reg_q_reg_2_ ( .D(w_1_reg_n36), .CK(clk), .RN(rst_n), .Q(sw0[2]), 
        .QN(w_1_reg_n41) );
  DFFR_X1 w_1_reg_q_reg_3_ ( .D(w_1_reg_n35), .CK(clk), .RN(rst_n), .Q(sw0[3]), 
        .QN(w_1_reg_n42) );
  DFFR_X1 w_1_reg_q_reg_4_ ( .D(w_1_reg_n34), .CK(clk), .RN(rst_n), .Q(sw0[4]), 
        .QN(w_1_reg_n43) );
  DFFR_X1 w_1_reg_q_reg_5_ ( .D(w_1_reg_n33), .CK(clk), .RN(rst_n), .Q(sw0[5]), 
        .QN(w_1_reg_n44) );
  DFFR_X1 w_1_reg_q_reg_6_ ( .D(w_1_reg_n32), .CK(clk), .RN(rst_n), .Q(sw0[6]), 
        .QN(w_1_reg_n45) );
  DFFR_X1 w_1_reg_q_reg_7_ ( .D(w_1_reg_n31), .CK(clk), .RN(rst_n), .Q(sw0[7]), 
        .QN(w_1_reg_n46) );
  DFFR_X1 w_1_reg_q_reg_8_ ( .D(w_1_reg_n30), .CK(clk), .RN(rst_n), .Q(sw0[8]), 
        .QN(w_1_reg_n47) );
  NAND2_X1 w_2_reg_U21 ( .A1(w_2_reg_n29), .A2(sw0[0]), .ZN(w_2_reg_n56) );
  OAI21_X1 w_2_reg_U20 ( .B1(w_2_reg_n28), .B2(w_2_reg_n39), .A(w_2_reg_n56), 
        .ZN(w_2_reg_n38) );
  NAND2_X1 w_2_reg_U19 ( .A1(sw0[2]), .A2(w_2_reg_n28), .ZN(w_2_reg_n54) );
  OAI21_X1 w_2_reg_U18 ( .B1(w_2_reg_n29), .B2(w_2_reg_n41), .A(w_2_reg_n54), 
        .ZN(w_2_reg_n36) );
  NAND2_X1 w_2_reg_U17 ( .A1(sw0[6]), .A2(w_2_reg_n28), .ZN(w_2_reg_n50) );
  OAI21_X1 w_2_reg_U16 ( .B1(w_2_reg_n28), .B2(w_2_reg_n45), .A(w_2_reg_n50), 
        .ZN(w_2_reg_n32) );
  NAND2_X1 w_2_reg_U15 ( .A1(sw0[5]), .A2(w_2_reg_n28), .ZN(w_2_reg_n51) );
  OAI21_X1 w_2_reg_U14 ( .B1(w_2_reg_n29), .B2(w_2_reg_n44), .A(w_2_reg_n51), 
        .ZN(w_2_reg_n33) );
  NAND2_X1 w_2_reg_U13 ( .A1(sw0[4]), .A2(w_2_reg_n28), .ZN(w_2_reg_n52) );
  OAI21_X1 w_2_reg_U12 ( .B1(w_2_reg_n29), .B2(w_2_reg_n43), .A(w_2_reg_n52), 
        .ZN(w_2_reg_n34) );
  NAND2_X1 w_2_reg_U11 ( .A1(sw0[3]), .A2(w_2_reg_n28), .ZN(w_2_reg_n53) );
  OAI21_X1 w_2_reg_U10 ( .B1(w_2_reg_n29), .B2(w_2_reg_n42), .A(w_2_reg_n53), 
        .ZN(w_2_reg_n35) );
  BUF_X1 w_2_reg_U9 ( .A(vin), .Z(w_2_reg_n29) );
  NAND2_X1 w_2_reg_U8 ( .A1(sw0[8]), .A2(w_2_reg_n28), .ZN(w_2_reg_n48) );
  OAI21_X1 w_2_reg_U7 ( .B1(w_2_reg_n28), .B2(w_2_reg_n47), .A(w_2_reg_n48), 
        .ZN(w_2_reg_n30) );
  NAND2_X1 w_2_reg_U6 ( .A1(sw0[7]), .A2(w_2_reg_n28), .ZN(w_2_reg_n49) );
  OAI21_X1 w_2_reg_U5 ( .B1(w_2_reg_n28), .B2(w_2_reg_n46), .A(w_2_reg_n49), 
        .ZN(w_2_reg_n31) );
  NAND2_X1 w_2_reg_U4 ( .A1(sw0[1]), .A2(w_2_reg_n28), .ZN(w_2_reg_n55) );
  OAI21_X1 w_2_reg_U3 ( .B1(w_2_reg_n29), .B2(w_2_reg_n40), .A(w_2_reg_n55), 
        .ZN(w_2_reg_n37) );
  BUF_X1 w_2_reg_U2 ( .A(vin), .Z(w_2_reg_n28) );
  DFFR_X1 w_2_reg_q_reg_0_ ( .D(w_2_reg_n38), .CK(clk), .RN(rst_n), .Q(sw1[0]), 
        .QN(w_2_reg_n39) );
  DFFR_X1 w_2_reg_q_reg_1_ ( .D(w_2_reg_n37), .CK(clk), .RN(rst_n), .Q(sw1[1]), 
        .QN(w_2_reg_n40) );
  DFFR_X1 w_2_reg_q_reg_2_ ( .D(w_2_reg_n36), .CK(clk), .RN(rst_n), .Q(sw1[2]), 
        .QN(w_2_reg_n41) );
  DFFR_X1 w_2_reg_q_reg_3_ ( .D(w_2_reg_n35), .CK(clk), .RN(rst_n), .Q(sw1[3]), 
        .QN(w_2_reg_n42) );
  DFFR_X1 w_2_reg_q_reg_4_ ( .D(w_2_reg_n34), .CK(clk), .RN(rst_n), .Q(sw1[4]), 
        .QN(w_2_reg_n43) );
  DFFR_X1 w_2_reg_q_reg_5_ ( .D(w_2_reg_n33), .CK(clk), .RN(rst_n), .Q(sw1[5]), 
        .QN(w_2_reg_n44) );
  DFFR_X1 w_2_reg_q_reg_6_ ( .D(w_2_reg_n32), .CK(clk), .RN(rst_n), .Q(sw1[6]), 
        .QN(w_2_reg_n45) );
  DFFR_X1 w_2_reg_q_reg_7_ ( .D(w_2_reg_n31), .CK(clk), .RN(rst_n), .Q(sw1[7]), 
        .QN(w_2_reg_n46) );
  DFFR_X1 w_2_reg_q_reg_8_ ( .D(w_2_reg_n30), .CK(clk), .RN(rst_n), .Q(sw1[8]), 
        .QN(w_2_reg_n47) );
  NAND2_X1 vout_ff_1_U3 ( .A1(1'b1), .A2(vin), .ZN(vout_ff_1_n1) );
  OAI21_X1 vout_ff_1_U2 ( .B1(1'b1), .B2(vout_ff_1_n2), .A(vout_ff_1_n1), .ZN(
        vout_ff_1_n3) );
  DFFR_X1 vout_ff_1_q_reg ( .D(vout_ff_1_n3), .CK(clk), .RN(rst_n), .Q(
        vout_tmp), .QN(vout_ff_1_n2) );
  NAND2_X1 vout_ff_2_U3 ( .A1(1'b1), .A2(vout_tmp), .ZN(vout_ff_2_n6) );
  OAI21_X1 vout_ff_2_U2 ( .B1(1'b1), .B2(vout_ff_2_n5), .A(vout_ff_2_n6), .ZN(
        vout_ff_2_n4) );
  DFFR_X1 vout_ff_2_q_reg ( .D(vout_ff_2_n4), .CK(clk), .RN(rst_n), .Q(vout), 
        .QN(vout_ff_2_n5) );
endmodule

