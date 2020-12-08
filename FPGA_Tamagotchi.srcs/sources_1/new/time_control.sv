`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/14/20 
// Module Name: time_control
// Description: Utilizes clock signal to count time and age of Tamagotchi for game
//              Outputs Age and Time
//////////////////////////////////////////////////////////////////////////////////

module time_control(
    input clock,
    input reset, //system button reset
    input tama_reset, //life cycle reset
    input [1:0] time_speed, //time control switches
    input age_jump, //jump a year each time pushed
    input dead,
    output logic [4:0] tama_age,
    output logic [5:0] tama_time,
    output logic [3:0] time_incr,
    //FROM SD CARD
    input [4:0] tama_age_SD,
    input [5:0] tama_time_SD,
    input load_now
    );
    parameter ONE_SEC = 65_000_000 * 1; //cycles per sec (cause 65Mhz clocke eh?)
    parameter AGE_STEP = 60; //age increases by a year per AGE_STEP seconds
    parameter COUNT_INCREMENT_1 = 0; //increment per cycle of counter, mode1
    parameter COUNT_INCREMENT_2 = 1; //mode2
    parameter COUNT_INCREMENT_3 = 3; //mode3
    parameter COUNT_INCREMENT_4 = 10; //mode4
    
    //logic for age_increment
    always_comb begin
        case(time_speed)
            2'b00: time_incr = COUNT_INCREMENT_1;
            2'b01: time_incr = COUNT_INCREMENT_2;
            2'b10: time_incr = COUNT_INCREMENT_3;
            2'b11: time_incr = COUNT_INCREMENT_4;
            default: time_incr = COUNT_INCREMENT_2;
        endcase
    end
    
    //Counters
    logic [25:0] cycle_counter; //counter for increasing sec_counter (0 to 65mil)
    logic [5:0] sec_counter; //counter for increasing tama_time (0 to 60s)
    assign tama_time = sec_counter; //doing this for better readability later on
    
    //Age Calculation process
    always_ff @(posedge clock) begin
        if (reset || tama_reset || load_now) begin
            cycle_counter <= 0;
            
            if (load_now) begin //if loading data...
                sec_counter <= tama_time_SD;
                tama_age <= tama_age_SD;
            end else begin //if regular reset
                sec_counter <= 0;
                tama_age <= 0;
            end
        end else if (dead) begin
            // freeze until reset
        end else if (age_jump) begin //if time_jumping a year...
            cycle_counter <= 0; //reset counter
            sec_counter <= 0;
            tama_age <= tama_age + 1; //increase age by 1 year
        end else if (cycle_counter + time_incr >= ONE_SEC) begin
            cycle_counter  <= 0; //reset time counter back to 0
            sec_counter <= sec_counter + 1; //increase seconds by 1
        end else if (sec_counter == AGE_STEP) begin
            cycle_counter <= 0;
            sec_counter <= 0;
            tama_age <= tama_age + 1;
        end else begin
            cycle_counter <= cycle_counter + time_incr; //increment counter
        end
    end //always_ff
endmodule
