`timescale 1ns / 1ps

module dreg_test ();
  reg clk, rst, d;
  wire q;

  dreg UUT (.clk(clk), .rst(rst), .d(d), .q(q));

  initial begin
    #100; clk = 1; #100; clk = 0;
    #100; clk = 1; #100; clk = 0;
    #100; clk = 1; #100; clk = 0;
    #100; clk = 1; #100; clk = 0;
    #100; clk = 1; #100; clk = 0;

  end

  initial begin
    #650; rst = 1;
    #200; rst = 0;
  end

  initial begin
    #250; d = 1;
    #200; d = 0;
    #600; d = 1;
    #200; d = 0;

  end

  initial begin
    #1300;
      $finish;
  end

endmodule // dreg_test
