module jk_latch (
  input J, K, clk,
  output reg Q, Q_not
);

  always @(posedge clk) begin
    case ({J, K})
      2'b00: Q <= Q; // No change (hold)
      2'b01: Q <= 1'b0; // Reset (Q = 0)
      2'b10: Q <= 1'b1; // Set (Q = 1)
      2'b11: Q <= ~Q; // Toggle (invert Q)
    endcase
    Q_not = ~Q; // Complement of Q (always updated)
  end
endmodule

