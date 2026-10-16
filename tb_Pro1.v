`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2026 13:44:50
// Design Name: 
// Module Name: tb_Pro1
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


module tb_Pro1;
  // Inputs
    reg l1_req;
    reg l2_req;
    reg l3_req;
    reg l4_req;

    // Outputs
    wire l1_en;
    wire l2_en;
    wire l3_en;
    wire l4_en;

    wire overload;
    wire power_ok;


    
    Pro1 DUT (

        .l1_req(l1_req),
        .l2_req(l2_req),
        .l3_req(l3_req),
        .l4_req(l4_req),

        .l1_en(l1_en),
        .l2_en(l2_en),
        .l3_en(l3_en),
        .l4_en(l4_en),

        .overload(overload),
        .power_ok(power_ok)
    );


    initial begin

        
        l1_req = 0;
        l2_req = 0;
        l3_req = 0;
        l4_req = 0;

        #10;


        
        l1_req = 1;

        #10;
        
        l2_req = 1;

        #10;

        l3_req = 1;

        #10;

        l4_req = 1;

        #10;

        l1_req = 0;
        l2_req = 0;
        l3_req = 0;
        l4_req = 1;

        #10;


        l1_req = 1;
        l2_req = 0;
        l3_req = 1;
        l4_req = 0;

        #10;


      
        $finish;

    end
endmodule
