module adder_carry(
    input logic[3:0] a,b,
    output logic cout,
    output logic[3:0] sum
);

    localparam N = 4, N1 = N-1;
    logic[N:0] sum_ext;

    assign sum_ext = {1'b0, a} + {1'b0, b};
    assign sum = sum_ext[N1:0];
    assign cout = sum_ext[N];
endmodule

