module comb (
    input a, b,
    output c
);
    logic s1, s2;
    assign s1 = a & b;
    assign s2 = ~a & ~b;
    assign c = s1 | s2;

endmodule