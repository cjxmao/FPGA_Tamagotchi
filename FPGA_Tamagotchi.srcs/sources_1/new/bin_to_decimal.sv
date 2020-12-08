`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:   cimao
// 
// Create Date: 11/15/20 
// Module Name: bin_to_decimal
// Description: Take in 7 bit binary and convert to two 4 bit decimal digits
//              Specific use case of outputting to seven segment display
//////////////////////////////////////////////////////////////////////////////////

module bin_to_decimal(
    input [6:0] binary_in, //only works if equiv to [0,99] in decimal
    output logic [7:0] decimal_out
    );
    
    //Temporary variables
    logic [3:0] dec_ten;
    logic [3:0] dec_one;
    
    //Case statements used to differentiate places
    always_comb begin
        case(binary_in) inside
            [7'd0 : 7'd9]:      begin
                                dec_ten = 4'd0;
                                dec_one = binary_in;
                                end
                                
            [7'd10 : 7'd19]:    begin
                                dec_ten = 4'd1;
                                dec_one = binary_in - 7'd10;
                                end
                                
            [7'd20 : 7'd29]:    begin
                                dec_ten = 4'd2;
                                dec_one = binary_in - 7'd20;
                                end
            
            [7'd30 : 7'd39]:    begin
                                dec_ten = 4'd3;
                                dec_one = binary_in - 7'd30;
                                end
                                
            [7'd40 : 7'd49]:    begin
                                dec_ten = 4'd4;
                                dec_one = binary_in - 7'd40;
                                end
                                
            [7'd50 : 7'd59]:    begin
                                dec_ten = 4'd5;
                                dec_one = binary_in - 7'd50;
                                end
            
            [7'd60 : 7'd69]:    begin
                                dec_ten = 4'd6;
                                dec_one = binary_in - 7'd60;
                                end
                                
            [7'd70 : 7'd79]:    begin
                                dec_ten = 4'd7;
                                dec_one = binary_in - 7'd70;
                                end
                                
            [7'd80 : 7'd89]:    begin
                                dec_ten = 4'd8;
                                dec_one = binary_in - 7'd80;
                                end
            
            [7'd90 : 7'd99]:    begin
                                dec_ten = 4'd9;
                                dec_one = binary_in - 7'd90;
                                end
                                
            default:            begin
                                dec_ten = 4'hE;
                                dec_one = 4'hE;
                                end
        endcase
        
        //Assigning decimal_out
        decimal_out = {dec_ten, dec_one};    
    end
endmodule
