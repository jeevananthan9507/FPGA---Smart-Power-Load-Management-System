`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2026 13:43:25
// Design Name: 
// Module Name: Pro1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Pro1(
    input  l1_req,
    input  l2_req,
    input  l3_req,
    input  l4_req,

    output l1_en,
    output l2_en,
    output l3_en,
    output l4_en,

    output overload,
    output power_ok
);

    

    localparam integer AVAILABLE_POWER = 100;

    
    localparam integer L1_POWER = 20;
    localparam integer L2_POWER = 30;
    localparam integer L3_POWER = 40;
    localparam integer L4_POWER = 50;

    integer remaining_power;
    integer total_power;

    reg l1;
    reg l2;
    reg l3;
    reg l4;

    always @(*) begin

        
        l1 = 0;
        l2 = 0;
        l3 = 0;
        l4 = 0;

        
        remaining_power = AVAILABLE_POWER;

        total_power = 0;

        if (l1_req)
            total_power = total_power + L1_POWER;

        if (l2_req)
            total_power = total_power + L2_POWER;

        if (l3_req)
            total_power = total_power + L3_POWER;

        if (l4_req)
            total_power = total_power + L4_POWER;


        
        if (l1_req && remaining_power >= L1_POWER) begin
            l1 = 1;
            remaining_power = remaining_power - L1_POWER;
        end


        
        if (l2_req && remaining_power >= L2_POWER) begin
            l2 = 1;
            remaining_power = remaining_power - L2_POWER;
        end



        if (l3_req && remaining_power >= L3_POWER) begin
            l3 = 1;
            remaining_power = remaining_power - L3_POWER;
        end


        
        if (l4_req && remaining_power >= L4_POWER) begin
            l4 = 1;
            remaining_power = remaining_power - L4_POWER;
        end

    end

    

    assign l1_en = l1;
    assign l2_en = l2;
    assign l3_en = l3;
    assign l4_en = l4;

    
    assign overload = (total_power > AVAILABLE_POWER);

    
    assign power_ok = (total_power <= AVAILABLE_POWER);

endmodule
