`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/28/20 
// Module Name: 
// Description: 
//////////////////////////////////////////////////////////////////////////////////

module icon_activity_tb;
    
    //Inputs
    logic clock;
    logic reset;
    logic tama_reset;
    logic A, B, C;
    logic dead;
    logic [2:0] tama_stage;
    
    //Outputs
    logic [2:0] icon_select;
    logic icon_on;
    logic [1:0] menu;
    logic sound_off; //sound = 0 if on
    
    //Instantiate UUT
    icon_activity icons(
        .clock(clock),
        .reset(reset),
        .tama_reset(tama_reset),
        .A(A), .B(B), .C(C),
        .dead(dead),
        .tama_stage(tama_stage),
        .icon_select(icon_select),
        .icon_on(icon_on),
        .menu(menu),
        .sound_off(sound_off)
    );
    
    //clocky boi
    always #5 clock = !clock;
    
    //Time 4 Testing
    initial begin
        // Initialize Inputs
        clock = 0;
        reset = 0;
        tama_reset = 0;
        A = 0;
        B = 0;
        C = 0;
        dead = 0;
        tama_stage = 3'd3;
        icon_select = 0;
        icon_on = 0;
        menu = 0;
        sound_off = 0;
        
        // Wait 100 ns for global reset to finish
        #100;
        reset = 1;
        #10
        reset = 0;
        
        //Test normal scrolling through icons
        #50
        A = 1;
        #20
        A = 0;
        #20
        B = 1;
        #50
        A = 1;
        B = 0; //left B on for a bit
        #20
        A = 0;
        #20
        A = 1;
        #20
        A = 0;
        #20
        A = 1;
        #20
        A = 1; //intentional double up
        #20
        A = 0;
        #10
        B = 1;
        #20
        B = 0;
        #20
        A = 1;
        #20
        A = 0;
        #20
        A = 1;
        #20
        A = 0;
        #20
        A = 1;
        #20
        A = 0;
        #20
        A = 1;
        #20
        A = 0; //should end up at FOOD
        #50
        C = 1;
        #20
        C = 0; //should be back to IDLE
        
        //Testing Death
        #200
        dead = 1;
        #20
        A = 1;
        #10
        A = 0;
        B = 1;
        #20
        B = 0;
        C = 1;
        #10
        C = 0;
        dead = 0;
        
        //Egg state should prohibit everything
        #200
        tama_stage = 1;
        #20
        A = 1;
        #20
        A = 0;
        B = 1;
        #20
        B = 0;
        C = 1;
        #20
        C = 0;
        #20
        A = 1;
        #20
        C = 1;
        #20
        A = 0;
        C = 0;
        B = 1;
        #20
        B = 0;
        #50
        tama_stage = 3;
        
        //Testing Changing Sound
        #200
        A = 1;
        #50
        C = 1;
        #20
        C = 0;
        A = 0;
        #50
        C = 1;
        #50
        A = 1;
        #20
        A = 0;
        C = 0;
        
        //Testing Health
        #200
        icon_select = 6;
        #20
        B = 1;
        #10
        B = 0;
        A = 1;
        #10
        A = 0;
        B = 1;
        #10
        B = 0;
        C = 1;
        #10
        C = 0;
        A = 1;
        #10
        A = 0;
    end   
    
endmodule
