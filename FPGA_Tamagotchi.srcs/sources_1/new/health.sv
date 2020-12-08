`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/29/20
// Module Name: health
// Description: Outputs happy, hunger, and health_penalty to status_state where the
//              values will be used to display happy/health levels and update the 
//              death_count.
//              Entirely timer based, this module calculates when to decrease
//              happy/hunger over time, increase it at the appropriate button push,
//              or start accumulating penalties when either hits 0.
//              Discipline was added in this module because it contributes to delta
//              happiness.
//////////////////////////////////////////////////////////////////////////////////

module health(
    input clock,
    input reset, tama_reset,
    input progress, //can we do things or no
    input [2:0] icon_select,
    input icon_on,
    input [3:0] time_incr,
    input [31:0] happy_time, hunger_time,
    input [30:0] play_dtime, food_dtime,
    output logic [2:0] happy, hunger,
    output logic sleep,
    output logic [1:0] health_penalty, // 0, 1 or 2
    //FROM SD CARD
    input sleep_SD,
    input [2:0] happy_SD, hunger_SD,
    input load_now
    );
    
    //Values for Happiness/Hunger
    parameter HAPPY_FULL = 4;
    parameter HUNGER_FULL = 4;
    initial happy = HAPPY_FULL;
    
    //Icons for Play/Food
    parameter FOOD  = 3'd1;
    parameter LIGHTS = 3'd2;
    parameter PLAY = 3'd3;
    parameter DISCIPLINE = 3'd7;
    
    //counters for timers
    logic [31:0] happy_counter, hunger_counter;
    logic [30:0] play_counter, food_counter;
    
    //individual penalities
    logic happy_penalty, hunger_penalty;
    assign health_penalty = happy_penalty + hunger_penalty;
    
    //deltas for hunger/happiness
    logic happy_loss, happy_gain;
    logic happy_loss_dis; //loss of happiness from discipline
    logic hunger_loss, hunger_gain;
    
    //happiness increment changes if sleep is active
    logic [3:0] happy_incr;
    assign happy_incr = (sleep) ? 0 : time_incr;
    
    //Hunger and Happiness related logic
    always_ff @(posedge clock) begin
        if (reset || tama_reset || load_now) begin //happiness/hunger reset
            happy_counter <= 0;
            hunger_counter <= 0;
            happy_penalty <= 0;
            hunger_penalty <= 0;
            
            if (load_now) begin //if we're loading data
                happy <= happy_SD;
                hunger <= hunger_SD;
                sleep <= sleep_SD;
            end else begin //regular reset process
                happy <= HAPPY_FULL;
                hunger <= 0; //it is hungry, 1st thing to do when it hatches is feed it!
                sleep <= 0;
            end
        end else if (progress) begin
            //SLEEP TOGGLE
            if (icon_select == LIGHTS && icon_on) begin
               sleep <= sleep + 1;
            end
            
            //HAPPINESS DECAY
            if (happy == 0) begin //if happiness is 0!
                if (play_counter >= play_dtime) begin
                    happy_penalty <= 1;
                    play_counter <= 0;
                end else begin //otherwise keep incrementing
                    happy_penalty <= 0; //keep this low until it triggers the timer
                    play_counter <= play_counter + happy_incr;
                end //play_counter doesn't reset between times happiness goes to 0
            end else begin //if happy =/= 0
                if (happy_counter >= happy_time) begin
                    happy_loss <= 1;
                    happy_counter <= 0; //reset counter
                end else begin
                    happy_counter <= happy_counter + happy_incr;
                    happy_loss <= 0;
                end
            end
            
            //HAPPINESS GAIN
            if (happy < HAPPY_FULL) begin //if happiness isn't at max
                if (icon_select == PLAY && icon_on) begin
                    happy_gain <= 1;
                end else begin
                    happy_gain <= 0;
                end
            end
            
            //DISCIPLINE
            if (happy > 0) begin
                if (icon_select == DISCIPLINE && icon_on) begin
                    happy_loss_dis <= 1;
                end else begin
                    happy_loss_dis <= 0;
                end
            end
            
            //HUNGER DECAY
            if (hunger == 0) begin //if hunger is 0!
                if (food_counter >= food_dtime) begin
                    hunger_penalty <= 1;
                    food_counter <= 0;
                end else begin //otherwise keep incrementing
                    hunger_penalty <= 0; //keep this low until it triggers the timer
                    food_counter <= food_counter + time_incr;
                end //food_counter doesn't reset between times hunger goes to 0
            end else begin //if hunger =/= 0
                if (hunger_counter >= hunger_time) begin
                    hunger_loss <= 1;
                    hunger_counter <= 0; //reset counter
                end else begin
                    hunger_counter <= hunger_counter + time_incr;
                    hunger_loss <= 0;
                end
            end
            
            //HUNGER GAIN
            if (hunger < HUNGER_FULL) begin //if hunger isn't at max
                if (icon_select == FOOD && icon_on) begin
                    hunger_gain <= 1;
                end else begin
                    hunger_gain <= 0;
                end
            end
            
            //Update happy and hunger
            happy <= happy - happy_loss + happy_gain - happy_loss_dis;
            hunger <= hunger - hunger_loss + hunger_gain;
        end
    end //always_ff HH
    
endmodule
