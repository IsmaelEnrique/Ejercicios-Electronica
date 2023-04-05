module AB_4_bit (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire s
);
    
    ///Inciso A 
    // assign s=(a|b|c|d);

    ///Inciso B
    // assign s = a & b & c & d;

    //Inciso C
    assign s = (a&~b&c&~d) | (~a&~b&~c&d) | (~a&~b&c&~d) | (~a&b&~c&~d) | (a&~b&~c&~d);
endmodule