module logic_gates_tb;
  reg a, b;
  wire out_and, out_or, out_not, out_nand, out_nor, out_xor, out_xnor;

  // Instantiate the Device Under Test (DUT)
  logic_gates dut (
    .a(a), .b(b),
    .out_and(out_and),
    .out_or(out_or),
    .out_not(out_not),
    .out_nand(out_nand),
    .out_nor(out_nor),
    .out_xor(out_xor),
    .out_xnor(out_xnor)
  );

  initial begin
    $monitor("%t | A=%d | B=%d | out_and=%d | out_nand=%d | out_or=%d | out_nor=%d | out_xor=%d | out_xnor=%d | out_not=%d",
             $time, a, b, out_and, out_nand, out_or, out_nor, out_xor, out_xnor, out_not);

    a = 0; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #10;
    $finish;
  end
endmodule
