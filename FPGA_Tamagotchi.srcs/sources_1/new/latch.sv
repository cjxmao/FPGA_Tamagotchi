`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/28/20
// Module Name: RNG
// Description: Outputs the number of a changing signal at the moment a trigger
//              is given (rising edge).
//////////////////////////////////////////////////////////////////////////////////

module latch(
    input clock,
    input trigger,
    input [7:0] signal,
    output logic [7:0] latched
    );
    
    //Edge detect on trigger signal
    logic trig_edge;
    edge_detect trigger_edge(.clock(clock),.signal(trigger),.sig_edge(trig_edge));
    
    //Updating latched
    always_ff @(posedge clock) begin
        if (trig_edge) begin
            latched <= signal;
        end
    end //always_ff for latched
    
endmodule
