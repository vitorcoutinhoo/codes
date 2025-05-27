module tb_operadores;
    logic [3:0] a, b, c;

    initial begin
        a = 4'b0110; 
        b = 4'b1001;

        if(a > b) 
            $display("a eh maior que b");
        if(a < b) 
            $display("a eh menor que b");
        if(a >= b) 
            $display("a eh maior ou igual a b");
        if(a <= b)
            $display("a eh menor ou igual a b");
        if(a == b)
            $display("a eh igual a b");
        if(a != b)
            $display("a eh diferente de b");
        $finish;
    end
endmodule
