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
    assign g = ~b&c;
    //assign h = b|(c&(a|b));
    assign h = (a&~b&(c|b&d)|~a&~b)&c;
endmodule