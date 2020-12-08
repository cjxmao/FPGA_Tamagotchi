`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/16/20 
// Module Name: death_count_led
// Description: Displays death_count on the FPGA LEDs.
//              Note: they should display red flashing LEDs
//////////////////////////////////////////////////////////////////////////////////

module death_count_led(
    input clock,
    input reset,
    input dead,
    input [4:0] death_count,
    output logic [15:0] led,
    output logic rled1, rled2
    );
    parameter MAX_COUNT = 16;
    parameter PULSE_COUNT = 65_000_000/2; //clock cycles before alternate pulses
    
    //Red Pulse signals
    logic rpulse;
    logic [30:0] pulse_counter;
    
    always_ff @(posedge clock) begin
        if (reset) begin
            pulse_counter <= 0;
            rpulse <= 0;
        end else if (pulse_counter == PULSE_COUNT) begin
            pulse_counter <= 0; //reset counter
            rpulse <= !rpulse; //invert the pulse
        end else begin
            pulse_counter <= pulse_counter + 1;
        end
    end
    
    //Assignment to LEDs based on death_count and dead
    always_comb begin
        if (dead) begin //if we're dead, connec to pulse signals
            led = 0;
            rled1 = rpulse;
            rled2 = !rpulse;
        end else begin
            led = 16'hffff >> (MAX_COUNT - death_count);
            rled1 = 0;
            rled2 = 0;
        end
    end
endmodule
