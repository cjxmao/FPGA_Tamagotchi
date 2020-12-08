`timescale 1ns / 1ps

module sd_buffer (
    input clk_25mhz,
    input clk_65mhz,
    input reset,
    
    input sd_cd,
    inout [3:0] sd_dat,
    output logic sd_reset,
    output logic sd_sck,
    output logic sd_cmd,
                    
    //Inputs to SAVE
    input [4:0] tama_age_in,
    input [5:0] tama_time_in,
    input [4:0] death_count_in,
    input [2:0] tama_sprite_in,
    input [2:0] tama_stage_in,
    input sound_off_in,
    input sick_in, poop_in, sleep_in,
    input [2:0] happy_in, hunger_in,
    //Outputs to LOAD
    output logic [4:0] tama_age_out, //byte0 left
    output logic [5:0] tama_time_out, //byte1 right**
    output logic [4:0] death_count_out, //byte2 left
    output logic [2:0] tama_sprite_out, //byte2 right
    output logic [2:0] tama_stage_out, //byte0 right
    output logic sound_off_out, //byte3 [6]
    output logic sick_out, poop_out, sleep_out, //byte3 [5,4,3]
    output logic [2:0] happy_out, hunger_out, //byte4 [7:5] [4:2]
    //IO with SYSTEM 
    input cpu_resetn, //pushed through from top_level
    input sd_state, //1 if LOAD, 0 if SAVE
    output logic load_now, //high pulse for system to update from SD
    input [1:0] sd_sw,
    output logic [3:0] state, //sd_state for writing/reading (DEBUG)
    output logic [4:0] sd_cont_status //sd_controller_status (DEBUG)
    );
    
    assign sd_dat[2:1] = 2'b11;
    assign sd_reset = 0;
   
    // sd_controller inputs
    logic rd;                   // read enable
    logic wr;                   // write enable
    logic [7:0] din;            // data to sd card
    logic [31:0] address;       // starting address for read/write operation
    
    // sd_controller outputs
    logic ready;                // high when ready for new read/write operation
    logic [7:0] dout;           // data from sd card
    logic byte_available;       // high when byte available for read
    logic ready_for_next_byte;  // high when ready for new byte to be written
    
    //debounce SD_CD
    parameter DEBOUNCE_COUNT_SD = 10000000; //10mil -> 400ms
    logic sd_cd_debounce;
    debounce #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT_SD))
	   db_sd (.reset_in(reset),.clock_in(clk_25mhz),.noisy_in(!sd_cd),.clean_out(sd_cd_debounce));
	
	//Assigning address
	logic [31:0] addr_latch; //latch for address when reading/writing
	assign address = {19'd0, 2'b10, sd_sw, 9'd0};
	
	//READ: edge_detect on byte_available
	logic rdyRD_edge;
	edge_detect RDbyte_ready (.clock(clk_25mhz),.signal(byte_available),.sig_edge(rdyRD_edge));
	//WRITE: edge_detect on ready_for_next_byte
	logic rdyWR_edge;
	edge_detect WRbyte_ready (.clock(clk_25mhz),.signal(ready_for_next_byte),.sig_edge(rdyWR_edge));
    
    // handles reading from the SD card
    //logic [4:0] sd_cont_status;
    sd_controller sd(.reset(reset || !sd_cd_debounce),.clk(clk_25mhz),.cs(sd_dat[3]),.mosi(sd_cmd),.miso(sd_dat[0]),
        .sclk(sd_sck),.ready(ready),.address(addr_latch),.rd(rd),.dout(dout),.byte_available(byte_available),
        .wr(wr),.din(din),.ready_for_next_byte(ready_for_next_byte),.status(sd_cont_status)); 


    //HOLD VARIABLES
    logic [4:0] tama_age_hold;
    logic [5:0] tama_time_hold;
    logic [4:0] death_count_hold;
    logic [2:0] tama_sprite_hold;
    logic [2:0] tama_stage_hold;
    logic sound_off_hold;
    logic sick_hold, poop_hold, sleep_hold;
    logic [2:0] happy_hold, hunger_hold;
    
    // SD_BUFFER LOGIC PAST HERE
    //logic [3:0] state;
    parameter FIRST_BOOT = 0;
    parameter IDLE = 1;
    parameter START_READ = 2;
    parameter READ_B0 = 3;
    parameter READ_B1 = 4;
    parameter READ_B2 = 5;
    parameter READ_B3 = 6;
    parameter READ_B4 = 7;
    parameter READ_WAIT = 8;
    parameter START_WRITE = 9;
    parameter WRITE_B0 = 10;
    parameter WRITE_B1 = 11;
    parameter WRITE_B2 = 12;
    parameter WRITE_B3 = 13;
    parameter WRITE_B4 = 14;
    parameter WRITE_WAIT = 15;
    
    //25mhz TO 65mhz (not a real synch but whatcha gonna do)
    always_ff @(posedge clk_65mhz) begin
        if (state == READ_WAIT) begin
            load_now <= 1;
        end else begin
            load_now <= 0;
        end
    end 
    
    //finding edge of sd_button --> save_load
    logic save_load, sd_button;
    parameter DEBOUNCE_COUNT = 1000000;
    //save_load pulse signal for SD Card related purposes
	debounce #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT))
	   dbS (.reset_in(reset),.clock_in(clk_25mhz),.noisy_in(!cpu_resetn),.clean_out(sd_button));
    edge_detect saveload_button (.clock(clk_25mhz),.signal(sd_button),.sig_edge(save_load));
    
    //65mhz TO 25mhz synch
    always_ff @(posedge clk_25mhz) begin
        if (save_load && sd_state == 0) begin //START LE SAVE PROCESS
            addr_latch <= address; //take current value of address
            //now latch all other variables into holds
            tama_age_hold <= tama_age_in;
            tama_time_hold <= tama_time_in;
            death_count_hold <= death_count_in;
            tama_sprite_hold <= tama_sprite_in;
            tama_stage_hold <= tama_stage_in;
            sound_off_hold <= sound_off_in;
            sick_hold <= sick_in;
            poop_hold <= poop_in;
            sleep_hold <= sleep_in;
            happy_hold <= happy_in;
            hunger_hold <= hunger_in;
        end else if (save_load && sd_state == 1) begin //START LE LOAD PROCESS
            addr_latch <= address; //take current value of address
        end
    end 
    
    //STATE MACHINE FOR STATE OF SD_STUFF
    always_ff @(posedge clk_25mhz) begin
        if (reset) begin
            state <= FIRST_BOOT;
            rd <= 0;
            wr <= 0;
        end else begin
            case(state)
                FIRST_BOOT:
                    begin
                        if (sd_cd_debounce) begin //if card detected
                            state <= IDLE;
                        end
                    end
                IDLE:
                    begin
                        if (save_load && sd_state == 0) begin //SAVE
                            state <= START_WRITE;
                        end else if (save_load && sd_state == 1) begin //LOAD
                            state <= START_READ;
                        end
                    end
                START_READ:
                    begin
                        if (ready) begin
                            rd <= 1; //send pulse to start reading
                            state <= READ_B0;
                        end
                    end
                READ_B0:
                    begin
                        rd <= 0; //reset
                        if (rdyRD_edge) begin
                            tama_age_out <= dout[7:3];
                            tama_stage_out <= dout[2:0];
                            state <= READ_B1;
                        end
                    end
                READ_B1:
                    begin
                        if (rdyRD_edge) begin
                            tama_time_out <= dout[5:0];
                            state <= READ_B2;
                        end
                    end
                READ_B2:
                    begin
                        if (rdyRD_edge) begin
                            death_count_out <= dout[7:3];
                            tama_sprite_out <= dout[2:0];
                            state <= READ_B3;
                        end
                    end
                READ_B3:
                    begin
                        if (rdyRD_edge) begin
                            sound_off_out <= dout[6];
                            sick_out <= dout[5];
                            poop_out <= dout[4];
                            sleep_out <= dout[3];
                            state <= READ_B4;
                        end
                    end
                READ_B4:
                    begin
                        if (rdyRD_edge) begin
                            happy_out <= dout[7:5];
                            hunger_out <= dout[4:2];
                            state <= READ_WAIT;
                        end
                    end
                READ_WAIT:
                    begin
                        if (ready) begin //high once all 512 bytes are sent
                            state <= IDLE;
                        end
                    end
                START_WRITE: 
                    begin
                        if (ready) begin
                            wr <= 1;
                            state <= WRITE_B0;
                        end
                    end
                WRITE_B0: 
                    begin
                        wr <= 0; //reset
                        if (rdyWR_edge) begin
                            din <= {tama_age_hold, tama_stage_hold};
                            state <= WRITE_B1;
                        end
                    end
                WRITE_B1: 
                    begin
                        if (rdyWR_edge) begin
                            din <= {2'd0, tama_time_hold};
                            state <= WRITE_B2;
                        end
                    end
                WRITE_B2: 
                    begin
                        if (rdyWR_edge) begin
                            din <= {death_count_hold, tama_sprite_hold};
                            state <= WRITE_B3;
                        end
                    end
                WRITE_B3: 
                    begin
                        if (rdyWR_edge) begin
                            din <= {1'd0, sound_off_hold, sick_hold, poop_hold, sleep_hold, 3'd0};
                            state <= WRITE_B4;
                        end
                    end
                WRITE_B4: 
                    begin
                        if (rdyWR_edge) begin
                            din <= {happy_hold, hunger_hold, 2'd0};
                            state <= WRITE_WAIT;
                        end
                    end
                WRITE_WAIT: 
                    begin
                        if (ready) begin //high once all 512 bytes are sent
                            state <= IDLE;
                        end
                    end
                //We should be in IDLE by default...
                default:    state <= IDLE;
            endcase         
        end
    end //always_ff FSM for sd_buffer
endmodule