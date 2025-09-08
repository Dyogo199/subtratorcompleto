// subtratorcompleto_tb.v
`timescale 1ns/1ps
`include "subtratorcompleto.v"

module subtratorcompleto_tb;
    reg a, b, cin;       // Entradas de teste
    wire s, cout;        // Saídas observadas

    // Instancia o módulo principal
    subtratorcompleto uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

    initial begin
        // Configura o arquivo para GTKWave
        $dumpfile("subtratorcompleto.vcd");
        $dumpvars(0, subtratorcompleto_tb);

        // Testa todas as combinações possíveis (tabela verdade)
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end
endmodule
