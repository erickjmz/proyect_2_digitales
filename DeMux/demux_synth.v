/* Generated by Yosys 0.9+4300 (git sha1 551ef85c, clang  -fPIC -Os) */

(* top =  1  *)
(* src = "demux_synth.v:2.1-66.10" *)
module demux_synth(reset_L, clk, data_in, \class , data_out0, data_out1, data_out2, data_out3, valid_0, valid_1, valid_2, valid_3);
  (* src = "demux_synth.v:12.2-65.5" *)
  wire [11:0] _000_;
  (* src = "demux_synth.v:12.2-65.5" *)
  wire [11:0] _001_;
  (* src = "demux_synth.v:12.2-65.5" *)
  wire [11:0] _002_;
  (* src = "demux_synth.v:12.2-65.5" *)
  wire [11:0] _003_;
  (* src = "demux_synth.v:12.2-65.5" *)
  wire _004_;
  (* src = "demux_synth.v:12.2-65.5" *)
  wire _005_;
  (* src = "demux_synth.v:12.2-65.5" *)
  wire _006_;
  (* src = "demux_synth.v:12.2-65.5" *)
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  (* src = "demux_synth.v:7.19-7.24" *)
  input [1:0] \class ;
  (* src = "demux_synth.v:5.13-5.16" *)
  input clk;
  (* src = "demux_synth.v:6.20-6.27" *)
  input [11:0] data_in;
  (* src = "demux_synth.v:8.20-8.29" *)
  output [11:0] data_out0;
  reg [11:0] data_out0;
  (* src = "demux_synth.v:8.31-8.40" *)
  output [11:0] data_out1;
  reg [11:0] data_out1;
  (* src = "demux_synth.v:8.42-8.51" *)
  output [11:0] data_out2;
  reg [11:0] data_out2;
  (* src = "demux_synth.v:8.53-8.62" *)
  output [11:0] data_out3;
  reg [11:0] data_out3;
  (* src = "demux_synth.v:4.13-4.20" *)
  input reset_L;
  (* src = "demux_synth.v:9.13-9.20" *)
  output valid_0;
  reg valid_0;
  (* src = "demux_synth.v:9.22-9.29" *)
  output valid_1;
  reg valid_1;
  (* src = "demux_synth.v:9.31-9.38" *)
  output valid_2;
  reg valid_2;
  (* src = "demux_synth.v:9.40-9.47" *)
  output valid_3;
  reg valid_3;
  NOT _040_ (
    .A(\class [1]),
    .Y(_023_)
  );
  NOT _041_ (
    .A(data_in[0]),
    .Y(_024_)
  );
  NOT _042_ (
    .A(data_in[1]),
    .Y(_025_)
  );
  NOT _043_ (
    .A(data_in[2]),
    .Y(_026_)
  );
  NOT _044_ (
    .A(data_in[3]),
    .Y(_027_)
  );
  NOT _045_ (
    .A(data_in[4]),
    .Y(_028_)
  );
  NOT _046_ (
    .A(data_in[5]),
    .Y(_029_)
  );
  NOT _047_ (
    .A(data_in[6]),
    .Y(_030_)
  );
  NOT _048_ (
    .A(data_in[7]),
    .Y(_031_)
  );
  NOT _049_ (
    .A(data_in[8]),
    .Y(_032_)
  );
  NOT _050_ (
    .A(data_in[9]),
    .Y(_033_)
  );
  NOT _051_ (
    .A(data_in[10]),
    .Y(_034_)
  );
  NOT _052_ (
    .A(data_in[11]),
    .Y(_035_)
  );
  NAND _053_ (
    .A(\class [0]),
    .B(reset_L),
    .Y(_036_)
  );
  NOT _054_ (
    .A(_036_),
    .Y(_037_)
  );
  NAND _055_ (
    .A(\class [1]),
    .B(_037_),
    .Y(_038_)
  );
  NOT _056_ (
    .A(_038_),
    .Y(_007_)
  );
  NOR _057_ (
    .A(_024_),
    .B(_038_),
    .Y(_003_[0])
  );
  NOR _058_ (
    .A(_025_),
    .B(_038_),
    .Y(_003_[1])
  );
  NOR _059_ (
    .A(_026_),
    .B(_038_),
    .Y(_003_[2])
  );
  NOR _060_ (
    .A(_027_),
    .B(_038_),
    .Y(_003_[3])
  );
  NOR _061_ (
    .A(_028_),
    .B(_038_),
    .Y(_003_[4])
  );
  NOR _062_ (
    .A(_029_),
    .B(_038_),
    .Y(_003_[5])
  );
  NOR _063_ (
    .A(_030_),
    .B(_038_),
    .Y(_003_[6])
  );
  NOR _064_ (
    .A(_031_),
    .B(_038_),
    .Y(_003_[7])
  );
  NOR _065_ (
    .A(_032_),
    .B(_038_),
    .Y(_003_[8])
  );
  NOR _066_ (
    .A(_033_),
    .B(_038_),
    .Y(_003_[9])
  );
  NOR _067_ (
    .A(_034_),
    .B(_038_),
    .Y(_003_[10])
  );
  NOR _068_ (
    .A(_035_),
    .B(_038_),
    .Y(_003_[11])
  );
  NOR _069_ (
    .A(\class [0]),
    .B(_023_),
    .Y(_039_)
  );
  NAND _070_ (
    .A(reset_L),
    .B(_039_),
    .Y(_008_)
  );
  NOT _071_ (
    .A(_008_),
    .Y(_006_)
  );
  NOR _072_ (
    .A(_024_),
    .B(_008_),
    .Y(_002_[0])
  );
  NOR _073_ (
    .A(_025_),
    .B(_008_),
    .Y(_002_[1])
  );
  NOR _074_ (
    .A(_026_),
    .B(_008_),
    .Y(_002_[2])
  );
  NOR _075_ (
    .A(_027_),
    .B(_008_),
    .Y(_002_[3])
  );
  NOR _076_ (
    .A(_028_),
    .B(_008_),
    .Y(_002_[4])
  );
  NOR _077_ (
    .A(_029_),
    .B(_008_),
    .Y(_002_[5])
  );
  NOR _078_ (
    .A(_030_),
    .B(_008_),
    .Y(_002_[6])
  );
  NOR _079_ (
    .A(_031_),
    .B(_008_),
    .Y(_002_[7])
  );
  NOR _080_ (
    .A(_032_),
    .B(_008_),
    .Y(_002_[8])
  );
  NOR _081_ (
    .A(_033_),
    .B(_008_),
    .Y(_002_[9])
  );
  NOR _082_ (
    .A(_034_),
    .B(_008_),
    .Y(_002_[10])
  );
  NOR _083_ (
    .A(_035_),
    .B(_008_),
    .Y(_002_[11])
  );
  NOR _084_ (
    .A(\class [1]),
    .B(_036_),
    .Y(_005_)
  );
  NAND _085_ (
    .A(data_in[0]),
    .B(_005_),
    .Y(_009_)
  );
  NOT _086_ (
    .A(_009_),
    .Y(_001_[0])
  );
  NAND _087_ (
    .A(data_in[1]),
    .B(_005_),
    .Y(_010_)
  );
  NOT _088_ (
    .A(_010_),
    .Y(_001_[1])
  );
  NAND _089_ (
    .A(data_in[2]),
    .B(_005_),
    .Y(_011_)
  );
  NOT _090_ (
    .A(_011_),
    .Y(_001_[2])
  );
  NAND _091_ (
    .A(data_in[3]),
    .B(_005_),
    .Y(_012_)
  );
  NOT _092_ (
    .A(_012_),
    .Y(_001_[3])
  );
  NAND _093_ (
    .A(data_in[4]),
    .B(_005_),
    .Y(_013_)
  );
  NOT _094_ (
    .A(_013_),
    .Y(_001_[4])
  );
  NAND _095_ (
    .A(data_in[5]),
    .B(_005_),
    .Y(_014_)
  );
  NOT _096_ (
    .A(_014_),
    .Y(_001_[5])
  );
  NAND _097_ (
    .A(data_in[6]),
    .B(_005_),
    .Y(_015_)
  );
  NOT _098_ (
    .A(_015_),
    .Y(_001_[6])
  );
  NAND _099_ (
    .A(data_in[7]),
    .B(_005_),
    .Y(_016_)
  );
  NOT _100_ (
    .A(_016_),
    .Y(_001_[7])
  );
  NAND _101_ (
    .A(data_in[8]),
    .B(_005_),
    .Y(_017_)
  );
  NOT _102_ (
    .A(_017_),
    .Y(_001_[8])
  );
  NAND _103_ (
    .A(data_in[9]),
    .B(_005_),
    .Y(_018_)
  );
  NOT _104_ (
    .A(_018_),
    .Y(_001_[9])
  );
  NAND _105_ (
    .A(data_in[10]),
    .B(_005_),
    .Y(_019_)
  );
  NOT _106_ (
    .A(_019_),
    .Y(_001_[10])
  );
  NAND _107_ (
    .A(data_in[11]),
    .B(_005_),
    .Y(_020_)
  );
  NOT _108_ (
    .A(_020_),
    .Y(_001_[11])
  );
  NOR _109_ (
    .A(\class [0]),
    .B(\class [1]),
    .Y(_021_)
  );
  NAND _110_ (
    .A(reset_L),
    .B(_021_),
    .Y(_022_)
  );
  NOT _111_ (
    .A(_022_),
    .Y(_004_)
  );
  NOR _112_ (
    .A(_024_),
    .B(_022_),
    .Y(_000_[0])
  );
  NOR _113_ (
    .A(_025_),
    .B(_022_),
    .Y(_000_[1])
  );
  NOR _114_ (
    .A(_026_),
    .B(_022_),
    .Y(_000_[2])
  );
  NOR _115_ (
    .A(_027_),
    .B(_022_),
    .Y(_000_[3])
  );
  NOR _116_ (
    .A(_028_),
    .B(_022_),
    .Y(_000_[4])
  );
  NOR _117_ (
    .A(_029_),
    .B(_022_),
    .Y(_000_[5])
  );
  NOR _118_ (
    .A(_030_),
    .B(_022_),
    .Y(_000_[6])
  );
  NOR _119_ (
    .A(_031_),
    .B(_022_),
    .Y(_000_[7])
  );
  NOR _120_ (
    .A(_032_),
    .B(_022_),
    .Y(_000_[8])
  );
  NOR _121_ (
    .A(_033_),
    .B(_022_),
    .Y(_000_[9])
  );
  NOR _122_ (
    .A(_034_),
    .B(_022_),
    .Y(_000_[10])
  );
  NOR _123_ (
    .A(_035_),
    .B(_022_),
    .Y(_000_[11])
  );
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[0] = _000_[0];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[1] = _000_[1];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[2] = _000_[2];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[3] = _000_[3];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[4] = _000_[4];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[5] = _000_[5];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[6] = _000_[6];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[7] = _000_[7];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[8] = _000_[8];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[9] = _000_[9];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[10] = _000_[10];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out0[11] = _000_[11];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[0] = _001_[0];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[1] = _001_[1];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[2] = _001_[2];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[3] = _001_[3];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[4] = _001_[4];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[5] = _001_[5];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[6] = _001_[6];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[7] = _001_[7];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[8] = _001_[8];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[9] = _001_[9];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[10] = _001_[10];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out1[11] = _001_[11];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[0] = _002_[0];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[1] = _002_[1];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[2] = _002_[2];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[3] = _002_[3];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[4] = _002_[4];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[5] = _002_[5];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[6] = _002_[6];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[7] = _002_[7];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[8] = _002_[8];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[9] = _002_[9];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[10] = _002_[10];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out2[11] = _002_[11];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[0] = _003_[0];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[1] = _003_[1];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[2] = _003_[2];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[3] = _003_[3];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[4] = _003_[4];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[5] = _003_[5];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[6] = _003_[6];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[7] = _003_[7];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[8] = _003_[8];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[9] = _003_[9];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[10] = _003_[10];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) data_out3[11] = _003_[11];
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) valid_0 = _004_;
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) valid_1 = _005_;
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) valid_2 = _006_;
  (* src = "demux_synth.v:12.2-65.5" *)
  always @*
    if (!1'h0) valid_3 = _007_;
endmodule
