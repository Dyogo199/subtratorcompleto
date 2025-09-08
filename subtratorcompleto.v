// subtratorcompleto.v
module subtratorcompleto (a, b, cin, s, cout);
    input a, b, cin;     // Entradas
    output s, cout;      // Saídas

    // Lógica do Subtrator Completo
    assign s    = a ^ b ^ cin;               // Diferença
    assign cout = (~a & b) | ((~(a ^ b)) & cin); // Empréstimo (Borrow)
endmodule
