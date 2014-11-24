<'
// -----------------------------------------------------------------------------
// CI Brasil - CT2 Campinas
// Phase II Project Project
// EMC08 - 8 Bit Microcontroller for Automotive Engine Application
// -----------------------------------------------------------------------------
// File Name : core_top_bfm_i_h.e
// Module Name : Core_top
// Author : Dino Casse, Harney Abrahim, Vinicius Amaral
// E-mail : diga8@emc8.core_top, diga19@emc08.core_top, correioamaral@gmail.com
// -----------------------------------------------------------------------------
// Review(s) : 03/09/2010, reviwed by Harney. First Environment version
// -----------------------------------------------------------------------------
// Release History
// Version  Date        Author Description
// 1.0      03-09-2010  Initial version
// 2.0      03-10-2010  Features implemantation - vinicius
// -----------------------------------------------------------------------------
// Keywords: core_top - core finite state machine, phy - physical, 
// bfm - bus functional mode
// -----------------------------------------------------------------------------
// Purpose: This unit will drive the interface signals of the router DUT. 
// It will get an instance of a packet it is to drive from the sequence driver
// -----------------------------------------------------------------------------
// Parameters
// Parameter name: Range: Description: Default: Units
//
// -----------------------------------------------------------------------------
// Reuse Issues
// External Pins Required: none
// Monitors Required: none
// Drivers Required: none
// Local Functions: drive_bus(), get_pkt(), its_done(), send_pkt()
// Include Files: none
// Other:
// -----------------------------------------------------------------------------
// Features Tested: none
// -----------------------------------------------------------------------------
// Detailed Test Description: none
// -----------------------------------------------------------------------------

unit core_top_bfm_i_u like core_top_phy_u {
   // connect the main clock to the bfm through the event clock_e
   event clock_e;            
  
   // function to driver the inputs to the DUT
   drive_bus() @clock_e is {};
   write_rom() is {};

   // get the inputs (packet) generated by the sequence generator
   get_pkt(): core_top_signal_type @clock_e is {};

   // method to advise that the send task was done
   its_done() is {};

   // send the signals (packet) to the DUT
   send_pkt(in_pkt: core_top_signal_type) @clock_e is{};
  
   // initial reset event
   initial_reset() @clock_e is {};
  
   run() is also {
      // here, start the drive_bus() TCM declared above that will run forever and the initial reset
      //out("in run");
      write_rom();
      start drive_bus();
   };
};

'>