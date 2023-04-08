`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100ns/10ns

module E07_4_bit_tb();

//-- Tiempo de simulación: 1us (10 * 100ns)
parameter DURATION = 10;

reg clk =0;
always #0.5 clk=~clk;

reg test_a, test_b, test_c,test_d;
wire test_y,test_z,test_f2;

//-- Instanciamos la unidad a probar
E07_4_bit UUT(
    .a(test_a),
    .b(test_b),
    .c(test_c),
    .d(test_d),
    .y(test_y),
    .z(test_z),
    .f2(test_f2)
);

integer i;
reg[3:0] i_b;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0,E07_4_bit_tb);

    for (i=0; i<16; i=i+1)
    begin
        $display("Bucle actual # %0d", i);
        $display("Bucle actual # %0b", i);

        #1
        i_b=i;
        test_a=i_b[3];
        test_b=i_b[2];
        test_c=i_b[1];
        test_d=i_b[0];
        
    end

     #(DURATION) $display("Fin del simulador");
    $finish;
end
endmodule