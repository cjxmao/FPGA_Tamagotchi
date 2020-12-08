`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 12/1/20
// Module Name: hygiene
// Description: Tama can get {sick,poop,neither} at every increase of age above 1.
//              Random module is used to determine which event happens based on 
//              random[7:6]. 0 = sick; 1,2 = poop; 3 = nothing
//              After an event is triggered, the event will occur within 7s, which
//              is determined from random[2:0]
//              Poop cannot be triggered if the Tama is asleep.
//////////////////////////////////////////////////////////////////////////////////

module hygiene(
    input clock,
    input reset, tama_reset,
    input trig_event, //pulse when to start timer for sick/poop
    input one_sec, //pulse per TAMA second (not a real second unless in right setting)
    input progress, //can we do things or no
    input [2:0] icon_select,
    input icon_on,
    input [7:0] random,
    input [3:0] time_incr,
    input sleep,
    output logic sick, poop,
    output logic [1:0] hygiene_penalty,
    //FROM SD CARD
    input sick_SD, poop_SD,
    input load_now
    );
    
    //time lengths for decreasing death_count (*n seconds)
    parameter MED_TIMER = 65_000_000 * 12;
    parameter BATH_TIMER = 65_000_000 * 22; 
    //Buffer time before death_count related counters go
    parameter MED_BUFFER = 65_000_000 * 20;
    parameter BATH_BUFFER = 65_000_000 * 30;
    
    //Params for RESULT
    parameter NOTHING = 0;
    parameter SICK = 1;
    parameter POOP = 2;
    
    //Params for STATUS
    parameter MEDICINE = 3'd4;
    parameter BATH = 3'd5;
    
    //logics holding trigger delay for starting poop/sick event
    logic [2:0] trig_delay;
    logic [1:0] result; //0 = sick; 1,2 = poop; 3 = nothing
    always_comb begin
        case(random[7:6])
            2'd0:   result = SICK;
            2'd1:   result = POOP;
            2'd2:   result = POOP;
            2'd3:   result = NOTHING;
            default: result = NOTHING;
        endcase
    end
    
    //counters and holder logics
    logic [30:0] bath_dcount, med_dcount; //counter for death_count down
    logic [30:0] bath_bcount, med_bcount; //counter for BUFFER
    logic [2:0] trig_count; //counter for trigger event countdown
    logic bath_buff_expire, med_buff_expire;
    
    //module specific penalities
    logic sick_penalty, poop_penalty;
    assign hygiene_penalty = sick_penalty + poop_penalty;
    
    //always_ff to calculate hygiene changes
    logic delay_seq_run; //high when we are going through a delay sequence
    logic [1:0] applied_state; //shifts in RESULT when needed
    always_ff @(posedge clock) begin
        if (reset || tama_reset || load_now) begin //happiness/hunger reset
            delay_seq_run <= 0;
            bath_dcount <= 0;
            med_dcount <= 0;
            bath_bcount <= 0;
            med_bcount <= 0;
            trig_count <= 0;
            bath_buff_expire <= 0;
            med_buff_expire <= 0;
            sick_penalty <= 0;
            poop_penalty <= 0;
            
            if (load_now) begin //if we're loading, load data
                sick <= sick_SD;
                poop <= poop_SD;
            end else begin //otherwise, do an actual reset
                sick <= 0;
                poop <= 0;
            end
        end else if (progress) begin
            //sick or poop (or nothing) is applied!
            if (trig_event) begin
                trig_delay <= random[2:0]; //trig_delay holds a random interval
                delay_seq_run <= 1;
                applied_state <= result;
                trig_count <= 0;
            end else if (delay_seq_run && applied_state != NOTHING) begin
                //sequence is running, and the state we're applying isn't zero...
                if (trig_count == trig_delay) begin
                    trig_count <= 0; //reset
                    delay_seq_run <= 0; //done with sequence
                    //conditions will only be set to 1 (for if applied when already on)
                    if (applied_state == SICK && !sick) begin
                        sick <= 1;
                        med_buff_expire <= 0;
                    end else if (applied_state == POOP && !poop && !sleep) begin
                        poop <= 1;
                        bath_buff_expire <= 0;
                    end                    
                end else if (one_sec) begin //if trig_count isn't at trig_delay
                    trig_count <= trig_count + 1;
                end
            end
            
            //Consequences when sick is active
            if (sick == 1) begin //if happiness is 0!
                if (!med_buff_expire) begin //count out buffer and then flip med_buff_expire
                    if (med_bcount >= MED_BUFFER) begin
                        med_bcount <= 0;
                        med_buff_expire <= 1; //buffer expired
                        sick_penalty <= 1; //we don't have to set it to 0 otherwise
                        //once med_buff_expire flips, we go straight into the other half
                    end else begin
                        med_bcount <= med_bcount + time_incr;
                    end
                end else begin
                    if (med_dcount >= MED_TIMER) begin
                        sick_penalty <= 1;
                        med_dcount <= 0;
                    end else begin
                        sick_penalty <= 0;
                        med_dcount <= med_dcount + time_incr;
                    end                   
                end
            end
            
            //Consequences when poop is active
            if (poop == 1) begin //if happiness is 0!
                if (!bath_buff_expire) begin //count out buffer and then flip bath_buff_expire
                    if (bath_bcount >= BATH_BUFFER) begin
                        bath_bcount <= 0;
                        bath_buff_expire <= 1; //buffer expired
                        poop_penalty <= 1; //we don't have to set it to 0 otherwise
                        //once bath_buff_expire flips, we go straight into the other half
                    end else begin
                        bath_bcount <= bath_bcount + time_incr;
                    end
                end else begin
                    if (bath_dcount >= BATH_TIMER) begin
                        poop_penalty <= 1;
                        bath_dcount <= 0;
                    end else begin
                        poop_penalty <= 0;
                        bath_dcount <= bath_dcount + time_incr;
                    end                   
                end
            end
            
            //Getting rid of sick condition (we can only cure, not apply)
            if (sick && (icon_select == MEDICINE && icon_on)) begin
                sick <= 0;
            end
            //Getting rid of poop condition (we can only cure, not apply)
            if (poop && (icon_select == BATH && icon_on)) begin
                poop <= 0;
            end
        end
    end //always_ff for hygiene calculations    
endmodule
