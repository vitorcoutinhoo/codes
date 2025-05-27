module regSISO(
    input logic clk, rst, din, wr_en,
    output logic dout
);
    logic[3: 0] q_next, q_reg;
    
    always_ff @(posedge clk, posedge rst) begin
        if (rst == 1'b1)
            q_reg <= 0;
        else if (wr_en == 1'b1)
            q_reg <= q_next;
    end

    assign q_next = {q_reg[2:0], din};
    assign dout = q_reg[3];
endmodule


