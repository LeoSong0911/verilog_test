module test;
  reg clk = 0;
  reg rst = 1;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, test);

    #10 rst = 0;
    #100 $finish;
  end
endmodule
