`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100ns/10ns

module E06_4_bit_tb();

parameter DURATION = 10;

reg clk =0;
always #0.5 clk=~clk;

reg test_a, test_b, test_c,test_d;
wire test_f,test_g,test_h;

E06_4_bit UUT(
    .a(test_a),
    .b(test_b),
    .c(test_c),
    .d(test_d),
    .f(test_f),
    .g(test_g),
    .h(test_h)
);

integer i;
reg[3:0] i_b;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0,E06_4_bit_tb);

    for (i=0; i<16; i=i+1)
    begin
        $display("Current loop # %0d", i);
        $display("Current loop # %0b", i);

        #1
        i_b=i;
        test_a=i_b[3];
        test_b=i_b[2];
        test_c=i_b[1];
        test_c=i_b[0];
        
    end

     #(DURATION) $display("End of Simulator");
    $finish;
end
endmodule