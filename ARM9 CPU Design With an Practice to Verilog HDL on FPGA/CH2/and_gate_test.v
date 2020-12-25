`timescale 1ns / 1ps

module and_date_test ();

reg a, b;
wire c;

and_date UUT (.a(a), .b(b), .c(c));

initial begin
  #100; a = 0; b = 0;
  #100; a = 0; b = 1;
  #100; a = 1; b = 0;
  #100; {a, b} = 3;
end

initial begin
  #500;
    $finish;
end

endmodule // and_date_test
