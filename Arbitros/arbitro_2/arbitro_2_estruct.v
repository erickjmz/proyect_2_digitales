/* Generated by Yosys 0.9+4300 (git sha1 551ef85c, clang  -fPIC -Os) */

(* top =  1  *)
(* src = "arbitro_2_estruct.v:1.1-75.10" *)
module arbitro_2_estruct(clk, almost_full0, almost_full1, almost_full2, almost_full3, empty, state, pop, push0, push1, push2, push3);
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  wire _00_;
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  wire _01_;
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  wire _02_;
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  (* src = "arbitro_2_estruct.v:3.11-3.23" *)
  input almost_full0;
  (* src = "arbitro_2_estruct.v:4.11-4.23" *)
  input almost_full1;
  (* src = "arbitro_2_estruct.v:5.11-5.23" *)
  input almost_full2;
  (* src = "arbitro_2_estruct.v:6.11-6.23" *)
  input almost_full3;
  (* src = "arbitro_2_estruct.v:2.11-2.14" *)
  input clk;
  (* src = "arbitro_2_estruct.v:15.11-15.19" *)
  wire [1:0] contador;
  (* src = "arbitro_2_estruct.v:7.11-7.16" *)
  input empty;
  (* src = "arbitro_2_estruct.v:9.16-9.19" *)
  output pop;
  (* src = "arbitro_2_estruct.v:10.16-10.21" *)
  output push0;
  reg push0;
  (* src = "arbitro_2_estruct.v:11.16-11.21" *)
  output push1;
  reg push1;
  (* src = "arbitro_2_estruct.v:12.16-12.21" *)
  output push2;
  reg push2;
  (* src = "arbitro_2_estruct.v:13.16-13.21" *)
  output push3;
  reg push3;
  (* src = "arbitro_2_estruct.v:8.17-8.22" *)
  input [3:0] state;
  NOT _33_ (
    .A(contador[1]),
    .Y(_06_)
  );
  NOT _34_ (
    .A(contador[0]),
    .Y(_07_)
  );
  NOT _35_ (
    .A(state[0]),
    .Y(_08_)
  );
  NOT _36_ (
    .A(state[1]),
    .Y(_09_)
  );
  NOT _37_ (
    .A(empty),
    .Y(_10_)
  );
  NOT _38_ (
    .A(almost_full3),
    .Y(_11_)
  );
  NOR _39_ (
    .A(_08_),
    .B(state[1]),
    .Y(_12_)
  );
  NAND _40_ (
    .A(state[0]),
    .B(_09_),
    .Y(_13_)
  );
  NOR _41_ (
    .A(state[2]),
    .B(state[3]),
    .Y(_14_)
  );
  NOT _42_ (
    .A(_14_),
    .Y(_15_)
  );
  NOR _43_ (
    .A(_13_),
    .B(_15_),
    .Y(_16_)
  );
  NAND _44_ (
    .A(_12_),
    .B(_14_),
    .Y(_17_)
  );
  NAND _45_ (
    .A(_06_),
    .B(contador[0]),
    .Y(_18_)
  );
  NAND _46_ (
    .A(empty),
    .B(_18_),
    .Y(_19_)
  );
  NAND _47_ (
    .A(contador[0]),
    .B(_10_),
    .Y(_20_)
  );
  NAND _48_ (
    .A(_19_),
    .B(_20_),
    .Y(_21_)
  );
  NOR _49_ (
    .A(_16_),
    .B(_21_),
    .Y(_04_)
  );
  NOR _50_ (
    .A(empty),
    .B(almost_full0),
    .Y(_22_)
  );
  NOT _51_ (
    .A(_22_),
    .Y(_23_)
  );
  NOR _52_ (
    .A(almost_full1),
    .B(almost_full2),
    .Y(_24_)
  );
  NAND _53_ (
    .A(_11_),
    .B(_24_),
    .Y(_25_)
  );
  NOR _54_ (
    .A(_23_),
    .B(_25_),
    .Y(pop)
  );
  NAND _55_ (
    .A(_10_),
    .B(_17_),
    .Y(_26_)
  );
  NAND _56_ (
    .A(contador[1]),
    .B(contador[0]),
    .Y(_27_)
  );
  NOR _57_ (
    .A(_26_),
    .B(_27_),
    .Y(_03_)
  );
  NAND _58_ (
    .A(contador[1]),
    .B(_07_),
    .Y(_28_)
  );
  NOR _59_ (
    .A(_26_),
    .B(_28_),
    .Y(_02_)
  );
  NOR _60_ (
    .A(_18_),
    .B(_26_),
    .Y(_01_)
  );
  NOR _61_ (
    .A(contador[1]),
    .B(contador[0]),
    .Y(_29_)
  );
  NOT _62_ (
    .A(_29_),
    .Y(_30_)
  );
  NOR _63_ (
    .A(_26_),
    .B(_30_),
    .Y(_00_)
  );
  NAND _64_ (
    .A(_06_),
    .B(_20_),
    .Y(_31_)
  );
  NAND _65_ (
    .A(_27_),
    .B(_31_),
    .Y(_32_)
  );
  NOR _66_ (
    .A(_16_),
    .B(_32_),
    .Y(_05_)
  );
  (* src = "arbitro_2_estruct.v:62.1-73.4" *)
  DFF _67_ (
    .C(clk),
    .D(_04_),
    .Q(contador[0])
  );
  (* src = "arbitro_2_estruct.v:62.1-73.4" *)
  DFF _68_ (
    .C(clk),
    .D(_05_),
    .Q(contador[1])
  );
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  always @*
    if (!1'h0) push0 = _00_;
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  always @*
    if (!1'h0) push1 = _01_;
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  always @*
    if (!1'h0) push2 = _02_;
  (* src = "arbitro_2_estruct.v:18.1-51.4" *)
  always @*
    if (!1'h0) push3 = _03_;
endmodule
