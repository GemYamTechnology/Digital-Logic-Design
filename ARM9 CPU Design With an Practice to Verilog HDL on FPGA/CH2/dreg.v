module dreg (clk, rst, d, q);
input clk, rst, d;
output q;
reg q;

always @ (posedge clk or posedge rst) begin
  if (rst) begin
    q <= 0;
  end else begin
    q <= d;
  end
end

endmodule // dreg
