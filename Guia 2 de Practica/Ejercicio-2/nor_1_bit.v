module nor_1_bit (
    input wire a,
    input wire b,
    input wire c,
    output wire s
);
    
    assign s=!(a|b|c);
endmodule