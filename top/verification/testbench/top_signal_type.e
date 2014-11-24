<'
// -----------------------------------------------------------------------------
// CI Brasil - CT2 Campinas
// Phase II Project Project
// EMC08 - 8 Bit Microcontroller for Automotive Engine Application
// -----------------------------------------------------------------------------
// File Name : top_signal_type.e
// Module Name : top
// Author : Harney Abrahim
// E-mail : diga19@emc08.br
// -----------------------------------------------------------------------------
// Review(s) : 05/10/2010, reviwed by Harney. First Environment version
// -----------------------------------------------------------------------------
// Release History
// Version  Date        Author Description
// 1.0      05-10-2010  Initial version
// -----------------------------------------------------------------------------
// Keywords: top - top module, phy - physical
// -----------------------------------------------------------------------------
// Purpose: This class create the input signals and it constrainst to aply to
// the DUT
// -----------------------------------------------------------------------------
// Parameters
// Parameter name: Range: Description: Default: Units
//
// -----------------------------------------------------------------------------
// Reuse Issues
// External Pins Required: none
// Monitors Required: none
// Drivers Required: none
// Local Functions: post_generate()
// Include Files: none
// Other:
// -----------------------------------------------------------------------------
// Features Tested: none
// -----------------------------------------------------------------------------
// Detailed Test Description: none
// -----------------------------------------------------------------------------

type top_signal_type_kind_t: [RESET, DEFAULT, SEQ_INT_0_high,
SEQ_INT_0_low, SEQ_INT_1_high, SEQ_INT_1_low, SEQ_INT_0_LEVEL, SEQ_INT_0_TRAN, NONE];

struct top_signal_type like any_sequence_item {
   
   top_reset_i: bit;
   
   top_p0_y_i: uint (bits:8);
   top_p1_y_i: uint (bits:8);
   top_p2_y_i: uint (bits:8);
   top_p3_y_i: uint (bits:8); 
   
   top_ea_b_i: bit;
   
   top_pht_i: bit;
   
   // signal type
   pkt_kind: top_signal_type_kind_t;
  
   //////////// INTERRUPT CONTROL ///////////////
   int_0: bit;
   int_1: bit;
   
   //////////////////////////////////////////////
   
   
   keep (pkt_kind != RESET) => top_reset_i == 1;
  
   keep (pkt_kind == DEFAULT) => (top_ea_b_i == 1 && top_pht_i == 0);
   
   keep (pkt_kind == SEQ_INT_0_high || pkt_kind == SEQ_INT_0_low || pkt_kind == SEQ_INT_1_high ||
     pkt_kind == SEQ_INT_1_low || pkt_kind == SEQ_INT_0_LEVEL)  => (top_ea_b_i == 1 && top_pht_i == 0);
   
   post_generate() is also {
      //messagef(LOW, "%d %d %d %d", hit, stay, card, reset); // example
   };
};

'>
