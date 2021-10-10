// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Dec  8 13:11:47 2019
// Host        : AK-HP-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/kumar/OneDrive/Desktop/Programming Tools/Vivado/Vivado
//               Code/ATM/ATM.sim/sim_1/impl/timing/xsim/amount_tests_time_impl.v}
// Design      : Top_Module
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module FSM
   (Q,
    E,
    CO,
    \current_count_reg[1] ,
    D,
    now_stable,
    \FSM_sequential_current_state_reg[0]_0 ,
    now_stable_0,
    \FSM_sequential_current_state_reg[0]_1 ,
    \current_count_reg[7] ,
    \current_count_reg[3] ,
    S,
    SR,
    CLK);
  output [1:0]Q;
  output [0:0]E;
  output [0:0]CO;
  output [3:0]\current_count_reg[1] ;
  input [0:0]D;
  input now_stable;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input now_stable_0;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input [1:0]\current_count_reg[7] ;
  input [2:0]\current_count_reg[3] ;
  input [2:0]S;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire [1:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire \current_count[3]_i_2_n_0 ;
  wire \current_count[3]_i_3_n_0 ;
  wire \current_count[3]_i_4_n_0 ;
  wire \current_count[3]_i_7_n_0 ;
  wire [3:0]\current_count_reg[1] ;
  wire [2:0]\current_count_reg[3] ;
  wire [1:0]\current_count_reg[7] ;
  wire [0:0]next_state;
  wire now_stable;
  wire now_stable_0;
  wire [2:0]\NLW_current_count_reg[3]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h6366020063666366)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(now_stable),
        .I3(\FSM_sequential_current_state_reg[0]_0 ),
        .I4(now_stable_0),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(next_state));
  (* FSM_ENCODED_STATES = "S00:00,S01:01,S10:10,FLAG:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "S00:00,S01:01,S10:10,FLAG:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(Q[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'h6A)) 
    \current_count[3]_i_2 
       (.I0(\current_count_reg[3] [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\current_count[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \current_count[3]_i_3 
       (.I0(\current_count_reg[3] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\current_count[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \current_count[3]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\current_count_reg[3] [0]),
        .O(\current_count[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF708)) 
    \current_count[3]_i_7 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\current_count_reg[3] [0]),
        .I3(\current_count_reg[3] [1]),
        .O(\current_count[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \current_count[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\current_count_reg[7] [1]),
        .I3(\current_count_reg[7] [0]),
        .O(E));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \current_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({CO,\NLW_current_count_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\current_count[3]_i_2_n_0 ,\current_count_reg[3] [1],\current_count[3]_i_3_n_0 ,\current_count[3]_i_4_n_0 }),
        .O(\current_count_reg[1] ),
        .S({S[2:1],\current_count[3]_i_7_n_0 ,S[0]}));
endmodule

(* ORIG_REF_NAME = "FSM" *) 
module FSM_3
   (Q,
    D,
    now_stable,
    \FSM_sequential_current_state_reg[0]_0 ,
    now_stable_0,
    \FSM_sequential_current_state_reg[0]_1 ,
    SR,
    CLK);
  output [1:0]Q;
  input [0:0]D;
  input now_stable;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input now_stable_0;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]next_state;
  wire now_stable;
  wire now_stable_0;

  LUT6 #(
    .INIT(64'h6366020063666366)) 
    \FSM_sequential_current_state[0]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(now_stable),
        .I3(\FSM_sequential_current_state_reg[0]_0 ),
        .I4(now_stable_0),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(next_state));
  (* FSM_ENCODED_STATES = "S00:00,S01:01,S10:10,FLAG:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(next_state),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "S00:00,S01:01,S10:10,FLAG:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(Q[1]),
        .R(SR));
endmodule

module Slow_Clock_100Hz
   (clk_out_reg_0,
    CLK);
  output clk_out_reg_0;
  input CLK;

  wire CLK;
  wire clk_out_reg_0;
  wire \period_count[0]_i_1_n_0 ;
  wire \period_count[0]_i_3_n_0 ;
  wire \period_count[0]_i_4_n_0 ;
  wire \period_count[0]_i_5_n_0 ;
  wire \period_count[0]_i_6_n_0 ;
  wire \period_count[0]_i_7_n_0 ;
  wire [20:0]period_count_reg;
  wire \period_count_reg[0]_i_2_n_0 ;
  wire \period_count_reg[0]_i_2_n_4 ;
  wire \period_count_reg[0]_i_2_n_5 ;
  wire \period_count_reg[0]_i_2_n_6 ;
  wire \period_count_reg[0]_i_2_n_7 ;
  wire \period_count_reg[12]_i_1_n_0 ;
  wire \period_count_reg[12]_i_1_n_4 ;
  wire \period_count_reg[12]_i_1_n_5 ;
  wire \period_count_reg[12]_i_1_n_6 ;
  wire \period_count_reg[12]_i_1_n_7 ;
  wire \period_count_reg[16]_i_1_n_0 ;
  wire \period_count_reg[16]_i_1_n_4 ;
  wire \period_count_reg[16]_i_1_n_5 ;
  wire \period_count_reg[16]_i_1_n_6 ;
  wire \period_count_reg[16]_i_1_n_7 ;
  wire \period_count_reg[20]_i_1_n_7 ;
  wire \period_count_reg[4]_i_1_n_0 ;
  wire \period_count_reg[4]_i_1_n_4 ;
  wire \period_count_reg[4]_i_1_n_5 ;
  wire \period_count_reg[4]_i_1_n_6 ;
  wire \period_count_reg[4]_i_1_n_7 ;
  wire \period_count_reg[8]_i_1_n_0 ;
  wire \period_count_reg[8]_i_1_n_4 ;
  wire \period_count_reg[8]_i_1_n_5 ;
  wire \period_count_reg[8]_i_1_n_6 ;
  wire \period_count_reg[8]_i_1_n_7 ;
  wire [2:0]\NLW_period_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_period_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_period_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_period_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_period_count_reg[20]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_period_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_period_count_reg[8]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count[0]_i_1_n_0 ),
        .Q(clk_out_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \period_count[0]_i_1 
       (.I0(\period_count[0]_i_3_n_0 ),
        .I1(period_count_reg[0]),
        .I2(period_count_reg[12]),
        .I3(period_count_reg[19]),
        .I4(\period_count[0]_i_4_n_0 ),
        .I5(\period_count[0]_i_5_n_0 ),
        .O(\period_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \period_count[0]_i_3 
       (.I0(period_count_reg[9]),
        .I1(period_count_reg[15]),
        .I2(period_count_reg[3]),
        .I3(period_count_reg[16]),
        .I4(period_count_reg[5]),
        .I5(period_count_reg[20]),
        .O(\period_count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \period_count[0]_i_4 
       (.I0(period_count_reg[1]),
        .I1(period_count_reg[14]),
        .I2(period_count_reg[4]),
        .I3(period_count_reg[11]),
        .O(\period_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \period_count[0]_i_5 
       (.I0(period_count_reg[7]),
        .I1(period_count_reg[2]),
        .I2(period_count_reg[18]),
        .I3(period_count_reg[13]),
        .I4(\period_count[0]_i_7_n_0 ),
        .O(\period_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \period_count[0]_i_6 
       (.I0(period_count_reg[0]),
        .O(\period_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \period_count[0]_i_7 
       (.I0(period_count_reg[6]),
        .I1(period_count_reg[10]),
        .I2(period_count_reg[17]),
        .I3(period_count_reg[8]),
        .O(\period_count[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[0]_i_2_n_7 ),
        .Q(period_count_reg[0]),
        .R(\period_count[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\period_count_reg[0]_i_2_n_0 ,\NLW_period_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\period_count_reg[0]_i_2_n_4 ,\period_count_reg[0]_i_2_n_5 ,\period_count_reg[0]_i_2_n_6 ,\period_count_reg[0]_i_2_n_7 }),
        .S({period_count_reg[3:1],\period_count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[8]_i_1_n_5 ),
        .Q(period_count_reg[10]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[8]_i_1_n_4 ),
        .Q(period_count_reg[11]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[12]_i_1_n_7 ),
        .Q(period_count_reg[12]),
        .R(\period_count[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_count_reg[12]_i_1 
       (.CI(\period_count_reg[8]_i_1_n_0 ),
        .CO({\period_count_reg[12]_i_1_n_0 ,\NLW_period_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\period_count_reg[12]_i_1_n_4 ,\period_count_reg[12]_i_1_n_5 ,\period_count_reg[12]_i_1_n_6 ,\period_count_reg[12]_i_1_n_7 }),
        .S(period_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[12]_i_1_n_6 ),
        .Q(period_count_reg[13]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[12]_i_1_n_5 ),
        .Q(period_count_reg[14]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[12]_i_1_n_4 ),
        .Q(period_count_reg[15]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[16]_i_1_n_7 ),
        .Q(period_count_reg[16]),
        .R(\period_count[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_count_reg[16]_i_1 
       (.CI(\period_count_reg[12]_i_1_n_0 ),
        .CO({\period_count_reg[16]_i_1_n_0 ,\NLW_period_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\period_count_reg[16]_i_1_n_4 ,\period_count_reg[16]_i_1_n_5 ,\period_count_reg[16]_i_1_n_6 ,\period_count_reg[16]_i_1_n_7 }),
        .S(period_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[16]_i_1_n_6 ),
        .Q(period_count_reg[17]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[16]_i_1_n_5 ),
        .Q(period_count_reg[18]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[16]_i_1_n_4 ),
        .Q(period_count_reg[19]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[0]_i_2_n_6 ),
        .Q(period_count_reg[1]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[20]_i_1_n_7 ),
        .Q(period_count_reg[20]),
        .R(\period_count[0]_i_1_n_0 ));
  CARRY4 \period_count_reg[20]_i_1 
       (.CI(\period_count_reg[16]_i_1_n_0 ),
        .CO(\NLW_period_count_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_period_count_reg[20]_i_1_O_UNCONNECTED [3:1],\period_count_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,period_count_reg[20]}));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[0]_i_2_n_5 ),
        .Q(period_count_reg[2]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[0]_i_2_n_4 ),
        .Q(period_count_reg[3]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[4]_i_1_n_7 ),
        .Q(period_count_reg[4]),
        .R(\period_count[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_count_reg[4]_i_1 
       (.CI(\period_count_reg[0]_i_2_n_0 ),
        .CO({\period_count_reg[4]_i_1_n_0 ,\NLW_period_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\period_count_reg[4]_i_1_n_4 ,\period_count_reg[4]_i_1_n_5 ,\period_count_reg[4]_i_1_n_6 ,\period_count_reg[4]_i_1_n_7 }),
        .S(period_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[4]_i_1_n_6 ),
        .Q(period_count_reg[5]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[4]_i_1_n_5 ),
        .Q(period_count_reg[6]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[4]_i_1_n_4 ),
        .Q(period_count_reg[7]),
        .R(\period_count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[8]_i_1_n_7 ),
        .Q(period_count_reg[8]),
        .R(\period_count[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \period_count_reg[8]_i_1 
       (.CI(\period_count_reg[4]_i_1_n_0 ),
        .CO({\period_count_reg[8]_i_1_n_0 ,\NLW_period_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\period_count_reg[8]_i_1_n_4 ,\period_count_reg[8]_i_1_n_5 ,\period_count_reg[8]_i_1_n_6 ,\period_count_reg[8]_i_1_n_7 }),
        .S(period_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \period_count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\period_count_reg[8]_i_1_n_6 ),
        .Q(period_count_reg[9]),
        .R(\period_count[0]_i_1_n_0 ));
endmodule

(* ECO_CHECKSUM = "a9565ff6" *) (* zero = "4'b0000" *) 
(* NotValidForBitStream *)
module Top_Module
   (clk,
    a,
    b,
    c,
    d,
    reset,
    an,
    seg);
  input clk;
  input a;
  input b;
  input c;
  input d;
  input reset;
  output [3:0]an;
  output [6:0]seg;

  wire A_n_0;
  wire B_n_0;
  wire C_n_0;
  wire D_n_0;
  wire a;
  wire a_IBUF;
  wire [3:0]an;
  wire [2:0]an_OBUF;
  wire b;
  wire b_IBUF;
  wire c;
  wire c_IBUF;
  wire [0:0]car_count;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]counter_out;
  wire [3:0]current_count;
  wire [1:0]current_state;
  wire [1:0]current_state_4;
  wire d;
  wire d_IBUF;
  wire enter_fsm_n_2;
  wire enter_fsm_n_3;
  wire [1:1]next_state;
  wire [1:1]next_state_1;
  wire now_stable;
  wire now_stable_0;
  wire now_stable_2;
  wire now_stable_3;
  wire reset;
  wire reset_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire u2_n_0;
  wire u6_n_10;
  wire u6_n_11;
  wire u6_n_12;
  wire u6_n_7;
  wire u6_n_8;

initial begin
 $sdf_annotate("amount_tests_time_impl.sdf",,,,"tool_control");
end
  debounce A
       (.CLK(clk_IBUF_BUFG),
        .D(next_state),
        .\FSM_sequential_current_state_reg[1] (B_n_0),
        .Q(current_state),
        .a_IBUF(a_IBUF),
        .now_stable(now_stable),
        .now_stable_0(now_stable_0),
        .stable_reg_0(A_n_0));
  debounce_0 B
       (.CLK(clk_IBUF_BUFG),
        .b_IBUF(b_IBUF),
        .now_stable(now_stable_0),
        .stable_reg_0(B_n_0));
  debounce_1 C
       (.CLK(clk_IBUF_BUFG),
        .D(next_state_1),
        .\FSM_sequential_current_state_reg[1] (D_n_0),
        .Q(current_state_4),
        .c_IBUF(c_IBUF),
        .now_stable(now_stable_2),
        .now_stable_0(now_stable_3),
        .stable_reg_0(C_n_0));
  debounce_2 D
       (.CLK(clk_IBUF_BUFG),
        .d_IBUF(d_IBUF),
        .now_stable(now_stable_3),
        .stable_reg_0(D_n_0));
  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  IBUF c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF d_IBUF_inst
       (.I(d),
        .O(d_IBUF));
  FSM enter_fsm
       (.CLK(clk_IBUF_BUFG),
        .CO(enter_fsm_n_3),
        .D(next_state),
        .E(enter_fsm_n_2),
        .\FSM_sequential_current_state_reg[0]_0 (A_n_0),
        .\FSM_sequential_current_state_reg[0]_1 (B_n_0),
        .Q(current_state),
        .S({u6_n_10,u6_n_11,u6_n_12}),
        .SR(reset_IBUF),
        .\current_count_reg[1] (current_count),
        .\current_count_reg[3] ({u6_n_7,u6_n_8,car_count}),
        .\current_count_reg[7] (current_state_4),
        .now_stable(now_stable),
        .now_stable_0(now_stable_0));
  FSM_3 exit_fsm
       (.CLK(clk_IBUF_BUFG),
        .D(next_state_1),
        .\FSM_sequential_current_state_reg[0]_0 (C_n_0),
        .\FSM_sequential_current_state_reg[0]_1 (D_n_0),
        .Q(current_state_4),
        .SR(reset_IBUF),
        .now_stable(now_stable_2),
        .now_stable_0(now_stable_3));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  Slow_Clock_100Hz u2
       (.CLK(clk_IBUF_BUFG),
        .clk_out_reg_0(u2_n_0));
  eight_bit_counter u3
       (.Q(counter_out),
        .an_OBUF(an_OBUF),
        .\temp_reg[1]_0 (u2_n_0));
  counter u6
       (.CLK(clk_IBUF_BUFG),
        .CO(enter_fsm_n_3),
        .D(current_count),
        .E(enter_fsm_n_2),
        .Q(current_state),
        .S({u6_n_10,u6_n_11,u6_n_12}),
        .SR(reset_IBUF),
        .\current_count_reg[3]_0 ({u6_n_7,u6_n_8,car_count}),
        .seg_OBUF(seg_OBUF),
        .\seg_OBUF[6]_inst_i_3_0 (counter_out));
endmodule

module counter
   (seg_OBUF,
    \current_count_reg[3]_0 ,
    S,
    Q,
    \seg_OBUF[6]_inst_i_3_0 ,
    D,
    CO,
    SR,
    E,
    CLK);
  output [6:0]seg_OBUF;
  output [2:0]\current_count_reg[3]_0 ;
  output [2:0]S;
  input [1:0]Q;
  input [1:0]\seg_OBUF[6]_inst_i_3_0 ;
  input [3:0]D;
  input [0:0]CO;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [7:4]current_count;
  wire \current_count[7]_i_3_n_0 ;
  wire \current_count[7]_i_4_n_0 ;
  wire \current_count[7]_i_5_n_0 ;
  wire \current_count[7]_i_6_n_0 ;
  wire \current_count[7]_i_7_n_0 ;
  wire \current_count[7]_i_8_n_0 ;
  wire \current_count[7]_i_9_n_0 ;
  wire [2:0]\current_count_reg[3]_0 ;
  wire \current_count_reg_n_0_[2] ;
  wire \current_count_reg_n_0_[4] ;
  wire \current_count_reg_n_0_[5] ;
  wire \current_count_reg_n_0_[6] ;
  wire \current_count_reg_n_0_[7] ;
  wire [1:1]hundreds;
  wire [3:0]mux_out;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_10_n_0 ;
  wire \seg_OBUF[6]_inst_i_11_n_0 ;
  wire \seg_OBUF[6]_inst_i_12_n_0 ;
  wire \seg_OBUF[6]_inst_i_13_n_0 ;
  wire [1:0]\seg_OBUF[6]_inst_i_3_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire [3:0]\u0/U3/out__19 ;
  wire [2:0]\u0/U5/out__9 ;
  wire [3:0]\NLW_current_count_reg[7]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \current_count[3]_i_5 
       (.I0(\current_count_reg[3]_0 [2]),
        .I1(\current_count_reg_n_0_[2] ),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[3]_i_6 
       (.I0(\current_count_reg[3]_0 [1]),
        .I1(\current_count_reg_n_0_[2] ),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[3]_i_8 
       (.I0(\current_count_reg[3]_0 [0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h2CCC)) 
    \current_count[7]_i_3 
       (.I0(\current_count_reg_n_0_[4] ),
        .I1(\current_count_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\current_count[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \current_count[7]_i_4 
       (.I0(\current_count_reg_n_0_[2] ),
        .I1(\current_count_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\current_count[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9CCC)) 
    \current_count[7]_i_5 
       (.I0(\current_count_reg_n_0_[2] ),
        .I1(\current_count_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\current_count[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00807F)) 
    \current_count[7]_i_6 
       (.I0(\current_count_reg_n_0_[5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_count_reg_n_0_[7] ),
        .I4(\current_count_reg_n_0_[6] ),
        .O(\current_count[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF00807F)) 
    \current_count[7]_i_7 
       (.I0(\current_count_reg_n_0_[4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_count_reg_n_0_[6] ),
        .I4(\current_count_reg_n_0_[5] ),
        .O(\current_count[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC03F807F)) 
    \current_count[7]_i_8 
       (.I0(\current_count_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\current_count_reg_n_0_[5] ),
        .I4(\current_count_reg_n_0_[4] ),
        .O(\current_count[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h65559555)) 
    \current_count[7]_i_9 
       (.I0(\current_count_reg_n_0_[4] ),
        .I1(\current_count_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\current_count_reg[3]_0 [2]),
        .O(\current_count[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\current_count_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\current_count_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\current_count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\current_count_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(current_count[4]),
        .Q(\current_count_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(current_count[5]),
        .Q(\current_count_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(current_count[6]),
        .Q(\current_count_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_count_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(current_count[7]),
        .Q(\current_count_reg_n_0_[7] ),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \current_count_reg[7]_i_2 
       (.CI(CO),
        .CO(\NLW_current_count_reg[7]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\current_count[7]_i_3_n_0 ,\current_count[7]_i_4_n_0 ,\current_count[7]_i_5_n_0 }),
        .O(current_count),
        .S({\current_count[7]_i_6_n_0 ,\current_count[7]_i_7_n_0 ,\current_count[7]_i_8_n_0 ,\current_count[7]_i_9_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[0]),
        .I2(mux_out[2]),
        .I3(mux_out[1]),
        .O(seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[2]),
        .I2(mux_out[0]),
        .I3(mux_out[1]),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[1]),
        .I2(mux_out[2]),
        .I3(mux_out[0]),
        .O(seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[2]),
        .I2(mux_out[0]),
        .I3(mux_out[1]),
        .O(seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[0]),
        .I2(mux_out[1]),
        .I3(mux_out[2]),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'hACC8)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[2]),
        .I2(mux_out[0]),
        .I3(mux_out[1]),
        .O(seg_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2014)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(mux_out[3]),
        .I1(mux_out[2]),
        .I2(mux_out[0]),
        .I3(mux_out[1]),
        .O(seg_OBUF[6]));
  LUT6 #(
    .INIT(64'h4642FFFF46420000)) 
    \seg_OBUF[6]_inst_i_10 
       (.I0(\u0/U5/out__9 [2]),
        .I1(\u0/U5/out__9 [1]),
        .I2(\u0/U5/out__9 [0]),
        .I3(\u0/U3/out__19 [3]),
        .I4(\seg_OBUF[6]_inst_i_3_0 [1]),
        .I5(\current_count_reg[3]_0 [0]),
        .O(\seg_OBUF[6]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000003E0)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(\current_count_reg[3]_0 [1]),
        .I1(\u0/U3/out__19 [0]),
        .I2(\u0/U3/out__19 [1]),
        .I3(\u0/U3/out__19 [2]),
        .I4(\seg_OBUF[6]_inst_i_3_0 [1]),
        .O(\seg_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8B8B8888B8)) 
    \seg_OBUF[6]_inst_i_12 
       (.I0(hundreds),
        .I1(\seg_OBUF[6]_inst_i_3_0 [1]),
        .I2(\u0/U3/out__19 [2]),
        .I3(\u0/U3/out__19 [0]),
        .I4(\u0/U3/out__19 [1]),
        .I5(\current_count_reg[3]_0 [1]),
        .O(\seg_OBUF[6]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000162)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(\u0/U3/out__19 [3]),
        .I1(\u0/U5/out__9 [1]),
        .I2(\u0/U5/out__9 [0]),
        .I3(\u0/U5/out__9 [2]),
        .I4(\seg_OBUF[6]_inst_i_3_0 [1]),
        .O(\seg_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hD02DB40B0BD042B4)) 
    \seg_OBUF[6]_inst_i_14 
       (.I0(\current_count_reg_n_0_[7] ),
        .I1(\current_count_reg_n_0_[5] ),
        .I2(\current_count_reg_n_0_[6] ),
        .I3(\current_count_reg_n_0_[4] ),
        .I4(\current_count_reg[3]_0 [2]),
        .I5(\current_count_reg_n_0_[2] ),
        .O(\u0/U3/out__19 [0]));
  LUT6 #(
    .INIT(64'h9949269292996426)) 
    \seg_OBUF[6]_inst_i_15 
       (.I0(\current_count_reg_n_0_[7] ),
        .I1(\current_count_reg_n_0_[5] ),
        .I2(\current_count_reg_n_0_[6] ),
        .I3(\current_count_reg_n_0_[4] ),
        .I4(\current_count_reg[3]_0 [2]),
        .I5(\current_count_reg_n_0_[2] ),
        .O(\u0/U3/out__19 [1]));
  LUT6 #(
    .INIT(64'h0290402424020940)) 
    \seg_OBUF[6]_inst_i_16 
       (.I0(\current_count_reg_n_0_[7] ),
        .I1(\current_count_reg_n_0_[5] ),
        .I2(\current_count_reg_n_0_[6] ),
        .I3(\current_count_reg_n_0_[4] ),
        .I4(\current_count_reg[3]_0 [2]),
        .I5(\current_count_reg_n_0_[2] ),
        .O(\u0/U3/out__19 [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD2169206)) 
    \seg_OBUF[6]_inst_i_17 
       (.I0(\current_count_reg_n_0_[7] ),
        .I1(\current_count_reg_n_0_[6] ),
        .I2(\current_count_reg_n_0_[5] ),
        .I3(\current_count_reg_n_0_[4] ),
        .I4(\current_count_reg[3]_0 [2]),
        .O(\u0/U5/out__9 [0]));
  LUT6 #(
    .INIT(64'h2FD24BF40BD042B4)) 
    \seg_OBUF[6]_inst_i_18 
       (.I0(\current_count_reg_n_0_[7] ),
        .I1(\current_count_reg_n_0_[5] ),
        .I2(\current_count_reg_n_0_[6] ),
        .I3(\current_count_reg_n_0_[4] ),
        .I4(\current_count_reg[3]_0 [2]),
        .I5(\current_count_reg_n_0_[2] ),
        .O(\u0/U3/out__19 [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4642)) 
    \seg_OBUF[6]_inst_i_19 
       (.I0(\current_count_reg_n_0_[7] ),
        .I1(\current_count_reg_n_0_[6] ),
        .I2(\current_count_reg_n_0_[5] ),
        .I3(\current_count_reg_n_0_[4] ),
        .O(\u0/U5/out__9 [1]));
  MUXF7 \seg_OBUF[6]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(mux_out[3]),
        .S(\seg_OBUF[6]_inst_i_3_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08080828)) 
    \seg_OBUF[6]_inst_i_20 
       (.I0(\current_count_reg_n_0_[7] ),
        .I1(\current_count_reg_n_0_[5] ),
        .I2(\current_count_reg_n_0_[6] ),
        .I3(\current_count_reg_n_0_[4] ),
        .I4(\current_count_reg[3]_0 [2]),
        .O(\u0/U5/out__9 [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0E00000)) 
    \seg_OBUF[6]_inst_i_21 
       (.I0(\current_count_reg[3]_0 [2]),
        .I1(\current_count_reg_n_0_[4] ),
        .I2(\current_count_reg_n_0_[6] ),
        .I3(\current_count_reg_n_0_[5] ),
        .I4(\current_count_reg_n_0_[7] ),
        .O(hundreds));
  MUXF7 \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_8_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_9_n_0 ),
        .O(mux_out[2]),
        .S(\seg_OBUF[6]_inst_i_3_0 [0]));
  MUXF7 \seg_OBUF[6]_inst_i_4 
       (.I0(\seg_OBUF[6]_inst_i_10_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_11_n_0 ),
        .O(mux_out[0]),
        .S(\seg_OBUF[6]_inst_i_3_0 [0]));
  MUXF7 \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[6]_inst_i_12_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_13_n_0 ),
        .O(mux_out[1]),
        .S(\seg_OBUF[6]_inst_i_3_0 [0]));
  LUT5 #(
    .INIT(32'h00000410)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(\u0/U3/out__19 [0]),
        .I1(\current_count_reg[3]_0 [1]),
        .I2(\u0/U3/out__19 [1]),
        .I3(\u0/U3/out__19 [2]),
        .I4(\seg_OBUF[6]_inst_i_3_0 [1]),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000410)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(\u0/U5/out__9 [0]),
        .I1(\u0/U3/out__19 [3]),
        .I2(\u0/U5/out__9 [1]),
        .I3(\u0/U5/out__9 [2]),
        .I4(\seg_OBUF[6]_inst_i_3_0 [1]),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000001A2)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(\u0/U3/out__19 [0]),
        .I1(\u0/U3/out__19 [1]),
        .I2(\current_count_reg[3]_0 [1]),
        .I3(\u0/U3/out__19 [2]),
        .I4(\seg_OBUF[6]_inst_i_3_0 [1]),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000001A2)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(\u0/U5/out__9 [0]),
        .I1(\u0/U5/out__9 [1]),
        .I2(\u0/U3/out__19 [3]),
        .I3(\u0/U5/out__9 [2]),
        .I4(\seg_OBUF[6]_inst_i_3_0 [1]),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
endmodule

module debounce
   (stable_reg_0,
    now_stable,
    D,
    a_IBUF,
    CLK,
    \FSM_sequential_current_state_reg[1] ,
    now_stable_0,
    Q);
  output stable_reg_0;
  output now_stable;
  output [0:0]D;
  input a_IBUF;
  input CLK;
  input \FSM_sequential_current_state_reg[1] ;
  input now_stable_0;
  input [1:0]Q;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]Q;
  wire a_IBUF;
  wire clear;
  wire count;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire [11:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire new_press;
  wire now_stable;
  wire now_stable_0;
  wire stable0_out;
  wire stable_reg_0;
  wire [2:0]\NLW_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000FFFF00D00000)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(stable_reg_0),
        .I1(now_stable),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(now_stable_0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_3_n_0 ),
        .I1(count_reg[8]),
        .I2(count_reg[0]),
        .I3(count_reg[11]),
        .I4(count_reg[4]),
        .I5(\count[0]_i_4_n_0 ),
        .O(count));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_3 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[10]),
        .I3(count_reg[7]),
        .O(\count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \count[0]_i_4 
       (.I0(count_reg[9]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[1]),
        .O(\count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5 
       (.I0(count_reg[0]),
        .O(\count[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\NLW_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO(\NLW_count_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h6)) 
    new_press_i_1
       (.I0(a_IBUF),
        .I1(new_press),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    new_press_reg
       (.C(CLK),
        .CE(clear),
        .D(a_IBUF),
        .Q(new_press),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    now_stable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(stable_reg_0),
        .Q(now_stable),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h41)) 
    stable_i_1
       (.I0(count),
        .I1(new_press),
        .I2(a_IBUF),
        .O(stable0_out));
  FDRE #(
    .INIT(1'b0)) 
    stable_reg
       (.C(CLK),
        .CE(stable0_out),
        .D(a_IBUF),
        .Q(stable_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_0
   (stable_reg_0,
    now_stable,
    b_IBUF,
    CLK);
  output stable_reg_0;
  output now_stable;
  input b_IBUF;
  input CLK;

  wire CLK;
  wire b_IBUF;
  wire count;
  wire \count[0]_i_3__0_n_0 ;
  wire \count[0]_i_4__0_n_0 ;
  wire \count[0]_i_5__0_n_0 ;
  wire [11:0]count_reg;
  wire \count_reg[0]_i_2__0_n_0 ;
  wire \count_reg[0]_i_2__0_n_4 ;
  wire \count_reg[0]_i_2__0_n_5 ;
  wire \count_reg[0]_i_2__0_n_6 ;
  wire \count_reg[0]_i_2__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire new_press_i_1__0_n_0;
  wire new_press_reg_n_0;
  wire now_stable;
  wire stable0_out;
  wire stable_reg_0;
  wire [2:0]\NLW_count_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \count[0]_i_1__0 
       (.I0(\count[0]_i_3__0_n_0 ),
        .I1(count_reg[8]),
        .I2(count_reg[0]),
        .I3(count_reg[11]),
        .I4(count_reg[4]),
        .I5(\count[0]_i_4__0_n_0 ),
        .O(count));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_3__0 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[10]),
        .I3(count_reg[7]),
        .O(\count[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \count[0]_i_4__0 
       (.I0(count_reg[9]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[1]),
        .O(\count[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__0_n_7 ),
        .Q(count_reg[0]),
        .R(new_press_i_1__0_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__0_n_0 ,\NLW_count_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2__0_n_4 ,\count_reg[0]_i_2__0_n_5 ,\count_reg[0]_i_2__0_n_6 ,\count_reg[0]_i_2__0_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__0_n_6 ),
        .Q(count_reg[1]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__0_n_5 ),
        .Q(count_reg[2]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__0_n_4 ),
        .Q(count_reg[3]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]),
        .R(new_press_i_1__0_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_2__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\NLW_count_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]),
        .R(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(count_reg[8]),
        .R(new_press_i_1__0_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO(\NLW_count_reg[8]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]),
        .R(new_press_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    new_press_i_1__0
       (.I0(b_IBUF),
        .I1(new_press_reg_n_0),
        .O(new_press_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_press_reg
       (.C(CLK),
        .CE(new_press_i_1__0_n_0),
        .D(b_IBUF),
        .Q(new_press_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    now_stable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(stable_reg_0),
        .Q(now_stable),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h41)) 
    stable_i_1__0
       (.I0(count),
        .I1(new_press_reg_n_0),
        .I2(b_IBUF),
        .O(stable0_out));
  FDRE #(
    .INIT(1'b0)) 
    stable_reg
       (.C(CLK),
        .CE(stable0_out),
        .D(b_IBUF),
        .Q(stable_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_1
   (stable_reg_0,
    now_stable,
    D,
    c_IBUF,
    CLK,
    \FSM_sequential_current_state_reg[1] ,
    now_stable_0,
    Q);
  output stable_reg_0;
  output now_stable;
  output [0:0]D;
  input c_IBUF;
  input CLK;
  input \FSM_sequential_current_state_reg[1] ;
  input now_stable_0;
  input [1:0]Q;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]Q;
  wire c_IBUF;
  wire count;
  wire \count[0]_i_3__1_n_0 ;
  wire \count[0]_i_4__1_n_0 ;
  wire \count[0]_i_5__1_n_0 ;
  wire [11:0]count_reg;
  wire \count_reg[0]_i_2__1_n_0 ;
  wire \count_reg[0]_i_2__1_n_4 ;
  wire \count_reg[0]_i_2__1_n_5 ;
  wire \count_reg[0]_i_2__1_n_6 ;
  wire \count_reg[0]_i_2__1_n_7 ;
  wire \count_reg[4]_i_1__1_n_0 ;
  wire \count_reg[4]_i_1__1_n_4 ;
  wire \count_reg[4]_i_1__1_n_5 ;
  wire \count_reg[4]_i_1__1_n_6 ;
  wire \count_reg[4]_i_1__1_n_7 ;
  wire \count_reg[8]_i_1__1_n_4 ;
  wire \count_reg[8]_i_1__1_n_5 ;
  wire \count_reg[8]_i_1__1_n_6 ;
  wire \count_reg[8]_i_1__1_n_7 ;
  wire new_press_i_1__1_n_0;
  wire new_press_reg_n_0;
  wire now_stable;
  wire now_stable_0;
  wire stable0_out;
  wire stable_reg_0;
  wire [2:0]\NLW_count_reg[0]_i_2__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[8]_i_1__1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000FFFF00D00000)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(stable_reg_0),
        .I1(now_stable),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(now_stable_0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \count[0]_i_1__1 
       (.I0(\count[0]_i_3__1_n_0 ),
        .I1(count_reg[8]),
        .I2(count_reg[0]),
        .I3(count_reg[11]),
        .I4(count_reg[4]),
        .I5(\count[0]_i_4__1_n_0 ),
        .O(count));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_3__1 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[10]),
        .I3(count_reg[7]),
        .O(\count[0]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \count[0]_i_4__1 
       (.I0(count_reg[9]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[1]),
        .O(\count[0]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5__1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_5__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__1_n_7 ),
        .Q(count_reg[0]),
        .R(new_press_i_1__1_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__1_n_0 ,\NLW_count_reg[0]_i_2__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2__1_n_4 ,\count_reg[0]_i_2__1_n_5 ,\count_reg[0]_i_2__1_n_6 ,\count_reg[0]_i_2__1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__1_n_5 ),
        .Q(count_reg[10]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__1_n_4 ),
        .Q(count_reg[11]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__1_n_6 ),
        .Q(count_reg[1]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__1_n_5 ),
        .Q(count_reg[2]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__1_n_4 ),
        .Q(count_reg[3]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__1_n_7 ),
        .Q(count_reg[4]),
        .R(new_press_i_1__1_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1__1 
       (.CI(\count_reg[0]_i_2__1_n_0 ),
        .CO({\count_reg[4]_i_1__1_n_0 ,\NLW_count_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__1_n_4 ,\count_reg[4]_i_1__1_n_5 ,\count_reg[4]_i_1__1_n_6 ,\count_reg[4]_i_1__1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__1_n_6 ),
        .Q(count_reg[5]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__1_n_5 ),
        .Q(count_reg[6]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__1_n_4 ),
        .Q(count_reg[7]),
        .R(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__1_n_7 ),
        .Q(count_reg[8]),
        .R(new_press_i_1__1_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1__1 
       (.CI(\count_reg[4]_i_1__1_n_0 ),
        .CO(\NLW_count_reg[8]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__1_n_4 ,\count_reg[8]_i_1__1_n_5 ,\count_reg[8]_i_1__1_n_6 ,\count_reg[8]_i_1__1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__1_n_6 ),
        .Q(count_reg[9]),
        .R(new_press_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    new_press_i_1__1
       (.I0(c_IBUF),
        .I1(new_press_reg_n_0),
        .O(new_press_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_press_reg
       (.C(CLK),
        .CE(new_press_i_1__1_n_0),
        .D(c_IBUF),
        .Q(new_press_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    now_stable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(stable_reg_0),
        .Q(now_stable),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h41)) 
    stable_i_1__1
       (.I0(count),
        .I1(new_press_reg_n_0),
        .I2(c_IBUF),
        .O(stable0_out));
  FDRE #(
    .INIT(1'b0)) 
    stable_reg
       (.C(CLK),
        .CE(stable0_out),
        .D(c_IBUF),
        .Q(stable_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_2
   (stable_reg_0,
    now_stable,
    d_IBUF,
    CLK);
  output stable_reg_0;
  output now_stable;
  input d_IBUF;
  input CLK;

  wire CLK;
  wire count;
  wire \count[0]_i_3__2_n_0 ;
  wire \count[0]_i_4__2_n_0 ;
  wire \count[0]_i_5__2_n_0 ;
  wire [11:0]count_reg;
  wire \count_reg[0]_i_2__2_n_0 ;
  wire \count_reg[0]_i_2__2_n_4 ;
  wire \count_reg[0]_i_2__2_n_5 ;
  wire \count_reg[0]_i_2__2_n_6 ;
  wire \count_reg[0]_i_2__2_n_7 ;
  wire \count_reg[4]_i_1__2_n_0 ;
  wire \count_reg[4]_i_1__2_n_4 ;
  wire \count_reg[4]_i_1__2_n_5 ;
  wire \count_reg[4]_i_1__2_n_6 ;
  wire \count_reg[4]_i_1__2_n_7 ;
  wire \count_reg[8]_i_1__2_n_4 ;
  wire \count_reg[8]_i_1__2_n_5 ;
  wire \count_reg[8]_i_1__2_n_6 ;
  wire \count_reg[8]_i_1__2_n_7 ;
  wire d_IBUF;
  wire new_press_i_1__2_n_0;
  wire new_press_reg_n_0;
  wire now_stable;
  wire stable0_out;
  wire stable_reg_0;
  wire [2:0]\NLW_count_reg[0]_i_2__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[8]_i_1__2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \count[0]_i_1__2 
       (.I0(\count[0]_i_3__2_n_0 ),
        .I1(count_reg[8]),
        .I2(count_reg[0]),
        .I3(count_reg[11]),
        .I4(count_reg[4]),
        .I5(\count[0]_i_4__2_n_0 ),
        .O(count));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[0]_i_3__2 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[10]),
        .I3(count_reg[7]),
        .O(\count[0]_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \count[0]_i_4__2 
       (.I0(count_reg[9]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[1]),
        .O(\count[0]_i_4__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5__2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_5__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__2_n_7 ),
        .Q(count_reg[0]),
        .R(new_press_i_1__2_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2__2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__2_n_0 ,\NLW_count_reg[0]_i_2__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2__2_n_4 ,\count_reg[0]_i_2__2_n_5 ,\count_reg[0]_i_2__2_n_6 ,\count_reg[0]_i_2__2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__2_n_5 ),
        .Q(count_reg[10]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__2_n_4 ),
        .Q(count_reg[11]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__2_n_6 ),
        .Q(count_reg[1]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__2_n_5 ),
        .Q(count_reg[2]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2__2_n_4 ),
        .Q(count_reg[3]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__2_n_7 ),
        .Q(count_reg[4]),
        .R(new_press_i_1__2_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1__2 
       (.CI(\count_reg[0]_i_2__2_n_0 ),
        .CO({\count_reg[4]_i_1__2_n_0 ,\NLW_count_reg[4]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__2_n_4 ,\count_reg[4]_i_1__2_n_5 ,\count_reg[4]_i_1__2_n_6 ,\count_reg[4]_i_1__2_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__2_n_6 ),
        .Q(count_reg[5]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__2_n_5 ),
        .Q(count_reg[6]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1__2_n_4 ),
        .Q(count_reg[7]),
        .R(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__2_n_7 ),
        .Q(count_reg[8]),
        .R(new_press_i_1__2_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1__2 
       (.CI(\count_reg[4]_i_1__2_n_0 ),
        .CO(\NLW_count_reg[8]_i_1__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__2_n_4 ,\count_reg[8]_i_1__2_n_5 ,\count_reg[8]_i_1__2_n_6 ,\count_reg[8]_i_1__2_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1__2_n_6 ),
        .Q(count_reg[9]),
        .R(new_press_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    new_press_i_1__2
       (.I0(d_IBUF),
        .I1(new_press_reg_n_0),
        .O(new_press_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_press_reg
       (.C(CLK),
        .CE(new_press_i_1__2_n_0),
        .D(d_IBUF),
        .Q(new_press_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    now_stable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(stable_reg_0),
        .Q(now_stable),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h41)) 
    stable_i_1__2
       (.I0(count),
        .I1(new_press_reg_n_0),
        .I2(d_IBUF),
        .O(stable0_out));
  FDRE #(
    .INIT(1'b0)) 
    stable_reg
       (.C(CLK),
        .CE(stable0_out),
        .D(d_IBUF),
        .Q(stable_reg_0),
        .R(1'b0));
endmodule

module eight_bit_counter
   (Q,
    an_OBUF,
    \temp_reg[1]_0 );
  output [1:0]Q;
  output [2:0]an_OBUF;
  input \temp_reg[1]_0 ;

  wire [1:0]Q;
  wire [2:0]an_OBUF;
  wire [1:1]p_0_in;
  wire \temp[0]_i_1_n_0 ;
  wire \temp_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[0]_i_1 
       (.I0(Q[0]),
        .O(\temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \temp[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(\temp_reg[1]_0 ),
        .CE(1'b1),
        .D(\temp[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.C(\temp_reg[1]_0 ),
        .CE(1'b1),
        .D(p_0_in),
        .Q(Q[1]),
        .R(1'b0));
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
