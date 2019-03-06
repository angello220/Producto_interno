// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Thu Feb 21 11:44:06 2019
// Host        : DESKTOP-O5CB8FQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Prod -prefix
//               Prod_ Prod_sim_netlist.v
// Design      : Prod
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Prod,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module Prod
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "30" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Prod_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "30" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "0" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Prod_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [7:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "30" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Prod_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
mS45Y0KqcEEOBIIMejcCTIK+b8SyBGRN5bmjbNxoJSL4I3GJJ4dHbhxmOYmyS9YaXUW9G+cU9PnT
pkY+qivHdg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Mb72vh6es6kg9jvhF5dfclKZYAnTqIZZB3/x24SCuEt7N92YPMFcALk8zvRrBMFWt6cj9SNrEdL3
6zaW/B9kjVjy3UQTBafGMxl3DQoj/Z/+/jYnpxwe2DP6hUhA3KCFP3ld8XoX4mmzMZKIxLB5eZcD
G3F5Og2ENQzBlhMjGx4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eYZ1t4tHhiCgK5XxbhY2aqQTEi9+Q4mLpVhr+3DInSy2owUkz+yj9E/+7FpX4TEN/HZINhiGyicH
HAtEK9XEs69imdSKlPmGRxNiJNk3vPU4mGE1+nCpql1mp7xOzlFDSWusbkF4+GwANpr9qPlVlUq4
A3alIznJUReoRTHXVEarC6EtYFJzBuZ98lZWoyq+U5M7qKLWnHf5+Xi8nJmabX/sHvUml9JnH/iJ
YcDSDhAjjMDL3+UefdqcAGkETB4VFMvl+nIEDBu+XodXwssoPIBo4gOEFPb3FbktbWMPXeIx+5ZA
qP050MzetU7srl1B8hdlOiWrTBUAc3a9cNJu3A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHxL471rluhlP6wJUzcI5rB5ZZlUkxQz2V3/L6u0QB+yHVf2vwtfNdk6Q82XsoChr7/qAfzQq5uh
H4dHcIvF5VaokmKVJmwqoOS4xDqpW5EY2hg7dlTamuHfmOxo7oo412s1JLSTQ6gjAJ3hpk9txese
m7AOKbQIjUOyuTvCVANicjrvniUBgix3t+dUsNJeUr41ZoAk7HAd6F0e86aMNusPzLlm3T76jShf
1CBybHe9B51QEeuOx5r1hGs7pCFzZ5DHK4LkYAMdGvUopYn+JNZ1ArvK8CZUqOktuF/ifS28afuf
2mgqSXZ/Aqb2HNIOlYmyufK866CWorRTlEBtAg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eK5KC82hD+N6KdG6qbtBTG6rqX1ID7XNNYPTnbwiDyju+DOixq38TyiZPKYNVeH/LR4oDjDDtVzC
7F1ZvyFQ+WYmslrMYwy4wRVRyZSq6WmzQHk4j5KpNU6kbQf9o8A6huyxDXUnEHJ/MJ4H/Ta2lKlX
3eA29VjkQOUx5kI9wcQg4hDBaPdA7q96e27HPqjnc4bwcn5wpyB/P1bhWj+Qs1L8sgUaYr2v1ZPp
a7UCfGEb9Tra7Noxt1VjNdxIlbjjpKILDbkEJouLMvOnsfr3X8q1melXokLT2DnIqYmZJDbilaju
NSAPRSUS/vktNvt29trPgs6GXRBmgISitNGuhQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ZfvAFAgE1UCpmvmg2GsErAPLLISnYl062YrjMcfMib4N9O/pANLSeXBgOICuDgJ4LESqRo7dRmxp
mFA+fRMLBLVslQxN0OSEMUH803FzL0P+3ytJ8YWVpHGgXH2mIsSnZjOL8rXwPaxuFvbbKNqjIRwQ
2FNY84sAxT+0DmKRMIQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YVx5K+fnKfgvm5vChUFonYo469MyznRsQenKjPQRgsNCGmfROtiwsnu+5yivTd5Mu5s6mhWkPU/X
5I/M7nUEj4anSX9q7BmBkMZzZ+91WgSm+VE+dpSASWoC0SUKodpwdla/fAL+qNnHXHbbsgqoz4g3
wCVcNswoua0YdnnRWwGQh/iUfNzo7LH3iL3Fpg7YGnlfCTGzFDOZV+Yq1o8HFAKHqPtHkIu6aRwD
Kda8bSVUbhGB3OE1X2j8OReKfRltmMP+fYXIauXYFM7CCopLigT3OBX1KhA6Kf5I3qdqPKbSdI3i
eTgr4SmOVwhF21z+30LGEraoydG0H8u4rX7jzg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C9grilPV7jwS/64/RHPAJ1c82a+WxVrPoW0YqYdJ4J3wzFeP9hXPxNJtmPzYJqrS/ybuHApIuCX4
3UZX+ud6VREPE1nK2JlQe8KWh829zKXkd5QAFEZnfi1x0MbOHQDXRbUDcCF/uhtpu/Bup/DTGR6s
Vs8liDONIjYbva9ARZqZ+WiSf9Yn97lIjHJIIIhISoQzZMHuGVBABOpbUji+doFVaBPNe7DCFrBp
flAuCmtQBz8t6GmYLAKbXgTjsS7ynMFWiF/ioCzPsSZRGVnzaLzx07UETgRH0WIB7vapo0fvdNMT
BtwzXdg5HKrW3u0cSgcRjM+UUlrmNa7JXc8Nhw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YIClKjy+lOz2mS9fF7erdLMsQn4zJkR+LxJrFLju9ideX8BQMlafE5E87JDMA+m8P025fPsFsdic
SSZ7cBMRi4dhSfUk+4aO129zuxT9eCgF7nIjclShSbxh+Z8ULRGQbI5SizmmRLB/BQ8ot4aLKCIJ
LwIe/bpBf6np4zdPOFt2juh/p8C9Bp2S5dCepeZUuC2rFdiEHqdiwi39eS9I4dta7UzBddT+1vaP
de4TiW1I7wdAGFjPNBk4sE8ADJxBPl3RaD7vKZPgTL6MwTyYNRGl0qhnD+MLn7IZfz9gs5ixIdb/
3mOeCIb9Hg38YEIZlv1NfMN7qPN8W1NJKwaUpw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25072)
`pragma protect data_block
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
Wbxi3gU=
`pragma protect end_protected
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
