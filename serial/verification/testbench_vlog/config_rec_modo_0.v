

//------------------------ TASK PARA CONFIGURAR A RECEPCAO NO MODO 0 ----------------------------------

task config_rec_modo_0 ;
begin
   @(posedge clock);
   #(PERIOD*2);
//      $display("------------- Starting configuration for reception in mode 0... --------------");
      reset       = 1'b0  ;
      scon7_mode  = 1'b0  ;
      scon4_ren   = 1'b0  ;
      scon0_ri_i  = 1'b0  ;
      p3_0_i      = 1'b0  ;
      PACOTE      = 11'd0 ;
      serial_tx   = 1'b0  ;
      data_sbuf_i = 8'd0  ;
      scon1_ti_i  = 1'b0  ;
      cont_rx_m0  = 0     ;
   
   #(PERIOD*2);
   @(posedge clock);
      reset      = 1'b1  ;
/*      $display("");
      $display("scon7_mode = %b",scon7_mode);
      $display("scon4_ren  = %b",scon4_ren);
      $display("scon0_ri_i = %b",scon0_ri_i);
      $display("p3_0_i     = %b",p3_0_i);
      $display("serial_tx  = %b",serial_tx);
      $display("scon1_ti_i = %b",scon1_ti_i);
      $display("");
      $display("------------------------ Configuration finish ---------------------------------");
      $display("");*/
   
end
endtask
//-----------------------------------------------------------------------------------------------------


