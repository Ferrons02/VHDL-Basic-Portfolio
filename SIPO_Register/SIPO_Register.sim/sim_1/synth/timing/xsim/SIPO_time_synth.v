// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Oct 17 11:09:55 2023
// Host        : xXGambellaraXx running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/marco/Desktop/Progetti_Vivado/SIPO_Register/SIPO_Register.sim/sim_1/synth/timing/xsim/SIPO_time_synth.v
// Design      : SIPO
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* I = "8" *) 
(* NotValidForBitStream *)
module SIPO
   (\input ,
    ck,
    rst,
    \output );
  input \input ;
  input ck;
  input rst;
  inout [8:0]\output ;

  wire ck;
  wire ck_IBUF;
  wire ck_IBUF_BUFG;
  wire \input ;
  wire [8:0]\output ;
  wire [8:8]output_IBUF;
  wire q_int_reg_i_1_n_0;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("SIPO_time_synth.sdf",,,,"tool_control");
end
  BUFG ck_IBUF_BUFG_inst
       (.I(ck_IBUF),
        .O(ck_IBUF_BUFG));
  IBUF ck_IBUF_inst
       (.I(ck),
        .O(ck_IBUF));
  ff_d ff_d_I
       (.ck_IBUF_BUFG(ck_IBUF_BUFG),
        .output_IBUF(output_IBUF),
        .q_int_reg_0(q_int_reg_i_1_n_0),
        .rst_IBUF(rst_IBUF));
  OBUF \output[0]_INST_0 
       (.I(1'b0),
        .O(\output [0]));
  OBUF \output[1]_INST_0 
       (.I(1'b0),
        .O(\output [1]));
  OBUF \output[2]_INST_0 
       (.I(1'b0),
        .O(\output [2]));
  OBUF \output[3]_INST_0 
       (.I(1'b0),
        .O(\output [3]));
  OBUF \output[4]_INST_0 
       (.I(1'b0),
        .O(\output [4]));
  OBUF \output[5]_INST_0 
       (.I(1'b0),
        .O(\output [5]));
  OBUF \output[6]_INST_0 
       (.I(1'b0),
        .O(\output [6]));
  OBUF \output[7]_INST_0 
       (.I(1'b0),
        .O(\output [7]));
  OBUF \output[8]_INST_0 
       (.I(output_IBUF),
        .O(\output [8]));
  IBUF q_int_reg_i_1
       (.I(\input ),
        .O(q_int_reg_i_1_n_0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module ff_d
   (output_IBUF,
    q_int_reg_0,
    ck_IBUF_BUFG,
    rst_IBUF);
  output [0:0]output_IBUF;
  input q_int_reg_0;
  input ck_IBUF_BUFG;
  input rst_IBUF;

  wire ck_IBUF_BUFG;
  wire [0:0]output_IBUF;
  wire q_int_reg_0;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    q_int_reg
       (.C(ck_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(q_int_reg_0),
        .Q(output_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
