<'
type pkt_result_t: [PASS, FAIL];
type pkt_features: [WRITE_ALL, READ_ALL, NONE];
     
unit pkt_mon_u like pkt_phy_u {
     
  !pkt: pkt_operation;
  !result_kind: pkt_result_t;
  !features: pkt_features;
  event clock_e;
  event pkt_detected_e;
  event wr_signal;
  event rd_signal;
  event op_signal;
  
  watch_bus() @op_signal is {};
      
  reference_model() @op_signal is {};
  
  read_memory() is {};
  
  run() is also {
    read_memory();
    start watch_bus();  
  };

};
'>
