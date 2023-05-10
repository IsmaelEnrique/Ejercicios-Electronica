`include "/Guia 4 de Practica/E01-G04/sumador_completo_1_bit/sumador_completo_1_bit.v"

module sumador_4_bit  (
    input wire [3:0] A;
    input wire [3:0] B;
    input wire [3:0] CIN;
    output wire [3:0] COUT;
    output wire [4:0]S;
);

wire [3:0] xor_AB;

// hacemos 4 sumadores de un bit
sumador_completo_1_bit sum0(
    .x(A[0]),
    .y(B[0]),
    .c_in(CIN[0]),
    .s(S[0]),
    .c_out(COUT[0])
)
sumador_completo_1_bit sum1(
    .x(A[1]),
    .y(B[1]),
    .c_in(CIN[1]),
    .s(S[1]),
    .c_out(COUT[1])
)
sumador_completo_1_bit sum2(
    .x(A[2]),
    .y(B[2]),
    .c_in(CIN[2]),
    .s(S[2]),
    .c_out(COUT[2])
)
sumador_completo_1_bit sum3(
    .x(A[3]),
    .y(B[3]),
    .c_in(CIN[3]),
    .s(S[3]),
    .c_out(COUT[3])
)

S[4]=COUT[3];

    
endmodule