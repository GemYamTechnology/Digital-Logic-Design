module drise (clock, reset, D, T);
input clock, reset, D;
output T;
reg Q;

always @ (posedge clock or posedge reset) begin
  if (reset) begin
    Q <= 1;
  end else begin
    Q <= D;
  end
end

assign T = (D & ~Q);

endmodule // drise
