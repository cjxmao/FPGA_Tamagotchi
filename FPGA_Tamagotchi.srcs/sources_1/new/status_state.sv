`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/24/20
// Module Name: status_state
// Description: Status_state is the wrapper for both health and hygiene. It outputs
//              death_count, sick/poop/sleep, and happy/hunger statuses into the
//              game_top_level.
//              Status_state is essential in determining which timers to give health
//              for the decay of happy/hunger (baby have different timers than other
//              stages). It also gives both lower modules "progress" which is just
//              when health can happen (aka not dead || egg).
//              After recieving the penalties from the lower modules, it updates
//              death_count.
//////////////////////////////////////////////////////////////////////////////////

module status_state(
    input clock,
    input reset, tama_reset,
    input [2:0] tama_stage,
    input [4:0] tama_age,
    input [5:0] tama_time,
    input [2:0] icon_select,
    input icon_on,
    input dead,
    input [7:0] random,
    input [3:0] time_incr,
    output logic [4:0] death_count,
    output logic [2:0] happy, hunger,
    output logic sick, poop,
    output logic sleep, //if 1, turn off lights (Zzzz)
    output logic attention,
    //FROM SD CARD
    input [4:0] death_count_SD, //kept in this module
    input sick_SD, poop_SD, sleep_SD,
    input [2:0] happy_SD, hunger_SD,
    input load_now
    );
    //States within Life Cycle
    parameter EGG  = 3'd1;
    parameter BABY  = 3'd2;
    
    //death_count max
    parameter FULL_HEALTH = 16;
    initial death_count = FULL_HEALTH;
    
    //time lengths for decreasing death_count (*n seconds)
    parameter PLAY_TIMER = 65_000_000 * 31; //
    parameter FOOD_TIMER = 65_000_000 * 23; //
    parameter BABY_DTIMER = 65_000_000 * 10; //
    
    //time lengths for decreasing happiness/hunger over time
    parameter HAPPY_TIMER = 65_000_000 * 53; //
    parameter HUNGER_TIMER = 65_000_000 * 65; //
    parameter BABY_TIMER = 65_000_000 * 21; //specifically for baby stage
    
    //picking timers between baby vs non-baby
    logic [31:0] happy_time, hunger_time; //decrease H/H
    logic [30:0] play_dtime, food_dtime; //death_count down time
    always_comb begin
        if (tama_stage == BABY) begin
            happy_time = BABY_TIMER;
            hunger_time = BABY_TIMER;
            play_dtime = BABY_DTIMER;
            food_dtime = BABY_DTIMER;
        end else begin
            happy_time = HAPPY_TIMER;
            hunger_time = HUNGER_TIMER;
            play_dtime = PLAY_TIMER;
            food_dtime = FOOD_TIMER;
        end
    end
    
    //Setting ATTENTION -- active when either poop/sick are
    assign attention = poop || sick;
    
    //logic for determining when statuses are valid to run
    logic progress;
    assign progress = !(dead || tama_stage == EGG);
    
    //Creating trig_event for hygiene.sv (used for triggering poop/sick events)
    logic trig_event;
    change_detect age_trigger (.clock(clock),.signal(tama_age),.sig_changed(trig_event));
    
    //Creative one_sec based off tama_time for hygiene.sv
    logic one_sec;
    change_detect #(.WIDTH(6)) second (.clock(clock),.signal(tama_time),.sig_changed(one_sec));
    
    //HAPPINESS + HUNGER MODULE (includes discipline)
    logic [1:0] health_penalty;
    health health_functions(.clock(clock),.reset(reset),.tama_reset(tama_reset),.progress(progress),
        .icon_select(icon_select),.icon_on(icon_on),.time_incr(time_incr),.happy_time(happy_time),
        .hunger_time(hunger_time),.play_dtime(play_dtime),.food_dtime(food_dtime),.happy(happy),
        .hunger(hunger),.sleep(sleep),.health_penalty(health_penalty),.sleep_SD(sleep_SD),
        .happy_SD(happy_SD),.hunger_SD(hunger_SD),.load_now(load_now));
    
    
    //SICK + POOP MODULE
    logic [1:0] hygiene_penalty;
    hygiene clean_up_time(.clock(clock),.reset(reset),.tama_reset(tama_reset),.trig_event(trig_event),
        .one_sec(one_sec),.progress(progress),.icon_select(icon_select),.icon_on(icon_on),.random(random),
        .time_incr(time_incr),.sleep(sleep),.sick(sick),.poop(poop),.hygiene_penalty(hygiene_penalty),
        .sick_SD(sick_SD),.poop_SD(poop_SD),.load_now(load_now));
    
    
    //Updating death_count
    always_ff @(posedge clock) begin
        if (reset || tama_reset || load_now) begin //happiness/hunger reset
            if (load_now) begin //if loading data...
                death_count <= death_count_SD;
            end else begin //normal reset behavior
                death_count <= FULL_HEALTH;
            end
        end else begin
            if (death_count != 0) begin
                death_count <= death_count - health_penalty - hygiene_penalty;
            end
        end
    end // always_ff for death_count
    
endmodule
