`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/14/20 
// Module Name: game_top_level
// Description: Top level logic for gameplay half of FPGA Tamagotchi.
//              There's a few artifacts left behind from translating up into the
//              higher top_level.
//////////////////////////////////////////////////////////////////////////////////

module game_top_level(
    input clk_65mhz,
    input clk_25mhz,
    input [15:0] sw, //switches
    input A, B, C, reset, btnd, //buttons
    input [7:0] random,
    input cpu_resetn, //button for saving/loading
    output logic [15:0] led, //16 led above switches
    output logic led16_r, led17_r,
    output logic led16_g, led17_g,
    output logic led16_b, led17_b,
    output logic ca,cb,cc,cd,ce,cf,cg, 
	output logic [7:0] an,
	//FOR DISPLAY OUTPUTS
	output logic [2:0] tama_sprite, //sprite version
    output logic [2:0] tama_stage, //stage
    output logic [2:0] icon_select,
    output logic icon_on,
    output logic [1:0] menu,
    output logic attention,
    output logic sound_off,
    output logic sick, poop, sleep, //1 = active
    output logic [2:0] happy, hunger,
    output logic dead,
    //SD IO
    input sd_cd,           
    inout [3:0] sd_dat,                       
    output logic sd_reset, 
    output logic sd_sck, 
    output logic sd_cmd
    );
    
    //Parameters utilized
    parameter DEBOUNCE_COUNT = 1000000;
    
    //Logics utilized for lower modules
    logic age_jump; //Not a canon button, btnd jumps to next age stage
    logic time_jump; //btnd, not edge_detected
    logic [1:0] time_speed; //sw[0] and sw[1]
    logic death_disable; //sw[3], only limits death_count, can still die from age
    logic rng_test; //sw[4], used for displaying RNG
    logic status_test; //sw[5], used for displaying statuses
    logic sd_test; //sw[6], used for testing SD state
    logic sd_state; //sw[15], 1 if LOAD, 0 if SAVE --> based on sd_button button
    logic sd_button; //BUTTON PUSH
    //Outputs from Life Cycle and Time Control
    logic [4:0] tama_age; //age, used to determine stage
    logic [5:0] tama_time; //time counter, from 0 to 60s
    logic [3:0] time_incr; //more so sample increments (x0, x1, x3, x10)
    logic tama_reset; //Tamagotchi's reset cycle (ind. of reset button)
    //Outputs from RNG
    logic [7:0] rng_dis; //used for testing/displaying on hex
    //Outputs from Status State
    logic [4:0] death_count; //0 to 16
    
    //ALL OUTPUTS FROM SD CARD -> will go into corresponding lower modules
    logic [4:0] tama_age_SD; //
    logic [5:0] tama_time_SD; //
    logic [4:0] death_count_SD; 
    logic [2:0] tama_sprite_SD; //
    logic [2:0] tama_stage_SD; //
    logic sound_off_SD; //
    logic sick_SD, poop_SD, sleep_SD; 
    logic [2:0] happy_SD, hunger_SD; 
    logic load_now; //HIGH when telling system to load (holds for many cycles)
    logic [1:0] sd_sw; //switches for sd addressing
    
    //Assigning applicable names to FPGA inputs
    always_comb begin
        time_speed = sw[1:0];
        death_disable = sw[3];
        rng_test = sw[4];
        status_test = sw[5];
        sd_test = sw[6];
        led17_g = !sound_off;
        led16_b = sleep;
        sd_state = sw[15];
        sd_sw = sw[14:13];
        
        //LED output for save_load
        if (sd_button) begin
            if (sd_state == 0) begin //SAVING
                led16_g = 0;
                led17_b = 1;                
            end else begin //LOADING
                led16_g = 1;
                led17_b = 1;
            end
        end else begin
            led16_g = 0;
            led17_b = 0;
        end
    end // always_comb
    
        
    //Debouncing button inputs into system    
    debounce #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT))
	   dbjump (.reset_in(reset),.clock_in(clk_65mhz),.noisy_in(btnd),.clean_out(time_jump));
	//save_load pulse signal for SD Card related purposes
	debounce #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT))
	   dbS (.reset_in(reset),.clock_in(clk_65mhz),.noisy_in(!cpu_resetn),.clean_out(sd_button));
    //finding edge of time_jump button push --> age_jump
    edge_detect jump_button(.clock(clk_65mhz),.signal(time_jump),.sig_edge(age_jump));
    
    //latch for testing RNG module
    latch RNG_latch(.clock(clk_65mhz),.trigger(rng_test),.signal(random),.latched(rng_dis));
    
    
    //SD BUFFER MODULE
    logic [3:0] state; //state of sd
    logic [4:0] sd_cont_status; //state of sd_controller
    sd_buffer sd_turnaround (.clk_25mhz(clk_25mhz),.clk_65mhz(clk_65mhz),.reset(reset),
        .sd_cd(sd_cd),.sd_dat(sd_dat),.sd_reset(sd_reset),.sd_sck(sd_sck),.sd_cmd(sd_cmd),
        .tama_age_in(tama_age),.tama_time_in(tama_time),.death_count_in(death_count),
        .tama_sprite_in(tama_sprite),.tama_stage_in(tama_stage),.sound_off_in(sound_off),
        .sick_in(sick),.poop_in(poop),.sleep_in(sleep),.happy_in(happy),.hunger_in(hunger),
        .tama_age_out(tama_age_SD),.tama_time_out(tama_time_SD),.death_count_out(death_count_SD),
        .tama_sprite_out(tama_sprite_SD),.tama_stage_out(tama_stage_SD),.sound_off_out(sound_off_SD),
        .sick_out(sick_SD),.poop_out(poop_SD),.sleep_out(sleep_SD),.happy_out(happy_SD),
        .hunger_out(hunger_SD),.cpu_resetn(cpu_resetn),.sd_state(sd_state),.load_now(load_now),
        .sd_sw(sd_sw),.state(state),.sd_cont_status(sd_cont_status));
    
    
    //TIME CONTROL MODULE
    time_control timely(.clock(clk_65mhz),.reset(reset),.tama_reset(tama_reset),.time_speed(time_speed),
        .age_jump(age_jump),.dead(dead),.tama_age(tama_age),.tama_time(tama_time),.time_incr(time_incr),
        .tama_age_SD(tama_age_SD),.tama_time_SD(tama_time_SD),.load_now(load_now));
        
    
    //LIFE CYCLE MODULE
    life_cycle tama_life(.clock(clk_65mhz),.reset(reset),.tama_age(tama_age),.A(A),.C(C),
        .death_count(death_count),.death_disable(death_disable),.random(random[2:0]),.tama_sprite(tama_sprite),
        .tama_stage(tama_stage),.tama_reset(tama_reset),.dead(dead),.tama_sprite_SD(tama_sprite_SD),
        .tama_stage_SD(tama_stage_SD),.load_now(load_now));
    
    
    //ICON ACTIVITY MODULE
    icon_activity icons(.clock(clk_65mhz),.reset(reset),.tama_reset(tama_reset),.A(A),.B(B),.C(C),
        .dead(dead),.tama_stage(tama_stage),.icon_select(icon_select),.icon_on(icon_on),.menu(menu),
        .sound_off(sound_off),.sound_off_SD(sound_off_SD),.load_now(load_now));
    
    //STATUS STATE MODULE
    status_state statuses(.clock(clk_65mhz),.reset(reset),.tama_reset(tama_reset),.tama_stage(tama_stage),
        .tama_age(tama_age),.tama_time(tama_time),.icon_select(icon_select),.icon_on(icon_on),.dead(dead),
        .random(random),.time_incr(time_incr),.death_count(death_count),.happy(happy),.hunger(hunger),
        .sick(sick),.poop(poop),.sleep(sleep),.attention(attention),.death_count_SD(death_count_SD),
        .sick_SD(sick_SD),.poop_SD(poop_SD),.sleep_SD(sleep_SD),.happy_SD(happy_SD),.hunger_SD(hunger_SD),
        .load_now(load_now));
    
    //DEATH COUNT TO LED
    death_count_led death_lights(.clock(clk_65mhz),.reset(reset),.dead(dead),.death_count(death_count),
        .led(led),.rled1(led16_r),.rled2(led17_r));
    
    
    //Output to 7-seg Display
    logic [31:0] data;      //  instantiate 7-segment display; display (8) 4-bit hex
    logic [6:0] segments;
    assign {cg, cf, ce, cd, cc, cb, ca} = segments[6:0];
    
    logic [7:0] age_display; //for age in decimal display
    logic [7:0] time_display; //for time in decimal display
    logic [7:0] sd_display; //for sd_buffer status in decimal display
    logic [7:0] sd_cont_display; //for sd_controller_status in decimal display
    bin_to_decimal age_dec(.binary_in(tama_age),.decimal_out(age_display));
    bin_to_decimal time_dec(.binary_in(tama_time),.decimal_out(time_display));
    bin_to_decimal sd_dec(.binary_in(state),.decimal_out(sd_display));
    bin_to_decimal sd_cont_dec(.binary_in(sd_cont_status),.decimal_out(sd_cont_display));
    
    always_ff @(posedge clk_65mhz) begin //to fix timing issues...
        if (rng_test) begin
            data <= {3'd0, rng_dis[7], 3'd0, rng_dis[6], 3'd0, rng_dis[5], 3'd0, rng_dis[4], 3'd0, rng_dis[3],
                    3'd0, rng_dis[2], 3'd0, rng_dis[1], 3'd0, rng_dis[0]};
        end else if (sd_test) begin
            data <= {time_display, age_display, sd_cont_display, sd_display};
        end else if (status_test) begin
            data <= {time_display, age_display, 1'd0, happy, 1'd0, hunger, 3'd0, sick, 3'd0, poop};
        end else if (menu == 1) begin
            data <= {time_display, age_display, 2'd0, menu, 8'd0, 1'd0, happy};
        end else if (menu == 2) begin
            data <= {time_display, age_display, 2'd0, menu, 8'd0, 1'd0, hunger};
        end else begin
            data <= {time_display, age_display, 1'd0, tama_stage, 1'd0, tama_sprite, 2'd0, menu, 1'd0, icon_select};
        end
    end
    display_8hex display(.clk_in(clk_65mhz),.data_in(data), .seg_out(segments), .strobe_out(an));

endmodule
