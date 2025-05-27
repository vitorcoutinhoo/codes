`timescale 1ps/1ps
`include "ex6.sv"

module tb_ex6;
    logic [1:0] A, B;
    logic X;

    comparator UUT (
        .a(A),
        .b(B),
        .c(X)
    );

    initial begin
        $dumpfile("ex6.vcd");
        $dumpvars(0, tb_ex6);

        A = 2'b00; B = 2'b00;
        #200;
        A = 2'b01; B = 2'b00;
        #200;
        A = 2'b10; B = 2'b00;
        #200;
        $finish;
    end

endmodule