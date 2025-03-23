module johnson_counter (
  input clk,
  input reset,
  output reg [3:0] count
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 4'b0; // Reset counter to 0
    end else begin
      count[3] <= ~count[0];  // Invert the last bit and shift
      count[2:0] <= count[3:1];
    end
  end
endmodule

