`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/30/20 
// Module Name: tippity_top_level
// Description: The toppest of the top levels for the FPGA Tamagotchi
//////////////////////////////////////////////////////////////////////////////////

module tippity_top_level(
    //COMMON
    input clk_100mhz,
    //GAME LOGIC
    input [15:0] sw, //switches
    input btnc, btnu, btnl, btnd, btnr, //buttons
    input m_data, //FPGA mic
    input cpu_resetn, //button for saving/loading
    output logic [15:0] led, //16 led above switches
    output logic led16_r, led17_r,
    output logic led16_g, led17_g,
    output logic led16_b, led17_b,
    output logic m_clk, m_lrsel, //FPGA mic
    output logic ca,cb,cc,cd,ce,cf,cg, 
	output logic [7:0] an,
	//SD IO
    input sd_cd,           
    inout [3:0] sd_dat,                       
    output logic sd_reset, 
    output logic sd_sck, 
    output logic sd_cmd
	//DISPLAY
	
    );
    
    //Parameters utilized
    parameter DEBOUNCE_COUNT = 1000000;
    
    //Logics utilized for lower modules
    logic A, B, C, reset, sd_button; //Tamagotchi buttons, set in debounce
    logic [7:0] random;
    
    //Logics from GAME for DISPLAY
    logic [2:0] tama_sprite; //sprite version (0: death,baby,child, 0-1 teen, 0-5 adult)
    logic [2:0] tama_stage; //stage (death through adult)
    logic dead; //1 if tama is dead
    //From Icon Activity
    logic [2:0] icon_select; //0 for idle, 1-7 for icons (minus attention)
    logic icon_on; //pulse
    logic [1:0] menu; //0 for regular, 1 for happy, 2 for hunger
    logic attention; //if 1, turn on icon 8 ** on rising_edge, should beep for attention if sound is on
    logic sound_off; //if 0, sound is on
    logic sick, poop, sleep; //if 1, then active
    logic [2:0] happy, hunger; // 0 to 4
    
    //Assigning applicable names to FPGA inputs
    always_comb begin
        reset = btnu;
    end
    
    //Generating 65MHz clock for system logic and VGA output
    logic clk_65mhz;
    logic clk_25mhz;
    clk_wiz_0 clk100mhz_to_65mhz(.clk_in1(clk_100mhz),.clk_out1(clk_65mhz),.clk_out2(clk_25mhz));
    
    
    //RNG MODULE
    RNG randomness(.clock(clk_65mhz),.reset(reset),.m_data(m_data),.random(random),.m_clk(m_clk),
        .m_lrsel(m_lrsel));
        
    
    //Debouncing button inputs into system    
    debounce #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT))
	   dbA (.reset_in(reset),.clock_in(clk_65mhz),.noisy_in(btnl),.clean_out(A));
	debounce #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT))
	   dbB (.reset_in(reset),.clock_in(clk_65mhz),.noisy_in(btnc),.clean_out(B));
	debounce #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT))
	   dbC (.reset_in(reset),.clock_in(clk_65mhz),.noisy_in(btnr),.clean_out(C));
	
	
	//GAME TOP LEVEL MODULE
	game_top_level play_tama_time(.clk_65mhz(clk_65mhz),.clk_25mhz(clk_25mhz),.sw(sw),.A(A),.B(B),.C(C),
	   .reset(reset),.btnd(btnd),.random(random),.cpu_resetn(cpu_resetn),.led(led),.led16_r(led16_r),
	   .led17_r(led17_r),.led16_g(led16_g),.led17_g(led17_g),.led16_b(led16_b),.led17_b(led17_b),
	   .ca(ca),.cb(cb),.cc(cc),.cd(cd),.ce(ce),.cf(cf),.cg(cg),.an(an),
       //FOR DISPLAY OUTPUTS
	   .tama_sprite(tama_sprite),.tama_stage(tama_stage),.icon_select(icon_select),.icon_on(icon_on),
	   .menu(menu),.attention(attention),.sound_off(sound_off),.sick(sick),.poop(poop),.sleep(sleep),
	   .happy(happy),.hunger(hunger),.dead(dead),.sd_cd(sd_cd),.sd_dat(sd_dat),.sd_reset(sd_reset),
	   .sd_sck(sd_sck),.sd_cmd(sd_cmd));
	
	
	//DISPLAY TOP LEVEL MODULE
	
	
endmodule
