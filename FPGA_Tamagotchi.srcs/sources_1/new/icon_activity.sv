`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/20/20
// Module Name: icon_activity
// Description: Holds state for icon selection which is sent on to the display
//              side modules for highlighting the "current" icon.
//              Outputs icon_select, icon_on (whether or not the icon selected was
//              pushed, menu (the display on the tamagotchi to be shown), and
//              sound_off (whether or not we are outputting audio)
//////////////////////////////////////////////////////////////////////////////////

module icon_activity(
    input clock,
    input reset, tama_reset,
    input A, B, C,
    input dead, //death = 1
    input [2:0] tama_stage,
    output logic [2:0] icon_select,
    output logic icon_on, //this is a pulse
    output logic [1:0] menu,
    output logic sound_off, //sound = 0 if on
    //FROM SD CARD
    input sound_off_SD,
    input load_now
    );
    
    //States for each Icon
    parameter IDLE  = 3'd0;
    parameter FOOD  = 3'd1;
    parameter LIGHTS = 3'd2;
    parameter PLAY = 3'd3;
    parameter MEDICINE = 3'd4;
    parameter BATH = 3'd5;
    parameter HEALTH = 3'd6;
    parameter DISCIPLINE = 3'd7;
    
    //Values for menu options
    parameter TAMA_MENU = 2'd0;
    parameter HAPPY_MENU = 2'd1;
    parameter HUNGER_MENU = 2'd2;
    
    //Tama_stage variable
    parameter EGG  = 3'd1;
    
    //Edge_detect for me buttons
    logic A_edge, B_edge, C_edge;
    logic AC_edge;
    edge_detect Adetect(.clock(clock),.signal(A),.sig_edge(A_edge));
    edge_detect Bdetect(.clock(clock),.signal(B),.sig_edge(B_edge));
    edge_detect Cdetect(.clock(clock),.signal(C),.sig_edge(C_edge));
    edge_detect ACdetect(.clock(clock),.signal(A & C),.sig_edge(AC_edge));
    
    //Combinational temp variable for determining if an icon has been used
    logic icon_edge;
    
    //State Transitions and Fun
    always_ff @(posedge clock) begin
        icon_edge = 0; //defaults 0
        if (reset || tama_reset || load_now) begin 
            menu <= TAMA_MENU;
            icon_select <= IDLE;
            
            if (load_now) begin
                sound_off <= sound_off_SD;
            end else if (reset) begin
                sound_off <= 0; //sound on after reset
            end
        end else if (dead) begin
            //do nothing
        end else if (AC_edge) begin
        //if we're not dead, pushing A + C will toggle sound
            sound_off <= sound_off + 1'd1;
        end else if (tama_stage == EGG) begin
            //do nothing (but you can toggle sound!!!)
        end else if (menu == TAMA_MENU && C_edge) begin
            icon_select <= IDLE; //return to idle if C pushed
            //only time this doesn't apply is in HEALTH menu
        end else begin
            case(icon_select)
                IDLE:   begin
                            if (A_edge) begin
                                icon_select <= FOOD;
                            end
                        end
                                
                FOOD:   begin
                            if (A_edge) begin
                                icon_select <= LIGHTS;
                            end else if (B_edge) begin
                                icon_edge = 1;
                            end
                        end
                        
                LIGHTS: begin
                            if (A_edge) begin
                                icon_select <= PLAY;
                            end else if (B_edge) begin
                                icon_edge = 1;
                            end
                        end 
                        
                PLAY:   begin
                            if (A_edge) begin
                                icon_select <= MEDICINE;
                            end else if (B_edge) begin
                                icon_edge = 1;
                            end
                        end
                        
                MEDICINE: begin
                            if (A_edge) begin
                                icon_select <= BATH;
                            end else if (B_edge) begin
                                icon_edge = 1;
                            end
                        end
                
                BATH:   begin
                            if (A_edge) begin
                                icon_select <= HEALTH;
                            end else if (B_edge) begin
                                icon_edge = 1;
                            end
                        end
                        
                HEALTH: begin
                        case(menu)
                            TAMA_MENU:  begin
                                        if (A_edge) begin
                                            icon_select <= DISCIPLINE;
                                        end else if (B_edge) begin
                                            menu <= HAPPY_MENU;
                                        end
                                        end
                            HAPPY_MENU: begin
                                        if (A_edge || B_edge) begin
                                            menu <= HUNGER_MENU;
                                        end else if (C_edge) begin
                                            menu <= TAMA_MENU;
                                        end
                                        end
                            HUNGER_MENU:begin
                                        if (A_edge || B_edge) begin
                                            menu <= HAPPY_MENU;
                                        end else if (C_edge) begin
                                            menu <= TAMA_MENU;
                                        end
                                        end
                            default: menu <= TAMA_MENU;
                        endcase
                        end 
                        
                DISCIPLINE: begin
                            if (A_edge) begin
                                icon_select <= FOOD;
                            end else if (B_edge) begin
                                icon_edge = 1;
                            end
                        end
                                       
                default: icon_select <= IDLE;
            endcase
        end
        
        //Update icon_on after each cycle
        if (icon_edge) begin
            icon_on <= 1;
        end else begin
            icon_on <= 0;
        end
    end //always_ff
endmodule
