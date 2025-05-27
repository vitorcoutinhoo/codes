module tb_operadores;
    logic [3:0] a, b, c;

    initial begin
        a = 4'b0110; 
        b = 4'b1001;
        
        if((a > b) && (c < b))
            $display("Teste 1 verdadeiro");
        if((a > b) || (c < b))
            $display("Teste 2 verdadeiro");
        if(!(a >= b))
            $display("Teste 3 verdadeiro");
        
        $display("Concatenacao de a e b: %b", {a, b});
        $display("Concatenacao e repeticao de padrao: %0b", {{4{2'b01}}});
        $finish;
    end
endmodule