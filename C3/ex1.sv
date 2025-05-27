module regPIPO (
    input logic clk, rst, wr_en,
    input logic[3: 0] din,
    output logic[3: 0] dout
);
    logic[3: 0] q_next, q_reg;
    always_ff @(posedge clk, posedge rst) begin
        if(rst == 1'b1)
            q_reg <= 0;
        else if(wr_en == 1'b1)
            q_reg <= q_next;
    end

    assign q_next = din;
    assign dout = q_reg;
endmodule

