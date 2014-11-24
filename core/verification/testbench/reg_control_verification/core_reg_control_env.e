<'
// -----------------------------------------------------------------------------
// CI Brasil - CT2 Campinas
// Phase II Project Project
// EMC08 - 8 Bit Microcontroller for Automotive Engine Application
// -----------------------------------------------------------------------------
// File Name : core_reg_control_env.e
// Module Name : Core_reg_control
// Author : Dino Casse, Harney Abrahim
// E-mail : diga8@emc8.br, diga19@emc08.br
// -----------------------------------------------------------------------------
// Review(s) : 03/09/2010, reviwed by Harney. First Environment version
// -----------------------------------------------------------------------------
// Release History
// Version  Date        Author Description
// 1.0      03-09-2010  Initial version
// -----------------------------------------------------------------------------
// Keywords: core_reg_control - core register control, env - environment
// -----------------------------------------------------------------------------
// Purpose: This class connect the main clock of the synchronizer with the
// environment
// -----------------------------------------------------------------------------
// Parameters
// Parameter name: Range: Description: Default: Units
//
// -----------------------------------------------------------------------------
// Reuse Issues
// External Pins Required: none
// Monitors Required: none
// Drivers Required: none
// Local Functions: none
// Include Files: core_reg_control_env_h
// Other:
// -----------------------------------------------------------------------------
// Features Tested: none
// -----------------------------------------------------------------------------
// Detailed Test Description: none
// -----------------------------------------------------------------------------

import core_reg_control_env_h;

extend core_reg_control_env_u {
   // if there is some need of a checker implementation, the pointer to the checker
   // need to be created here.
};

extend core_reg_control_agent_u {
   // create the main_clk event that connect the main clock to the environment clock.
   event main_clk is only @parent.sync.clk_p$;
   //event main_clk_f is only @parent.sync.clk_p_f$;
};
 
'>
