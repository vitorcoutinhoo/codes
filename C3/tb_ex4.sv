`timescale 1ns/10ps
`include "ex4.sv"

module tb_ex4;
    localparam T = 20, N = 8;
    logic clk, rst, en, updown;
    logic[N-1:0] q;
    counter #(.N(N)) uut(.*);

    always begin
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
        #(T/2);
    end
    
    initial begin
        rst = 1'b1;
        #(T/2);
        rst = 1'b0;
    end

    initial begin
        $dumpfile("ex4.vcd");
        $dumpvars(0, tb_ex4);
        
        en = 1'b1;
        updown = 1'b1;
        @(negedge rst);
        repeat(20) @(negedge clk);
        updown = 1'b0;
        repeat(20) @(negedge clk);
        $finish;
    end
endmodule