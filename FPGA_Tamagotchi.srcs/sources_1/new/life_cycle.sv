`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/15/20 
// Module Name: life_cycle
// Description: FSM controlling the Tamagotchi's life cycle & stage based off age.
//              Outputs both sprite and stage for display purposes.
//              Additionally outputs an auxiliary reset (tama_reset) and dead status
//
// Egg      age = [0,1)
// Baby     age = [1,3)
// Child    age = [3,6)
// Teen     age = [6,10)
// Adult    age = [10,20)
// Death    age = 20+ or whenever death_counter is 0
//////////////////////////////////////////////////////////////////////////////////

module life_cycle(
    input clock,
    input reset,
    input [4:0] tama_age,
    input A, C,
    input [4:0] death_count,
    input death_disable, //1 to disable death by death_count == 0
    input [2:0] random, //random integer for deciding sprites
    output logic [2:0] tama_sprite,
    output logic [2:0] tama_stage, //this is our state!
    output logic tama_reset,
    output logic dead,
    //FROM SD CARD
    input [2:0] tama_sprite_SD,
    input [2:0] tama_stage_SD,
    input load_now
    );
    
    //States within Life Cycle
    parameter EGG  = 3'd1;
    parameter BABY  = 3'd2;
    parameter CHILD = 3'd3;
    parameter TEEN = 3'd4;
    parameter ADULT = 3'd5;
    parameter DEATH = 3'd6;
    
    //Parameters for Tama_Age
    parameter BABY_AGE = 1;
    parameter CHILD_AGE = 3;
    parameter TEEN_AGE = 6;
    parameter ADULT_AGE = 10;
    parameter DEATH_AGE = 20;
    
    //Values for Tama_Sprites
    parameter SPRITE_V1 = 0;
    parameter SPRITE_V2 = 1;
    parameter SPRITE_V3 = 2;
    parameter SPRITE_V4 = 3;
    parameter SPRITE_V5 = 4;
    parameter SPRITE_V6 = 5;
    
    //State rotations
    always_ff @(posedge clock) begin
        if (reset || load_now) begin
            dead <= 0; //not dead anymore
            
            if (load_now) begin //if loading data...
                tama_stage <= tama_stage_SD;
                tama_sprite <= tama_sprite_SD;
            end else begin //normal reset
                tama_stage <= EGG;
                tama_sprite <= 0; //no sprite variation
            end
        end else if (death_count == 0 && !death_disable && !dead) begin //if dead...
            tama_stage <= DEATH;
            tama_sprite <= 0;
            dead <= 1; //dead :(
        end else begin
            case(tama_stage)
                DEATH:  begin
                            if (A && C) begin
                                tama_reset <= 1; //switch on reset
                                tama_stage <= EGG;
                                tama_sprite <= 0;
                                dead <= 0;
                            end
                        end
                            
                EGG:    begin
                            tama_reset <= 0; //pull reset low
                            if (tama_age >= BABY_AGE && !tama_reset) begin
                                tama_stage <= BABY;
                            end
                        end
                            
                BABY:   begin
                            if (tama_age >= CHILD_AGE) begin
                                tama_stage <= CHILD;
                            end
                        end
                            
                CHILD:  begin
                            if (tama_age >= TEEN_AGE) begin
                                tama_stage <= TEEN;
                                tama_sprite <= random[0]; //should only be 0 or 1
                            end
                        end
                            
                TEEN:   begin
                            if (tama_age >= ADULT_AGE) begin
                                tama_stage <= ADULT;
                                
                                case(random)
                                    3'b000:     tama_sprite <= SPRITE_V1;
                                    3'b001:     tama_sprite <= SPRITE_V2;
                                    3'b010:     tama_sprite <= SPRITE_V3;
                                    3'b011:     tama_sprite <= SPRITE_V4;
                                    3'b100:     tama_sprite <= SPRITE_V5;
                                    3'b101:     tama_sprite <= SPRITE_V6;
                                    default:    tama_sprite <= SPRITE_V1;
                                endcase
                            end
                        end
                            
                ADULT:  begin
                            if (tama_age >= DEATH_AGE) begin
                                tama_stage <= DEATH;
                                tama_sprite <= 0;
                                dead <= 1;
                            end
                        end
                        
                default: tama_stage <= EGG; //default egg
            endcase
        end
    end //always_ff for states
endmodule
