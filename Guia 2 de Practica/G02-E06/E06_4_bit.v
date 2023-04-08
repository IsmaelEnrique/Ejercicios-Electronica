module E06_4_bit(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire f,
    output wire g,
    output wire h
);

    assign f = a;
    assign g = c;
    assign h = b|(c&(a|b));
    // ta dudoso

endmodule