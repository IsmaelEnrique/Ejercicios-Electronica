module Morgan_6_bit (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire e,
    input wire f,
    output wire Z,
    output wire G,
    output wire H
);

//Inciso A
assign Z = ~a|(b&c)|~(d&e)|~f;

//Inciso B
assign G= (a&~d)|(a&e)|(a&~f)|(b&~c&~d)|(b&~c&e)|(b&~c&~f);
    
endmodule