module TopModule (clk,
    rst,
    an,
    seg);
 input clk;
 input rst;
 output [7:0] an;
 output [6:0] seg;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
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
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire \counter.count[0] ;
 wire \counter.count[1] ;
 wire \counter.count[2] ;
 wire \counter.count[3] ;
 wire \counter.one_second_counter[0] ;
 wire \counter.one_second_counter[10] ;
 wire \counter.one_second_counter[11] ;
 wire \counter.one_second_counter[12] ;
 wire \counter.one_second_counter[13] ;
 wire \counter.one_second_counter[14] ;
 wire \counter.one_second_counter[15] ;
 wire \counter.one_second_counter[16] ;
 wire \counter.one_second_counter[17] ;
 wire \counter.one_second_counter[18] ;
 wire \counter.one_second_counter[19] ;
 wire \counter.one_second_counter[1] ;
 wire \counter.one_second_counter[20] ;
 wire \counter.one_second_counter[21] ;
 wire \counter.one_second_counter[22] ;
 wire \counter.one_second_counter[23] ;
 wire \counter.one_second_counter[24] ;
 wire \counter.one_second_counter[25] ;
 wire \counter.one_second_counter[26] ;
 wire \counter.one_second_counter[2] ;
 wire \counter.one_second_counter[3] ;
 wire \counter.one_second_counter[4] ;
 wire \counter.one_second_counter[5] ;
 wire \counter.one_second_counter[6] ;
 wire \counter.one_second_counter[7] ;
 wire \counter.one_second_counter[8] ;
 wire \counter.one_second_counter[9] ;
 wire \counter.one_second_enable ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__and3_1 _158_ (.A(\counter.one_second_enable ),
    .B(\counter.count[1] ),
    .C(\counter.count[0] ),
    .X(_064_));
 sky130_fd_sc_hd__and2_1 _159_ (.A(\counter.count[2] ),
    .B(_064_),
    .X(_065_));
 sky130_fd_sc_hd__xor2_1 _160_ (.A(\counter.count[3] ),
    .B(_065_),
    .X(_063_));
 sky130_fd_sc_hd__nor3_2 _161_ (.A(\counter.count[3] ),
    .B(\counter.count[1] ),
    .C(\counter.count[0] ),
    .Y(_066_));
 sky130_fd_sc_hd__and2_1 _162_ (.A(\counter.count[2] ),
    .B(_066_),
    .X(_067_));
 sky130_fd_sc_hd__nor2_1 _163_ (.A(\counter.count[2] ),
    .B(_064_),
    .Y(_068_));
 sky130_fd_sc_hd__a211oi_1 _164_ (.A1(\counter.one_second_enable ),
    .A2(_067_),
    .B1(_068_),
    .C1(_065_),
    .Y(_062_));
 sky130_fd_sc_hd__a21oi_1 _165_ (.A1(\counter.one_second_enable ),
    .A2(\counter.count[0] ),
    .B1(\counter.count[1] ),
    .Y(_069_));
 sky130_fd_sc_hd__nor2_1 _166_ (.A(_064_),
    .B(_069_),
    .Y(_061_));
 sky130_fd_sc_hd__a21oi_1 _167_ (.A1(\counter.one_second_enable ),
    .A2(\counter.count[0] ),
    .B1(_067_),
    .Y(_070_));
 sky130_fd_sc_hd__o21a_1 _168_ (.A1(\counter.one_second_enable ),
    .A2(\counter.count[0] ),
    .B1(_070_),
    .X(_060_));
 sky130_fd_sc_hd__inv_2 _169_ (.A(\counter.one_second_counter[25] ),
    .Y(_071_));
 sky130_fd_sc_hd__a21o_1 _170_ (.A1(\counter.one_second_counter[18] ),
    .A2(\counter.one_second_counter[17] ),
    .B1(\counter.one_second_counter[19] ),
    .X(_072_));
 sky130_fd_sc_hd__and4_4 _171_ (.A(\counter.one_second_counter[3] ),
    .B(\counter.one_second_counter[2] ),
    .C(\counter.one_second_counter[1] ),
    .D(\counter.one_second_counter[0] ),
    .X(_073_));
 sky130_fd_sc_hd__and4_1 _172_ (.A(\counter.one_second_counter[7] ),
    .B(\counter.one_second_counter[6] ),
    .C(\counter.one_second_counter[5] ),
    .D(\counter.one_second_counter[4] ),
    .X(_074_));
 sky130_fd_sc_hd__and2_1 _173_ (.A(_073_),
    .B(_074_),
    .X(_075_));
 sky130_fd_sc_hd__and4_1 _174_ (.A(\counter.one_second_counter[15] ),
    .B(\counter.one_second_counter[14] ),
    .C(\counter.one_second_counter[12] ),
    .D(\counter.one_second_counter[13] ),
    .X(_076_));
 sky130_fd_sc_hd__or4_1 _175_ (.A(\counter.one_second_counter[10] ),
    .B(\counter.one_second_counter[11] ),
    .C(\counter.one_second_counter[9] ),
    .D(_076_),
    .X(_077_));
 sky130_fd_sc_hd__and4b_1 _176_ (.A_N(\counter.one_second_counter[19] ),
    .B(\counter.one_second_counter[13] ),
    .C(\counter.one_second_counter[14] ),
    .D(\counter.one_second_counter[15] ),
    .X(_078_));
 sky130_fd_sc_hd__and4b_1 _177_ (.A_N(\counter.one_second_counter[17] ),
    .B(\counter.one_second_counter[16] ),
    .C(_078_),
    .D(\counter.one_second_counter[18] ),
    .X(_079_));
 sky130_fd_sc_hd__o31a_1 _178_ (.A1(\counter.one_second_counter[8] ),
    .A2(_075_),
    .A3(_077_),
    .B1(_079_),
    .X(_080_));
 sky130_fd_sc_hd__and4_2 _179_ (.A(\counter.one_second_counter[23] ),
    .B(\counter.one_second_counter[22] ),
    .C(\counter.one_second_counter[21] ),
    .D(\counter.one_second_counter[20] ),
    .X(_081_));
 sky130_fd_sc_hd__o211ai_4 _180_ (.A1(_072_),
    .A2(_080_),
    .B1(_081_),
    .C1(\counter.one_second_counter[24] ),
    .Y(_082_));
 sky130_fd_sc_hd__a21bo_4 _181_ (.A1(_071_),
    .A2(_082_),
    .B1_N(\counter.one_second_counter[26] ),
    .X(_083_));
 sky130_fd_sc_hd__clkinv_4 _182_ (.A(_083_),
    .Y(_000_));
 sky130_fd_sc_hd__nor2_1 _183_ (.A(\counter.one_second_counter[0] ),
    .B(_000_),
    .Y(_001_));
 sky130_fd_sc_hd__nand2_1 _184_ (.A(\counter.one_second_counter[1] ),
    .B(\counter.one_second_counter[0] ),
    .Y(_084_));
 sky130_fd_sc_hd__or2_1 _185_ (.A(\counter.one_second_counter[1] ),
    .B(\counter.one_second_counter[0] ),
    .X(_085_));
 sky130_fd_sc_hd__and3_1 _186_ (.A(_084_),
    .B(_083_),
    .C(_085_),
    .X(_086_));
 sky130_fd_sc_hd__clkbuf_1 _187_ (.A(_086_),
    .X(_012_));
 sky130_fd_sc_hd__nand3_1 _188_ (.A(\counter.one_second_counter[2] ),
    .B(\counter.one_second_counter[1] ),
    .C(\counter.one_second_counter[0] ),
    .Y(_087_));
 sky130_fd_sc_hd__a21o_1 _189_ (.A1(\counter.one_second_counter[1] ),
    .A2(\counter.one_second_counter[0] ),
    .B1(\counter.one_second_counter[2] ),
    .X(_088_));
 sky130_fd_sc_hd__and3_1 _190_ (.A(_087_),
    .B(_083_),
    .C(_088_),
    .X(_089_));
 sky130_fd_sc_hd__clkbuf_1 _191_ (.A(_089_),
    .X(_020_));
 sky130_fd_sc_hd__a31o_1 _192_ (.A1(\counter.one_second_counter[2] ),
    .A2(\counter.one_second_counter[1] ),
    .A3(\counter.one_second_counter[0] ),
    .B1(\counter.one_second_counter[3] ),
    .X(_090_));
 sky130_fd_sc_hd__and3b_1 _193_ (.A_N(_073_),
    .B(_083_),
    .C(_090_),
    .X(_091_));
 sky130_fd_sc_hd__buf_1 _194_ (.A(_091_),
    .X(_021_));
 sky130_fd_sc_hd__buf_2 _195_ (.A(_083_),
    .X(_092_));
 sky130_fd_sc_hd__nand2_1 _196_ (.A(\counter.one_second_counter[4] ),
    .B(_073_),
    .Y(_093_));
 sky130_fd_sc_hd__or2_1 _197_ (.A(\counter.one_second_counter[4] ),
    .B(_073_),
    .X(_094_));
 sky130_fd_sc_hd__and3_1 _198_ (.A(_092_),
    .B(_093_),
    .C(_094_),
    .X(_095_));
 sky130_fd_sc_hd__clkbuf_1 _199_ (.A(_095_),
    .X(_022_));
 sky130_fd_sc_hd__a21oi_1 _200_ (.A1(\counter.one_second_counter[4] ),
    .A2(_073_),
    .B1(\counter.one_second_counter[5] ),
    .Y(_096_));
 sky130_fd_sc_hd__and3_1 _201_ (.A(\counter.one_second_counter[5] ),
    .B(\counter.one_second_counter[4] ),
    .C(_073_),
    .X(_097_));
 sky130_fd_sc_hd__nor3_1 _202_ (.A(_000_),
    .B(_096_),
    .C(_097_),
    .Y(_023_));
 sky130_fd_sc_hd__or2_1 _203_ (.A(\counter.one_second_counter[6] ),
    .B(_097_),
    .X(_098_));
 sky130_fd_sc_hd__nand2_1 _204_ (.A(\counter.one_second_counter[6] ),
    .B(_097_),
    .Y(_099_));
 sky130_fd_sc_hd__and3_1 _205_ (.A(_092_),
    .B(_098_),
    .C(_099_),
    .X(_100_));
 sky130_fd_sc_hd__clkbuf_1 _206_ (.A(_100_),
    .X(_024_));
 sky130_fd_sc_hd__inv_2 _207_ (.A(\counter.one_second_counter[7] ),
    .Y(_101_));
 sky130_fd_sc_hd__a211oi_1 _208_ (.A1(_101_),
    .A2(_099_),
    .B1(_000_),
    .C1(_075_),
    .Y(_025_));
 sky130_fd_sc_hd__or2_1 _209_ (.A(\counter.one_second_counter[8] ),
    .B(_075_),
    .X(_102_));
 sky130_fd_sc_hd__nand2_1 _210_ (.A(\counter.one_second_counter[8] ),
    .B(_075_),
    .Y(_103_));
 sky130_fd_sc_hd__and3_1 _211_ (.A(_102_),
    .B(_083_),
    .C(_103_),
    .X(_104_));
 sky130_fd_sc_hd__clkbuf_1 _212_ (.A(_104_),
    .X(_026_));
 sky130_fd_sc_hd__a31o_1 _213_ (.A1(\counter.one_second_counter[8] ),
    .A2(_073_),
    .A3(_074_),
    .B1(\counter.one_second_counter[9] ),
    .X(_105_));
 sky130_fd_sc_hd__and4_2 _214_ (.A(\counter.one_second_counter[9] ),
    .B(\counter.one_second_counter[8] ),
    .C(_073_),
    .D(_074_),
    .X(_106_));
 sky130_fd_sc_hd__inv_2 _215_ (.A(_106_),
    .Y(_107_));
 sky130_fd_sc_hd__and3_1 _216_ (.A(_092_),
    .B(_105_),
    .C(_107_),
    .X(_108_));
 sky130_fd_sc_hd__buf_1 _217_ (.A(_108_),
    .X(_027_));
 sky130_fd_sc_hd__or2_1 _218_ (.A(\counter.one_second_counter[10] ),
    .B(_106_),
    .X(_109_));
 sky130_fd_sc_hd__nand2_1 _219_ (.A(\counter.one_second_counter[10] ),
    .B(_106_),
    .Y(_110_));
 sky130_fd_sc_hd__and3_1 _220_ (.A(_092_),
    .B(_109_),
    .C(_110_),
    .X(_111_));
 sky130_fd_sc_hd__buf_1 _221_ (.A(_111_),
    .X(_002_));
 sky130_fd_sc_hd__a21o_1 _222_ (.A1(\counter.one_second_counter[10] ),
    .A2(_106_),
    .B1(\counter.one_second_counter[11] ),
    .X(_112_));
 sky130_fd_sc_hd__and3_2 _223_ (.A(\counter.one_second_counter[10] ),
    .B(\counter.one_second_counter[11] ),
    .C(_106_),
    .X(_113_));
 sky130_fd_sc_hd__inv_2 _224_ (.A(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__and3_1 _225_ (.A(_092_),
    .B(_112_),
    .C(_114_),
    .X(_115_));
 sky130_fd_sc_hd__buf_1 _226_ (.A(_115_),
    .X(_003_));
 sky130_fd_sc_hd__nor2_1 _227_ (.A(\counter.one_second_counter[12] ),
    .B(_113_),
    .Y(_116_));
 sky130_fd_sc_hd__and2_1 _228_ (.A(\counter.one_second_counter[12] ),
    .B(_113_),
    .X(_117_));
 sky130_fd_sc_hd__nor3_1 _229_ (.A(_000_),
    .B(_116_),
    .C(_117_),
    .Y(_004_));
 sky130_fd_sc_hd__or2_1 _230_ (.A(\counter.one_second_counter[13] ),
    .B(_117_),
    .X(_118_));
 sky130_fd_sc_hd__nand2_1 _231_ (.A(\counter.one_second_counter[13] ),
    .B(_117_),
    .Y(_119_));
 sky130_fd_sc_hd__and3_1 _232_ (.A(_092_),
    .B(_118_),
    .C(_119_),
    .X(_120_));
 sky130_fd_sc_hd__clkbuf_1 _233_ (.A(_120_),
    .X(_005_));
 sky130_fd_sc_hd__a31o_1 _234_ (.A1(\counter.one_second_counter[12] ),
    .A2(\counter.one_second_counter[13] ),
    .A3(_113_),
    .B1(\counter.one_second_counter[14] ),
    .X(_121_));
 sky130_fd_sc_hd__nand3_1 _235_ (.A(\counter.one_second_counter[14] ),
    .B(\counter.one_second_counter[13] ),
    .C(_117_),
    .Y(_122_));
 sky130_fd_sc_hd__and3_1 _236_ (.A(_092_),
    .B(_121_),
    .C(_122_),
    .X(_123_));
 sky130_fd_sc_hd__buf_1 _237_ (.A(_123_),
    .X(_006_));
 sky130_fd_sc_hd__inv_2 _238_ (.A(\counter.one_second_counter[15] ),
    .Y(_124_));
 sky130_fd_sc_hd__and4_1 _239_ (.A(\counter.one_second_counter[10] ),
    .B(\counter.one_second_counter[11] ),
    .C(_076_),
    .D(_106_),
    .X(_125_));
 sky130_fd_sc_hd__clkbuf_4 _240_ (.A(_125_),
    .X(_126_));
 sky130_fd_sc_hd__a211oi_1 _241_ (.A1(_124_),
    .A2(_122_),
    .B1(_126_),
    .C1(_000_),
    .Y(_007_));
 sky130_fd_sc_hd__or2_1 _242_ (.A(\counter.one_second_counter[16] ),
    .B(_126_),
    .X(_127_));
 sky130_fd_sc_hd__nand2_2 _243_ (.A(\counter.one_second_counter[16] ),
    .B(_126_),
    .Y(_128_));
 sky130_fd_sc_hd__and3_1 _244_ (.A(_083_),
    .B(_127_),
    .C(_128_),
    .X(_129_));
 sky130_fd_sc_hd__clkbuf_1 _245_ (.A(_129_),
    .X(_008_));
 sky130_fd_sc_hd__xor2_1 _246_ (.A(\counter.one_second_counter[17] ),
    .B(_128_),
    .X(_130_));
 sky130_fd_sc_hd__nor2_1 _247_ (.A(_000_),
    .B(_130_),
    .Y(_009_));
 sky130_fd_sc_hd__nand2_1 _248_ (.A(\counter.one_second_counter[18] ),
    .B(\counter.one_second_counter[17] ),
    .Y(_131_));
 sky130_fd_sc_hd__and3_1 _249_ (.A(\counter.one_second_counter[17] ),
    .B(\counter.one_second_counter[16] ),
    .C(_126_),
    .X(_132_));
 sky130_fd_sc_hd__o221a_1 _250_ (.A1(_131_),
    .A2(_128_),
    .B1(_132_),
    .B2(\counter.one_second_counter[18] ),
    .C1(_092_),
    .X(_010_));
 sky130_fd_sc_hd__a41o_1 _251_ (.A1(\counter.one_second_counter[18] ),
    .A2(\counter.one_second_counter[17] ),
    .A3(\counter.one_second_counter[16] ),
    .A4(_126_),
    .B1(\counter.one_second_counter[19] ),
    .X(_133_));
 sky130_fd_sc_hd__and4_1 _252_ (.A(\counter.one_second_counter[19] ),
    .B(\counter.one_second_counter[18] ),
    .C(\counter.one_second_counter[17] ),
    .D(\counter.one_second_counter[16] ),
    .X(_134_));
 sky130_fd_sc_hd__and2_2 _253_ (.A(_126_),
    .B(_134_),
    .X(_135_));
 sky130_fd_sc_hd__inv_2 _254_ (.A(_135_),
    .Y(_136_));
 sky130_fd_sc_hd__and3_1 _255_ (.A(_083_),
    .B(_133_),
    .C(_136_),
    .X(_137_));
 sky130_fd_sc_hd__clkbuf_1 _256_ (.A(_137_),
    .X(_011_));
 sky130_fd_sc_hd__or2_1 _257_ (.A(\counter.one_second_counter[20] ),
    .B(_135_),
    .X(_138_));
 sky130_fd_sc_hd__nand2_1 _258_ (.A(\counter.one_second_counter[20] ),
    .B(_135_),
    .Y(_139_));
 sky130_fd_sc_hd__and3_1 _259_ (.A(_083_),
    .B(_138_),
    .C(_139_),
    .X(_140_));
 sky130_fd_sc_hd__clkbuf_1 _260_ (.A(_140_),
    .X(_013_));
 sky130_fd_sc_hd__inv_2 _261_ (.A(\counter.one_second_counter[21] ),
    .Y(_141_));
 sky130_fd_sc_hd__and4_1 _262_ (.A(\counter.one_second_counter[21] ),
    .B(\counter.one_second_counter[20] ),
    .C(_126_),
    .D(_134_),
    .X(_142_));
 sky130_fd_sc_hd__a211oi_1 _263_ (.A1(_141_),
    .A2(_139_),
    .B1(_142_),
    .C1(_000_),
    .Y(_014_));
 sky130_fd_sc_hd__nor2_1 _264_ (.A(\counter.one_second_counter[22] ),
    .B(_142_),
    .Y(_143_));
 sky130_fd_sc_hd__and2_1 _265_ (.A(\counter.one_second_counter[22] ),
    .B(_142_),
    .X(_144_));
 sky130_fd_sc_hd__nor3_1 _266_ (.A(_000_),
    .B(_143_),
    .C(_144_),
    .Y(_015_));
 sky130_fd_sc_hd__and2_1 _267_ (.A(_081_),
    .B(_134_),
    .X(_145_));
 sky130_fd_sc_hd__nand2_2 _268_ (.A(_126_),
    .B(_145_),
    .Y(_146_));
 sky130_fd_sc_hd__o211a_1 _269_ (.A1(\counter.one_second_counter[23] ),
    .A2(_144_),
    .B1(_146_),
    .C1(_092_),
    .X(_016_));
 sky130_fd_sc_hd__inv_2 _270_ (.A(\counter.one_second_counter[24] ),
    .Y(_147_));
 sky130_fd_sc_hd__xnor2_1 _271_ (.A(_147_),
    .B(_146_),
    .Y(_148_));
 sky130_fd_sc_hd__nor2_1 _272_ (.A(_000_),
    .B(_148_),
    .Y(_017_));
 sky130_fd_sc_hd__a31o_1 _273_ (.A1(\counter.one_second_counter[24] ),
    .A2(_126_),
    .A3(_145_),
    .B1(\counter.one_second_counter[25] ),
    .X(_149_));
 sky130_fd_sc_hd__or3_1 _274_ (.A(_147_),
    .B(_071_),
    .C(_146_),
    .X(_150_));
 sky130_fd_sc_hd__and3_1 _275_ (.A(_083_),
    .B(_149_),
    .C(_150_),
    .X(_151_));
 sky130_fd_sc_hd__buf_1 _276_ (.A(_151_),
    .X(_018_));
 sky130_fd_sc_hd__a2bb2o_1 _277_ (.A1_N(_147_),
    .A2_N(_146_),
    .B1(_082_),
    .B2(_071_),
    .X(_152_));
 sky130_fd_sc_hd__o211a_1 _278_ (.A1(\counter.one_second_counter[26] ),
    .A2(\counter.one_second_counter[25] ),
    .B1(_092_),
    .C1(_152_),
    .X(_019_));
 sky130_fd_sc_hd__nor2_2 _279_ (.A(\counter.count[3] ),
    .B(\counter.count[2] ),
    .Y(_153_));
 sky130_fd_sc_hd__nor2_1 _280_ (.A(_066_),
    .B(_153_),
    .Y(net3));
 sky130_fd_sc_hd__or3_1 _281_ (.A(\counter.count[3] ),
    .B(\counter.count[2] ),
    .C(\counter.count[0] ),
    .X(_154_));
 sky130_fd_sc_hd__buf_1 _282_ (.A(_154_),
    .X(net6));
 sky130_fd_sc_hd__a21boi_1 _283_ (.A1(\counter.count[1] ),
    .A2(_153_),
    .B1_N(net6),
    .Y(net5));
 sky130_fd_sc_hd__a21oi_1 _284_ (.A1(\counter.count[0] ),
    .A2(_153_),
    .B1(_066_),
    .Y(net4));
 sky130_fd_sc_hd__inv_2 _285_ (.A(_066_),
    .Y(net7));
 sky130_fd_sc_hd__a21oi_1 _286_ (.A1(\counter.count[1] ),
    .A2(_153_),
    .B1(_067_),
    .Y(net8));
 sky130_fd_sc_hd__buf_4 _287_ (.A(net1),
    .X(_155_));
 sky130_fd_sc_hd__inv_2 _288_ (.A(_155_),
    .Y(_028_));
 sky130_fd_sc_hd__inv_2 _289_ (.A(_155_),
    .Y(_029_));
 sky130_fd_sc_hd__inv_2 _290_ (.A(_155_),
    .Y(_030_));
 sky130_fd_sc_hd__inv_2 _291_ (.A(_155_),
    .Y(_031_));
 sky130_fd_sc_hd__inv_2 _292_ (.A(_155_),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _293_ (.A(_155_),
    .Y(_033_));
 sky130_fd_sc_hd__inv_2 _294_ (.A(_155_),
    .Y(_034_));
 sky130_fd_sc_hd__inv_2 _295_ (.A(_155_),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _296_ (.A(_155_),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _297_ (.A(_155_),
    .Y(_037_));
 sky130_fd_sc_hd__clkbuf_8 _298_ (.A(net1),
    .X(_156_));
 sky130_fd_sc_hd__inv_2 _299_ (.A(_156_),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _300_ (.A(_156_),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _301_ (.A(_156_),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _302_ (.A(_156_),
    .Y(_041_));
 sky130_fd_sc_hd__inv_2 _303_ (.A(_156_),
    .Y(_042_));
 sky130_fd_sc_hd__inv_2 _304_ (.A(_156_),
    .Y(_043_));
 sky130_fd_sc_hd__inv_2 _305_ (.A(_156_),
    .Y(_044_));
 sky130_fd_sc_hd__inv_2 _306_ (.A(_156_),
    .Y(_045_));
 sky130_fd_sc_hd__inv_2 _307_ (.A(_156_),
    .Y(_046_));
 sky130_fd_sc_hd__inv_2 _308_ (.A(_156_),
    .Y(_047_));
 sky130_fd_sc_hd__buf_4 _309_ (.A(net1),
    .X(_157_));
 sky130_fd_sc_hd__inv_2 _310_ (.A(_157_),
    .Y(_048_));
 sky130_fd_sc_hd__inv_2 _311_ (.A(_157_),
    .Y(_049_));
 sky130_fd_sc_hd__inv_2 _312_ (.A(_157_),
    .Y(_050_));
 sky130_fd_sc_hd__inv_2 _313_ (.A(_157_),
    .Y(_051_));
 sky130_fd_sc_hd__inv_2 _314_ (.A(_157_),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _315_ (.A(_157_),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _316_ (.A(_157_),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _317_ (.A(_157_),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _318_ (.A(_157_),
    .Y(_056_));
 sky130_fd_sc_hd__inv_2 _319_ (.A(_157_),
    .Y(_057_));
 sky130_fd_sc_hd__inv_2 _320_ (.A(net1),
    .Y(_058_));
 sky130_fd_sc_hd__inv_2 _321_ (.A(net1),
    .Y(_059_));
 sky130_fd_sc_hd__dfrtp_4 _322_ (.CLK(clk),
    .D(_000_),
    .RESET_B(_028_),
    .Q(\counter.one_second_enable ));
 sky130_fd_sc_hd__dfrtp_4 _323_ (.CLK(clk),
    .D(_001_),
    .RESET_B(_029_),
    .Q(\counter.one_second_counter[0] ));
 sky130_fd_sc_hd__dfrtp_4 _324_ (.CLK(clk),
    .D(_012_),
    .RESET_B(_030_),
    .Q(\counter.one_second_counter[1] ));
 sky130_fd_sc_hd__dfrtp_2 _325_ (.CLK(clk),
    .D(_020_),
    .RESET_B(_031_),
    .Q(\counter.one_second_counter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _326_ (.CLK(clk),
    .D(_021_),
    .RESET_B(_032_),
    .Q(\counter.one_second_counter[3] ));
 sky130_fd_sc_hd__dfrtp_2 _327_ (.CLK(clk),
    .D(_022_),
    .RESET_B(_033_),
    .Q(\counter.one_second_counter[4] ));
 sky130_fd_sc_hd__dfrtp_1 _328_ (.CLK(clk),
    .D(_023_),
    .RESET_B(_034_),
    .Q(\counter.one_second_counter[5] ));
 sky130_fd_sc_hd__dfrtp_2 _329_ (.CLK(clk),
    .D(_024_),
    .RESET_B(_035_),
    .Q(\counter.one_second_counter[6] ));
 sky130_fd_sc_hd__dfrtp_1 _330_ (.CLK(clk),
    .D(_025_),
    .RESET_B(_036_),
    .Q(\counter.one_second_counter[7] ));
 sky130_fd_sc_hd__dfrtp_2 _331_ (.CLK(clk),
    .D(_026_),
    .RESET_B(_037_),
    .Q(\counter.one_second_counter[8] ));
 sky130_fd_sc_hd__dfrtp_2 _332_ (.CLK(clk),
    .D(_027_),
    .RESET_B(_038_),
    .Q(\counter.one_second_counter[9] ));
 sky130_fd_sc_hd__dfrtp_4 _333_ (.CLK(clk),
    .D(_002_),
    .RESET_B(_039_),
    .Q(\counter.one_second_counter[10] ));
 sky130_fd_sc_hd__dfrtp_2 _334_ (.CLK(clk),
    .D(_003_),
    .RESET_B(_040_),
    .Q(\counter.one_second_counter[11] ));
 sky130_fd_sc_hd__dfrtp_1 _335_ (.CLK(clk),
    .D(_004_),
    .RESET_B(_041_),
    .Q(\counter.one_second_counter[12] ));
 sky130_fd_sc_hd__dfrtp_4 _336_ (.CLK(clk),
    .D(_005_),
    .RESET_B(_042_),
    .Q(\counter.one_second_counter[13] ));
 sky130_fd_sc_hd__dfrtp_2 _337_ (.CLK(clk),
    .D(_006_),
    .RESET_B(_043_),
    .Q(\counter.one_second_counter[14] ));
 sky130_fd_sc_hd__dfrtp_1 _338_ (.CLK(clk),
    .D(_007_),
    .RESET_B(_044_),
    .Q(\counter.one_second_counter[15] ));
 sky130_fd_sc_hd__dfrtp_4 _339_ (.CLK(clk),
    .D(_008_),
    .RESET_B(_045_),
    .Q(\counter.one_second_counter[16] ));
 sky130_fd_sc_hd__dfrtp_4 _340_ (.CLK(clk),
    .D(_009_),
    .RESET_B(_046_),
    .Q(\counter.one_second_counter[17] ));
 sky130_fd_sc_hd__dfrtp_4 _341_ (.CLK(clk),
    .D(_010_),
    .RESET_B(_047_),
    .Q(\counter.one_second_counter[18] ));
 sky130_fd_sc_hd__dfrtp_2 _342_ (.CLK(clk),
    .D(_011_),
    .RESET_B(_048_),
    .Q(\counter.one_second_counter[19] ));
 sky130_fd_sc_hd__dfrtp_2 _343_ (.CLK(clk),
    .D(_013_),
    .RESET_B(_049_),
    .Q(\counter.one_second_counter[20] ));
 sky130_fd_sc_hd__dfrtp_2 _344_ (.CLK(clk),
    .D(_014_),
    .RESET_B(_050_),
    .Q(\counter.one_second_counter[21] ));
 sky130_fd_sc_hd__dfrtp_2 _345_ (.CLK(clk),
    .D(_015_),
    .RESET_B(_051_),
    .Q(\counter.one_second_counter[22] ));
 sky130_fd_sc_hd__dfrtp_1 _346_ (.CLK(clk),
    .D(_016_),
    .RESET_B(_052_),
    .Q(\counter.one_second_counter[23] ));
 sky130_fd_sc_hd__dfrtp_4 _347_ (.CLK(clk),
    .D(_017_),
    .RESET_B(_053_),
    .Q(\counter.one_second_counter[24] ));
 sky130_fd_sc_hd__dfrtp_2 _348_ (.CLK(clk),
    .D(_018_),
    .RESET_B(_054_),
    .Q(\counter.one_second_counter[25] ));
 sky130_fd_sc_hd__dfrtp_1 _349_ (.CLK(clk),
    .D(_019_),
    .RESET_B(_055_),
    .Q(\counter.one_second_counter[26] ));
 sky130_fd_sc_hd__dfrtp_4 _350_ (.CLK(clk),
    .D(_060_),
    .RESET_B(_056_),
    .Q(\counter.count[0] ));
 sky130_fd_sc_hd__dfrtp_4 _351_ (.CLK(clk),
    .D(_061_),
    .RESET_B(_057_),
    .Q(\counter.count[1] ));
 sky130_fd_sc_hd__dfrtp_4 _352_ (.CLK(clk),
    .D(_062_),
    .RESET_B(_058_),
    .Q(\counter.count[2] ));
 sky130_fd_sc_hd__dfrtp_4 _353_ (.CLK(clk),
    .D(_063_),
    .RESET_B(_059_),
    .Q(\counter.count[3] ));
 sky130_fd_sc_hd__conb_1 TopModule_11 (.HI(net11));
 sky130_fd_sc_hd__conb_1 TopModule_12 (.HI(net12));
 sky130_fd_sc_hd__conb_1 TopModule_13 (.HI(net13));
 sky130_fd_sc_hd__conb_1 TopModule_14 (.HI(net14));
 sky130_fd_sc_hd__conb_1 TopModule_15 (.HI(net15));
 sky130_fd_sc_hd__conb_1 TopModule_16 (.HI(net16));
 sky130_fd_sc_hd__conb_1 TopModule_10 (.HI(net10));
 sky130_fd_sc_hd__clkbuf_1 _362_ (.A(net5),
    .X(net2));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_145 ();
 sky130_fd_sc_hd__buf_2 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__buf_1 output2 (.A(net2),
    .X(seg[0]));
 sky130_fd_sc_hd__buf_1 output3 (.A(net3),
    .X(seg[1]));
 sky130_fd_sc_hd__buf_1 output4 (.A(net4),
    .X(seg[2]));
 sky130_fd_sc_hd__buf_1 output5 (.A(net5),
    .X(seg[3]));
 sky130_fd_sc_hd__buf_1 output6 (.A(net6),
    .X(seg[4]));
 sky130_fd_sc_hd__buf_1 output7 (.A(net7),
    .X(seg[5]));
 sky130_fd_sc_hd__buf_1 output8 (.A(net8),
    .X(seg[6]));
 sky130_fd_sc_hd__conb_1 TopModule_9 (.LO(net9));
 assign an[0] = net9;
 assign an[1] = net10;
 assign an[2] = net11;
 assign an[3] = net12;
 assign an[4] = net13;
 assign an[5] = net14;
 assign an[6] = net15;
 assign an[7] = net16;
endmodule
