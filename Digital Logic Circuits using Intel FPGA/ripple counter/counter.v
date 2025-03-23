module counter (
  input clk,
  input reset,
  output reg [3:0] count
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 4'b0; // Reset counter to 0
    end else begin
      count <= count + 1'b1; // Increment counter
    end
  end
endmodule

