`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100ns/10ns

module sumador_4_bit_tb();

parameter DURATION = 10;

reg clk =0;
always #0.5 clk=~clk;

reg[3:0] test_a;
reg[3:0] test_b;
reg[3:0] cin;
reg[3:0] cout;
wire[4:0] test_sum;

sumador_4_bit UUT(
    .A(test_a),
    .B(test_b),
    .CIN(cin),
    .COUT(cout),
    .S(test_sum)
);

integer i;
reg[7:0] i_b;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0,sumador_4_bit_tb);

    for (i=0; i<256; i=i+1)
    begin
        $display("Bucle actual # %0d", i);
        $display("Bucle actual # %0b", i);

        #1
        i_b=i;
        test_b[3]=i_b[7];
        test_b[2]=i_b[6];
        test_b[1]=i_b[5];
        test_b[0]=i_b[4];
        test_a[3]=i_b[3];
        test_a[2]=i_b[2];
        test_a[1]=i_b[1];
        test_a[0]=i_b[0];
        
    end

     #(DURATION) $display("Fin de la simulacion");
    $finish;
end
endmodule