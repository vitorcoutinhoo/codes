module comb (
    input a, b,
    output c
);
    logic s1, s2;
    assign s1 = a & b;
    assign s2 = ~a & ~b;
    assign c = s1 | s2;

endmodule
module comparator(
    input logic[1: 0] a, b,
    output logic c
);
    comb uni1 (.a(a[0]), .b(b[0]), .c(s1));
    comb uni2 (.a(a[1]), .b(b[1]), .c(s2));

    assign c = s1 & s2;
endmodule