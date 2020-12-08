`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/28/20
// Module Name: RNG
// Description: Outputs a 'random' 8bit number based on the inputs shited in from
//              the FGPA built in mic.
//////////////////////////////////////////////////////////////////////////////////

module RNG(
    input clock,
    input reset,
    input m_data, //for FPGA mic
    output logic [7:0] random, //used for Game Logic
    output logic m_clk, //for FPGA mic
    output logic m_lrsel //for FPGA mic
    );
    
    parameter MIC_CLOCK_COUNTER = 65;
    
    //counter for creating mic clock
    logic [8:0] mclk_counter;
    
    //internal shift bit
    logic [255:0] mic_shift;
    
    //we want data on rising edge of m_clk
    assign m_lrsel = 0;
    
    //generating m_clk
    always_ff @(posedge clock) begin
        if (reset) begin
            mclk_counter <= 0;
            m_clk <= 0;
        end else if (mclk_counter == MIC_CLOCK_COUNTER) begin
            m_clk <= !m_clk; //toggle clock
            mclk_counter <= 0; //reset counter
        end else begin
            mclk_counter <= mclk_counter + 1;
        end
    end //always_ff of clock
    
    //Getting data and shifting through random
    always_ff @(posedge m_clk) begin
        mic_shift <= {mic_shift[254:0], m_data};
    end //always_ff of m_clk
    
    //Assigning Random
    assign random = {mic_shift[255], mic_shift[216], mic_shift[180], mic_shift[144],
                     mic_shift[108], mic_shift[72], mic_shift[36], mic_shift[0]};
    
endmodule
