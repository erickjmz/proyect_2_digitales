/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "MUX_estruct.v:1" *)
module MUX_estruct(clk, state, P0, P1, P2, P3, Out0, Out1, Out2, Out3);
  (* src = "MUX_estruct.v:13" *)
  wire [9:0] _000_;
  (* src = "MUX_estruct.v:56" *)
  wire [9:0] _001_;
  (* src = "MUX_estruct.v:56" *)
  wire [9:0] _002_;
  (* src = "MUX_estruct.v:56" *)
  wire [9:0] _003_;
  (* src = "MUX_estruct.v:56" *)
  wire [9:0] _004_;
  wire _005_;
  wire _006_;
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
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  (* src = "MUX_estruct.v:8" *)
  wire [9:0] CanalMedio;
  (* src = "MUX_estruct.v:5" *)
  output [9:0] Out0;
  (* src = "MUX_estruct.v:5" *)
  output [9:0] Out1;
  (* src = "MUX_estruct.v:5" *)
  output [9:0] Out2;
  (* src = "MUX_estruct.v:5" *)
  output [9:0] Out3;
  (* src = "MUX_estruct.v:4" *)
  input [9:0] P0;
  (* src = "MUX_estruct.v:4" *)
  input [9:0] P1;
  (* src = "MUX_estruct.v:4" *)
  input [9:0] P2;
  (* src = "MUX_estruct.v:4" *)
  input [9:0] P3;
  (* src = "MUX_estruct.v:2" *)
  input clk;
  (* src = "MUX_estruct.v:3" *)
  input [3:0] state;
  NOR _216_ (
    .A(_064_),
    .B(_105_),
    .Y(_141_)
  );
  NOR _217_ (
    .A(P3[0]),
    .B(_141_),
    .Y(_142_)
  );
  NOR _218_ (
    .A(_054_),
    .B(_125_),
    .Y(_143_)
  );
  NOR _219_ (
    .A(P1[0]),
    .B(_143_),
    .Y(_144_)
  );
  NOR _220_ (
    .A(_116_),
    .B(_144_),
    .Y(_145_)
  );
  NAND _221_ (
    .A(_140_),
    .B(_142_),
    .Y(_146_)
  );
  NOR _222_ (
    .A(_145_),
    .B(_146_),
    .Y(_147_)
  );
  NOR _223_ (
    .A(_139_),
    .B(_147_),
    .Y(_000_[0])
  );
  NAND _224_ (
    .A(CanalMedio[1]),
    .B(_137_),
    .Y(_148_)
  );
  NOR _225_ (
    .A(_065_),
    .B(_105_),
    .Y(_149_)
  );
  NOR _226_ (
    .A(P3[1]),
    .B(_149_),
    .Y(_150_)
  );
  NOR _227_ (
    .A(_055_),
    .B(_125_),
    .Y(_151_)
  );
  NOR _228_ (
    .A(P1[1]),
    .B(_151_),
    .Y(_152_)
  );
  NOR _229_ (
    .A(_116_),
    .B(_152_),
    .Y(_153_)
  );
  NAND _230_ (
    .A(_148_),
    .B(_150_),
    .Y(_154_)
  );
  NOR _231_ (
    .A(_153_),
    .B(_154_),
    .Y(_155_)
  );
  NOR _232_ (
    .A(_139_),
    .B(_155_),
    .Y(_000_[1])
  );
  NAND _233_ (
    .A(CanalMedio[2]),
    .B(_137_),
    .Y(_156_)
  );
  NOR _234_ (
    .A(_066_),
    .B(_105_),
    .Y(_157_)
  );
  NOR _235_ (
    .A(P3[2]),
    .B(_157_),
    .Y(_158_)
  );
  NOR _236_ (
    .A(_056_),
    .B(_125_),
    .Y(_159_)
  );
  NOR _237_ (
    .A(P1[2]),
    .B(_159_),
    .Y(_160_)
  );
  NOR _238_ (
    .A(_116_),
    .B(_160_),
    .Y(_161_)
  );
  NAND _239_ (
    .A(_156_),
    .B(_158_),
    .Y(_162_)
  );
  NOR _240_ (
    .A(_161_),
    .B(_162_),
    .Y(_163_)
  );
  NOR _241_ (
    .A(_139_),
    .B(_163_),
    .Y(_000_[2])
  );
  NAND _242_ (
    .A(CanalMedio[3]),
    .B(_137_),
    .Y(_164_)
  );
  NOR _243_ (
    .A(_067_),
    .B(_105_),
    .Y(_165_)
  );
  NOR _244_ (
    .A(P3[3]),
    .B(_165_),
    .Y(_166_)
  );
  NOR _245_ (
    .A(_057_),
    .B(_125_),
    .Y(_167_)
  );
  NOR _246_ (
    .A(P1[3]),
    .B(_167_),
    .Y(_168_)
  );
  NOR _247_ (
    .A(_116_),
    .B(_168_),
    .Y(_169_)
  );
  NAND _248_ (
    .A(_164_),
    .B(_166_),
    .Y(_170_)
  );
  NOR _249_ (
    .A(_169_),
    .B(_170_),
    .Y(_171_)
  );
  NOR _250_ (
    .A(_139_),
    .B(_171_),
    .Y(_000_[3])
  );
  NAND _251_ (
    .A(CanalMedio[4]),
    .B(_137_),
    .Y(_172_)
  );
  NOR _252_ (
    .A(_068_),
    .B(_105_),
    .Y(_173_)
  );
  NOR _253_ (
    .A(P3[4]),
    .B(_173_),
    .Y(_174_)
  );
  NOR _254_ (
    .A(_058_),
    .B(_125_),
    .Y(_175_)
  );
  NOR _255_ (
    .A(P1[4]),
    .B(_175_),
    .Y(_176_)
  );
  NOR _256_ (
    .A(_116_),
    .B(_176_),
    .Y(_177_)
  );
  NAND _257_ (
    .A(_172_),
    .B(_174_),
    .Y(_178_)
  );
  NOR _258_ (
    .A(_177_),
    .B(_178_),
    .Y(_179_)
  );
  NOR _259_ (
    .A(_139_),
    .B(_179_),
    .Y(_000_[4])
  );
  NAND _260_ (
    .A(CanalMedio[5]),
    .B(_137_),
    .Y(_180_)
  );
  NOR _261_ (
    .A(_059_),
    .B(_125_),
    .Y(_181_)
  );
  NOR _262_ (
    .A(P1[5]),
    .B(_181_),
    .Y(_182_)
  );
  NOR _263_ (
    .A(_116_),
    .B(_182_),
    .Y(_183_)
  );
  NOR _264_ (
    .A(_069_),
    .B(_105_),
    .Y(_184_)
  );
  NOR _265_ (
    .A(P3[5]),
    .B(_184_),
    .Y(_185_)
  );
  NAND _266_ (
    .A(_180_),
    .B(_185_),
    .Y(_186_)
  );
  NOR _267_ (
    .A(_183_),
    .B(_186_),
    .Y(_187_)
  );
  NOR _268_ (
    .A(_139_),
    .B(_187_),
    .Y(_000_[5])
  );
  NAND _269_ (
    .A(CanalMedio[6]),
    .B(_137_),
    .Y(_188_)
  );
  NOR _270_ (
    .A(_060_),
    .B(_125_),
    .Y(_189_)
  );
  NOR _271_ (
    .A(P1[6]),
    .B(_189_),
    .Y(_190_)
  );
  NOR _272_ (
    .A(_116_),
    .B(_190_),
    .Y(_191_)
  );
  NOR _273_ (
    .A(_070_),
    .B(_105_),
    .Y(_192_)
  );
  NOR _274_ (
    .A(P3[6]),
    .B(_192_),
    .Y(_193_)
  );
  NAND _275_ (
    .A(_188_),
    .B(_193_),
    .Y(_194_)
  );
  NOR _276_ (
    .A(_191_),
    .B(_194_),
    .Y(_195_)
  );
  NOR _277_ (
    .A(_139_),
    .B(_195_),
    .Y(_000_[6])
  );
  NOR _278_ (
    .A(_061_),
    .B(_125_),
    .Y(_196_)
  );
  NOR _279_ (
    .A(P1[7]),
    .B(_196_),
    .Y(_197_)
  );
  NOR _280_ (
    .A(_116_),
    .B(_197_),
    .Y(_198_)
  );
  NAND _281_ (
    .A(P2[7]),
    .B(_106_),
    .Y(_199_)
  );
  NAND _282_ (
    .A(_072_),
    .B(_199_),
    .Y(_200_)
  );
  NOR _283_ (
    .A(_198_),
    .B(_200_),
    .Y(_201_)
  );
  NOR _284_ (
    .A(_139_),
    .B(_201_),
    .Y(_000_[7])
  );
  NOR _285_ (
    .A(_062_),
    .B(_125_),
    .Y(_202_)
  );
  NOR _286_ (
    .A(P1[8]),
    .B(_202_),
    .Y(_203_)
  );
  NOR _287_ (
    .A(_116_),
    .B(_203_),
    .Y(_204_)
  );
  NAND _288_ (
    .A(CanalMedio[8]),
    .B(_137_),
    .Y(_205_)
  );
  NOR _289_ (
    .A(_071_),
    .B(_105_),
    .Y(_206_)
  );
  NOR _290_ (
    .A(P3[8]),
    .B(_206_),
    .Y(_207_)
  );
  NAND _291_ (
    .A(_205_),
    .B(_207_),
    .Y(_208_)
  );
  NOR _292_ (
    .A(_204_),
    .B(_208_),
    .Y(_209_)
  );
  NOR _293_ (
    .A(_139_),
    .B(_209_),
    .Y(_000_[8])
  );
  NOR _294_ (
    .A(_063_),
    .B(_125_),
    .Y(_210_)
  );
  NOR _295_ (
    .A(P1[9]),
    .B(_210_),
    .Y(_211_)
  );
  NOR _296_ (
    .A(_116_),
    .B(_211_),
    .Y(_212_)
  );
  NAND _297_ (
    .A(P2[9]),
    .B(_106_),
    .Y(_213_)
  );
  NAND _298_ (
    .A(_073_),
    .B(_213_),
    .Y(_214_)
  );
  NOR _299_ (
    .A(_212_),
    .B(_214_),
    .Y(_215_)
  );
  NOR _300_ (
    .A(_139_),
    .B(_215_),
    .Y(_000_[9])
  );
  NOT _301_ (
    .A(_085_),
    .Y(_004_[9])
  );
  NOT _302_ (
    .A(clk),
    .Y(_006_)
  );
  NOT _303_ (
    .A(clk),
    .Y(_007_)
  );
  NOT _304_ (
    .A(clk),
    .Y(_008_)
  );
  NOT _305_ (
    .A(clk),
    .Y(_009_)
  );
  NOT _306_ (
    .A(clk),
    .Y(_010_)
  );
  NOT _307_ (
    .A(clk),
    .Y(_011_)
  );
  NOT _308_ (
    .A(clk),
    .Y(_012_)
  );
  NOT _309_ (
    .A(clk),
    .Y(_013_)
  );
  NOT _310_ (
    .A(clk),
    .Y(_014_)
  );
  NOT _311_ (
    .A(clk),
    .Y(_015_)
  );
  NOT _312_ (
    .A(clk),
    .Y(_016_)
  );
  NOT _313_ (
    .A(clk),
    .Y(_017_)
  );
  NOT _314_ (
    .A(clk),
    .Y(_018_)
  );
  NOT _315_ (
    .A(clk),
    .Y(_019_)
  );
  NOT _316_ (
    .A(clk),
    .Y(_020_)
  );
  NOT _317_ (
    .A(clk),
    .Y(_021_)
  );
  NOT _318_ (
    .A(clk),
    .Y(_022_)
  );
  NOT _319_ (
    .A(clk),
    .Y(_023_)
  );
  NOT _320_ (
    .A(clk),
    .Y(_024_)
  );
  NOT _321_ (
    .A(clk),
    .Y(_025_)
  );
  NOT _322_ (
    .A(clk),
    .Y(_026_)
  );
  NOT _323_ (
    .A(clk),
    .Y(_027_)
  );
  NOT _324_ (
    .A(clk),
    .Y(_028_)
  );
  NOT _325_ (
    .A(clk),
    .Y(_029_)
  );
  NOT _326_ (
    .A(clk),
    .Y(_030_)
  );
  NOT _327_ (
    .A(clk),
    .Y(_031_)
  );
  NOT _328_ (
    .A(clk),
    .Y(_032_)
  );
  NOT _329_ (
    .A(clk),
    .Y(_033_)
  );
  NOT _330_ (
    .A(clk),
    .Y(_034_)
  );
  NOT _331_ (
    .A(clk),
    .Y(_035_)
  );
  NOT _332_ (
    .A(clk),
    .Y(_036_)
  );
  NOT _333_ (
    .A(clk),
    .Y(_037_)
  );
  NOT _334_ (
    .A(clk),
    .Y(_038_)
  );
  NOT _335_ (
    .A(clk),
    .Y(_039_)
  );
  NOT _336_ (
    .A(clk),
    .Y(_040_)
  );
  NOT _337_ (
    .A(clk),
    .Y(_041_)
  );
  NOT _338_ (
    .A(clk),
    .Y(_042_)
  );
  NOT _339_ (
    .A(clk),
    .Y(_043_)
  );
  NOT _340_ (
    .A(clk),
    .Y(_044_)
  );
  NOT _341_ (
    .A(CanalMedio[2]),
    .Y(_045_)
  );
  NOT _342_ (
    .A(CanalMedio[3]),
    .Y(_046_)
  );
  NOT _343_ (
    .A(CanalMedio[4]),
    .Y(_047_)
  );
  NOT _344_ (
    .A(CanalMedio[5]),
    .Y(_048_)
  );
  NOT _345_ (
    .A(CanalMedio[6]),
    .Y(_049_)
  );
  NOT _346_ (
    .A(CanalMedio[7]),
    .Y(_050_)
  );
  NOT _347_ (
    .A(state[3]),
    .Y(_051_)
  );
  NOT _348_ (
    .A(CanalMedio[8]),
    .Y(_052_)
  );
  NOT _349_ (
    .A(CanalMedio[9]),
    .Y(_053_)
  );
  NOT _350_ (
    .A(P0[0]),
    .Y(_054_)
  );
  NOT _351_ (
    .A(P0[1]),
    .Y(_055_)
  );
  NOT _352_ (
    .A(P0[2]),
    .Y(_056_)
  );
  NOT _353_ (
    .A(P0[3]),
    .Y(_057_)
  );
  NOT _354_ (
    .A(P0[4]),
    .Y(_058_)
  );
  NOT _355_ (
    .A(P0[5]),
    .Y(_059_)
  );
  NOT _356_ (
    .A(P0[6]),
    .Y(_060_)
  );
  NOT _357_ (
    .A(P0[7]),
    .Y(_061_)
  );
  NOT _358_ (
    .A(P0[8]),
    .Y(_062_)
  );
  NOT _359_ (
    .A(P0[9]),
    .Y(_063_)
  );
  NOT _360_ (
    .A(P2[0]),
    .Y(_064_)
  );
  NOT _361_ (
    .A(P2[1]),
    .Y(_065_)
  );
  NOT _362_ (
    .A(P2[2]),
    .Y(_066_)
  );
  NOT _363_ (
    .A(P2[3]),
    .Y(_067_)
  );
  NOT _364_ (
    .A(P2[4]),
    .Y(_068_)
  );
  NOT _365_ (
    .A(P2[5]),
    .Y(_069_)
  );
  NOT _366_ (
    .A(P2[6]),
    .Y(_070_)
  );
  NOT _367_ (
    .A(P2[8]),
    .Y(_071_)
  );
  NOT _368_ (
    .A(P3[7]),
    .Y(_072_)
  );
  NOT _369_ (
    .A(P3[9]),
    .Y(_073_)
  );
  NOT _370_ (
    .A(CanalMedio[0]),
    .Y(_074_)
  );
  NOT _371_ (
    .A(CanalMedio[1]),
    .Y(_075_)
  );
  NOT _372_ (
    .A(clk),
    .Y(_005_)
  );
  NOT _373_ (
    .A(state[0]),
    .Y(_076_)
  );
  NOR _374_ (
    .A(state[1]),
    .B(state[2]),
    .Y(_077_)
  );
  NOT _375_ (
    .A(_077_),
    .Y(_078_)
  );
  NOR _376_ (
    .A(state[3]),
    .B(_076_),
    .Y(_079_)
  );
  NAND _377_ (
    .A(_051_),
    .B(state[0]),
    .Y(_080_)
  );
  NOR _378_ (
    .A(_078_),
    .B(_080_),
    .Y(_081_)
  );
  NAND _379_ (
    .A(_077_),
    .B(_079_),
    .Y(_082_)
  );
  NOR _380_ (
    .A(_052_),
    .B(_081_),
    .Y(_083_)
  );
  NAND _381_ (
    .A(_053_),
    .B(_083_),
    .Y(_084_)
  );
  NOT _382_ (
    .A(_084_),
    .Y(_002_[8])
  );
  NOR _383_ (
    .A(_074_),
    .B(_084_),
    .Y(_002_[0])
  );
  NOR _384_ (
    .A(_075_),
    .B(_084_),
    .Y(_002_[1])
  );
  NOR _385_ (
    .A(_045_),
    .B(_084_),
    .Y(_002_[2])
  );
  NOR _386_ (
    .A(_046_),
    .B(_084_),
    .Y(_002_[3])
  );
  NOR _387_ (
    .A(_047_),
    .B(_084_),
    .Y(_002_[4])
  );
  NOR _388_ (
    .A(_048_),
    .B(_084_),
    .Y(_002_[5])
  );
  NOR _389_ (
    .A(_049_),
    .B(_084_),
    .Y(_002_[6])
  );
  NOR _390_ (
    .A(_050_),
    .B(_084_),
    .Y(_002_[7])
  );
  NAND _391_ (
    .A(CanalMedio[9]),
    .B(_083_),
    .Y(_085_)
  );
  NOT _392_ (
    .A(_085_),
    .Y(_004_[8])
  );
  NOR _393_ (
    .A(_074_),
    .B(_085_),
    .Y(_004_[0])
  );
  NOR _394_ (
    .A(_075_),
    .B(_085_),
    .Y(_004_[1])
  );
  NOR _395_ (
    .A(_045_),
    .B(_085_),
    .Y(_004_[2])
  );
  NOR _396_ (
    .A(_046_),
    .B(_085_),
    .Y(_004_[3])
  );
  NOR _397_ (
    .A(_047_),
    .B(_085_),
    .Y(_004_[4])
  );
  NOR _398_ (
    .A(_048_),
    .B(_085_),
    .Y(_004_[5])
  );
  NOR _399_ (
    .A(_049_),
    .B(_085_),
    .Y(_004_[6])
  );
  NOR _400_ (
    .A(_050_),
    .B(_085_),
    .Y(_004_[7])
  );
  NOR _401_ (
    .A(CanalMedio[8]),
    .B(_053_),
    .Y(_086_)
  );
  NAND _402_ (
    .A(_082_),
    .B(_086_),
    .Y(_087_)
  );
  NOT _403_ (
    .A(_087_),
    .Y(_003_[9])
  );
  NOR _404_ (
    .A(_074_),
    .B(_087_),
    .Y(_003_[0])
  );
  NOR _405_ (
    .A(_075_),
    .B(_087_),
    .Y(_003_[1])
  );
  NOR _406_ (
    .A(_045_),
    .B(_087_),
    .Y(_003_[2])
  );
  NOR _407_ (
    .A(_046_),
    .B(_087_),
    .Y(_003_[3])
  );
  NOR _408_ (
    .A(_047_),
    .B(_087_),
    .Y(_003_[4])
  );
  NOR _409_ (
    .A(_048_),
    .B(_087_),
    .Y(_003_[5])
  );
  NOR _410_ (
    .A(_049_),
    .B(_087_),
    .Y(_003_[6])
  );
  NOR _411_ (
    .A(_050_),
    .B(_087_),
    .Y(_003_[7])
  );
  NOR _412_ (
    .A(CanalMedio[8]),
    .B(CanalMedio[9]),
    .Y(_088_)
  );
  NAND _413_ (
    .A(CanalMedio[0]),
    .B(_088_),
    .Y(_089_)
  );
  NOR _414_ (
    .A(_081_),
    .B(_089_),
    .Y(_001_[0])
  );
  NAND _415_ (
    .A(CanalMedio[1]),
    .B(_088_),
    .Y(_090_)
  );
  NOR _416_ (
    .A(_081_),
    .B(_090_),
    .Y(_001_[1])
  );
  NAND _417_ (
    .A(CanalMedio[2]),
    .B(_088_),
    .Y(_091_)
  );
  NOR _418_ (
    .A(_081_),
    .B(_091_),
    .Y(_001_[2])
  );
  NAND _419_ (
    .A(CanalMedio[3]),
    .B(_088_),
    .Y(_092_)
  );
  NOR _420_ (
    .A(_081_),
    .B(_092_),
    .Y(_001_[3])
  );
  NAND _421_ (
    .A(CanalMedio[4]),
    .B(_088_),
    .Y(_093_)
  );
  NOR _422_ (
    .A(_081_),
    .B(_093_),
    .Y(_001_[4])
  );
  NAND _423_ (
    .A(CanalMedio[5]),
    .B(_088_),
    .Y(_094_)
  );
  NOR _424_ (
    .A(_081_),
    .B(_094_),
    .Y(_001_[5])
  );
  NAND _425_ (
    .A(CanalMedio[6]),
    .B(_088_),
    .Y(_095_)
  );
  NOR _426_ (
    .A(_081_),
    .B(_095_),
    .Y(_001_[6])
  );
  NAND _427_ (
    .A(CanalMedio[7]),
    .B(_088_),
    .Y(_096_)
  );
  NOR _428_ (
    .A(_081_),
    .B(_096_),
    .Y(_001_[7])
  );
  NOR _429_ (
    .A(P3[6]),
    .B(P3[7]),
    .Y(_097_)
  );
  NOR _430_ (
    .A(P3[8]),
    .B(P3[9]),
    .Y(_098_)
  );
  NAND _431_ (
    .A(_097_),
    .B(_098_),
    .Y(_099_)
  );
  NOR _432_ (
    .A(P3[0]),
    .B(P3[1]),
    .Y(_100_)
  );
  NOR _433_ (
    .A(P3[3]),
    .B(P3[4]),
    .Y(_101_)
  );
  NOR _434_ (
    .A(P3[2]),
    .B(P3[5]),
    .Y(_102_)
  );
  NAND _435_ (
    .A(_100_),
    .B(_102_),
    .Y(_103_)
  );
  NOR _436_ (
    .A(_099_),
    .B(_103_),
    .Y(_104_)
  );
  NAND _437_ (
    .A(_101_),
    .B(_104_),
    .Y(_105_)
  );
  NOT _438_ (
    .A(_105_),
    .Y(_106_)
  );
  NOR _439_ (
    .A(P2[6]),
    .B(P2[7]),
    .Y(_107_)
  );
  NOR _440_ (
    .A(P2[8]),
    .B(P2[9]),
    .Y(_108_)
  );
  NAND _441_ (
    .A(_107_),
    .B(_108_),
    .Y(_109_)
  );
  NOR _442_ (
    .A(P2[0]),
    .B(P2[1]),
    .Y(_110_)
  );
  NAND _443_ (
    .A(_066_),
    .B(_067_),
    .Y(_111_)
  );
  NAND _444_ (
    .A(_068_),
    .B(_069_),
    .Y(_112_)
  );
  NOR _445_ (
    .A(_111_),
    .B(_112_),
    .Y(_113_)
  );
  NAND _446_ (
    .A(_110_),
    .B(_113_),
    .Y(_114_)
  );
  NOR _447_ (
    .A(_109_),
    .B(_114_),
    .Y(_115_)
  );
  NAND _448_ (
    .A(_106_),
    .B(_115_),
    .Y(_116_)
  );
  NOR _449_ (
    .A(P1[6]),
    .B(P1[7]),
    .Y(_117_)
  );
  NOR _450_ (
    .A(P1[8]),
    .B(P1[9]),
    .Y(_118_)
  );
  NAND _451_ (
    .A(_117_),
    .B(_118_),
    .Y(_119_)
  );
  NOR _452_ (
    .A(P1[0]),
    .B(P1[1]),
    .Y(_120_)
  );
  NOR _453_ (
    .A(P1[3]),
    .B(P1[4]),
    .Y(_121_)
  );
  NOR _454_ (
    .A(P1[2]),
    .B(P1[5]),
    .Y(_122_)
  );
  NAND _455_ (
    .A(_120_),
    .B(_122_),
    .Y(_123_)
  );
  NOR _456_ (
    .A(_119_),
    .B(_123_),
    .Y(_124_)
  );
  NAND _457_ (
    .A(_121_),
    .B(_124_),
    .Y(_125_)
  );
  NOT _458_ (
    .A(_125_),
    .Y(_126_)
  );
  NOR _459_ (
    .A(P0[6]),
    .B(P0[7]),
    .Y(_127_)
  );
  NOR _460_ (
    .A(P0[8]),
    .B(P0[9]),
    .Y(_128_)
  );
  NAND _461_ (
    .A(_127_),
    .B(_128_),
    .Y(_129_)
  );
  NOR _462_ (
    .A(P0[0]),
    .B(P0[1]),
    .Y(_130_)
  );
  NAND _463_ (
    .A(_056_),
    .B(_057_),
    .Y(_131_)
  );
  NAND _464_ (
    .A(_058_),
    .B(_059_),
    .Y(_132_)
  );
  NOR _465_ (
    .A(_131_),
    .B(_132_),
    .Y(_133_)
  );
  NAND _466_ (
    .A(_130_),
    .B(_133_),
    .Y(_134_)
  );
  NOR _467_ (
    .A(_129_),
    .B(_134_),
    .Y(_135_)
  );
  NAND _468_ (
    .A(_126_),
    .B(_135_),
    .Y(_136_)
  );
  NOR _469_ (
    .A(_116_),
    .B(_136_),
    .Y(_137_)
  );
  NOT _470_ (
    .A(_137_),
    .Y(_138_)
  );
  NAND _471_ (
    .A(_082_),
    .B(_138_),
    .Y(_139_)
  );
  NAND _472_ (
    .A(CanalMedio[0]),
    .B(_137_),
    .Y(_140_)
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _473_ (
    .C(_005_),
    .D(_001_[0]),
    .Q(Out0[0])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _474_ (
    .C(_006_),
    .D(_001_[1]),
    .Q(Out0[1])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _475_ (
    .C(_007_),
    .D(_001_[2]),
    .Q(Out0[2])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _476_ (
    .C(_008_),
    .D(_001_[3]),
    .Q(Out0[3])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _477_ (
    .C(_009_),
    .D(_001_[4]),
    .Q(Out0[4])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _478_ (
    .C(_010_),
    .D(_001_[5]),
    .Q(Out0[5])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _479_ (
    .C(_011_),
    .D(_001_[6]),
    .Q(Out0[6])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _480_ (
    .C(_012_),
    .D(_001_[7]),
    .Q(Out0[7])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _481_ (
    .C(_013_),
    .D(1'h0),
    .Q(Out0[8])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _482_ (
    .C(_014_),
    .D(1'h0),
    .Q(Out0[9])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _483_ (
    .C(_015_),
    .D(_002_[0]),
    .Q(Out1[0])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _484_ (
    .C(_016_),
    .D(_002_[1]),
    .Q(Out1[1])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _485_ (
    .C(_017_),
    .D(_002_[2]),
    .Q(Out1[2])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _486_ (
    .C(_018_),
    .D(_002_[3]),
    .Q(Out1[3])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _487_ (
    .C(_019_),
    .D(_002_[4]),
    .Q(Out1[4])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _488_ (
    .C(_020_),
    .D(_002_[5]),
    .Q(Out1[5])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _489_ (
    .C(_021_),
    .D(_002_[6]),
    .Q(Out1[6])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _490_ (
    .C(_022_),
    .D(_002_[7]),
    .Q(Out1[7])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _491_ (
    .C(_023_),
    .D(_002_[8]),
    .Q(Out1[8])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _492_ (
    .C(_024_),
    .D(1'h0),
    .Q(Out1[9])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _493_ (
    .C(_025_),
    .D(_003_[0]),
    .Q(Out2[0])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _494_ (
    .C(_026_),
    .D(_003_[1]),
    .Q(Out2[1])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _495_ (
    .C(_027_),
    .D(_003_[2]),
    .Q(Out2[2])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _496_ (
    .C(_028_),
    .D(_003_[3]),
    .Q(Out2[3])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _497_ (
    .C(_029_),
    .D(_003_[4]),
    .Q(Out2[4])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _498_ (
    .C(_030_),
    .D(_003_[5]),
    .Q(Out2[5])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _499_ (
    .C(_031_),
    .D(_003_[6]),
    .Q(Out2[6])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _500_ (
    .C(_032_),
    .D(_003_[7]),
    .Q(Out2[7])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _501_ (
    .C(_033_),
    .D(1'h0),
    .Q(Out2[8])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _502_ (
    .C(_034_),
    .D(_003_[9]),
    .Q(Out2[9])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _503_ (
    .C(_035_),
    .D(_004_[0]),
    .Q(Out3[0])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _504_ (
    .C(_036_),
    .D(_004_[1]),
    .Q(Out3[1])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _505_ (
    .C(_037_),
    .D(_004_[2]),
    .Q(Out3[2])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _506_ (
    .C(_038_),
    .D(_004_[3]),
    .Q(Out3[3])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _507_ (
    .C(_039_),
    .D(_004_[4]),
    .Q(Out3[4])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _508_ (
    .C(_040_),
    .D(_004_[5]),
    .Q(Out3[5])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _509_ (
    .C(_041_),
    .D(_004_[6]),
    .Q(Out3[6])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _510_ (
    .C(_042_),
    .D(_004_[7]),
    .Q(Out3[7])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _511_ (
    .C(_043_),
    .D(_004_[8]),
    .Q(Out3[8])
  );
  (* src = "MUX_estruct.v:56" *)
  DFF _512_ (
    .C(_044_),
    .D(_004_[9]),
    .Q(Out3[9])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _513_ (
    .C(clk),
    .D(_000_[0]),
    .Q(CanalMedio[0])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _514_ (
    .C(clk),
    .D(_000_[1]),
    .Q(CanalMedio[1])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _515_ (
    .C(clk),
    .D(_000_[2]),
    .Q(CanalMedio[2])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _516_ (
    .C(clk),
    .D(_000_[3]),
    .Q(CanalMedio[3])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _517_ (
    .C(clk),
    .D(_000_[4]),
    .Q(CanalMedio[4])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _518_ (
    .C(clk),
    .D(_000_[5]),
    .Q(CanalMedio[5])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _519_ (
    .C(clk),
    .D(_000_[6]),
    .Q(CanalMedio[6])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _520_ (
    .C(clk),
    .D(_000_[7]),
    .Q(CanalMedio[7])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _521_ (
    .C(clk),
    .D(_000_[8]),
    .Q(CanalMedio[8])
  );
  (* src = "MUX_estruct.v:13" *)
  DFF _522_ (
    .C(clk),
    .D(_000_[9]),
    .Q(CanalMedio[9])
  );
  assign _001_[9:8] = 2'h0;
  assign _002_[9] = 1'h0;
  assign _003_[8] = 1'h0;
endmodule