module ring_counter (
  input clk,
  input reset,
  output reg [3:0] count
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 4'b0001; // Initialize to 1 for ring counter behavior
    end else begin
      count <= {count[2:0], count[3]}; // Shift the bits for ring counter
    end
  end
endmodule
