`include "ex2.sv"

module tb_edge;
    logic clk, rst, level, tick;
    localparam T = 20;

    edge_dec uut(.*);

    always begin
        clk = 1'b0;
        # (T/2);
        clk = 1'b1;
        # (T/2);
    end

    initial begin
        rst = 1'b1;
        # (T);
        rst = 1'b0;
    end

    initial begin
        $dumpfile("ex2.vcd");
        $dumpvars(0, tb_edge);

        level = 0;
        @(negedge rst);
        repeat(20) begin
            @(negedge clk);
            level = 1;
            @(negedge clk);
            level = 0;
        end
        $finish;
    end
endmodule

