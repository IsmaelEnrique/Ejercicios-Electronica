`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100ns/10ns

module nor_1_bit_tb();

parameter DURATION = 10;

reg clk =0;
always #0.5 clk=~clk;

reg test_a, test_b, test_c;
wire test_s;

nor_1_bit UUT(
    .a(test_a),
    .b(test_b),
    .c(test_c),
    .s(test_s)
);

integer i;
reg[2:0] i_b;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0,nor_1_bit_tb);

    for (i=0; i<8; i=i+1)
    begin
        $display("Current loop # %0d", i);
        $display("Current loop # %0b", i);

        #1
        i_b=i;
        test_a=i_b[2];
        test_b=i_b[1];
        test_c=i_b[0];
    end

    #(DURATION) $display("End of Simulator");
    $finish;
end
endmodule