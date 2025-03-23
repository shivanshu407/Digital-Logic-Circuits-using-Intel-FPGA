module jk_ff (
  input J, K, clk,
  output reg Q, Q_not
);

  always @(posedge clk) begin
    case ({J, K})
      2'b00: Q <= Q; // No change (hold)
      2'b01: Q <= 1'b0; // Reset (set Q to 0)
      2'b10: Q <= 1'b1; // Set (set Q to 1)
      2'b11: Q <= ~Q; // Toggle
    endcase
    Q_not <= ~Q;  // Update complement
  end
endmodule

