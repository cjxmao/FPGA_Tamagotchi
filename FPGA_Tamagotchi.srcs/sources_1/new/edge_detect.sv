`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/14/20 
// Module Name: edge_detect
// Description: Outputs a pulse indicating the rising edge of the inputted signal.
//              Your good o' fashioned edge detector
//////////////////////////////////////////////////////////////////////////////////

module edge_detect(
    input clock,
    input signal,
    output logic sig_edge
    );
    
    // the last value of signal
    logic last_signal;
    
    // continually shifts in signal into last_signal 
    always_ff @(posedge clock) begin
        last_signal <= signal;
    end
    
    //combinatorically assigns sig_edge on rising edge
    assign sig_edge = !last_signal && signal;
    
endmodule


//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/14/20 
// Module Name: change_detect
// Description: Outputs a pulse indicating a change in the value of the inputted signal.
//              Specifically made for tama_age, default width of 5.
//////////////////////////////////////////////////////////////////////////////////

module change_detect #(parameter WIDTH = 5)(
    input clock,
    input [WIDTH-1:0] signal,
    output logic sig_changed
    );
    
    // the last value of signal
    logic [WIDTH-1:0] last_signal;
    
    // continually shifts in signal into last_signal 
    always_ff @(posedge clock) begin
        last_signal <= signal;
    end
    
    //combinatorically assigns sig_edge on rising edge
    assign sig_changed = last_signal != signal;
    
endmodule

