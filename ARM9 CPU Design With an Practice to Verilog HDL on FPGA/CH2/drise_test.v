module drise_test ();
reg clock, reset, D;
wire T;

drise UUT (.clock(clock), .reset(reset), .D(D), .T(T));

initial begin
  #100; clock = 1; #100; clock = 0;
  #100; clock = 1; #100; clock = 0;
  #100; clock = 1; #100; clock = 0;
  #100; clock = 1; #100; clock = 0;
  #100; clock = 1; #100; clock = 0;
end

initial begin
  #350; D = 1;
end

initial begin
  #350; reset = 0;
  #200; reset = 1;
end

initial begin
  #1000;
    $finish;
end

endmodule // drise_test
