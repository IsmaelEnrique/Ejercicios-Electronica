module E07_4_bit(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire y,
    output wire z,
    output wire f2
);

    assign y = (~a&d)|(a&~c&d)|(a&~b&c)|(a&b&c&d); // esta sin simplificar
    assign z = (b&d)|(a&~c&d); // esta sin simplificar
    //assign f2 = (~a&~b&c)|(~a&b&c)|(~b&a); // tomo x,y,z como a,b,c < -- sin simplificar
    assign f2 = (~a&c)|(~b&a); // tomo x,y,z como a,b,c

endmodule