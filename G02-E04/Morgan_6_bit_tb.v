`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100ns/10ns

module Morgan_6_bit_tb();

parameter DURATION = 10;

reg clk =0;
always #0.5 clk=~clk;

reg test_a, test_b, test_c, test_d, test_e, test_f;
wire test_Z, test_G, test_H;

Morgan_6_bit UUT(
    .a(test_a),
    .b(test_b),
    .c(test_c),
    .d(test_d),
    .e(test_e),
    .f(test_f),
    .Z(test_Z),
    .G(test_G),
    .H(test_H)  
);

integer i;
reg[5:0] i_b;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0,Morgan_6_bit_tb);

    for (i=0; i<64; i=i+1)
    begin
        $display("Current loop # %0d", i);
        $display("Current loop # %0b", i);

        #1
        i_b=i;
        test_a=i_b[5];
        test_b=i_b[4];
        test_c=i_b[3];
        test_d=i_b[2];
        test_e=i_b[1];
        test_f=i_b[0];
    end

     #(DURATION) $display("End of Simulator");
    $finish;
end

endmodule