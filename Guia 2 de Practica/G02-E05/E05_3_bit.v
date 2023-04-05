module E05_3_bit(
    input wire a,
    input wire b,
    input wire c,
    output wire f,
    output wire g,
    output wire h,
    output wire l
);

    assign f = a&b;
    assign g = c;
    assign h = b|(c&(a|b));
    assign l = a&b;
endmodule