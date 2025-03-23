module t_ff (
  input T, clk,
  output reg Q, Q_not
);

  always @(posedge clk) begin
    Q <= T ^ Q; // Update Q based on T and previous Q
    Q_not = ~Q;   // Complement of Q (always updated)
  end
endmodule

