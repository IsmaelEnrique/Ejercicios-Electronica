module my_mux(
    input wire [3:0] D,
    input wire [3:0] Sel,
    output wire Y
);

assign Y =(D[0] & ~Sel[1] & ~Sel[0])|
(D[0] & ~Sel[1] & ~Sel[0])|
(D[0] & ~Sel[1] & ~Sel[0])|
(D[0] & ~Sel[1] & ~Sel[0]);

endmodule