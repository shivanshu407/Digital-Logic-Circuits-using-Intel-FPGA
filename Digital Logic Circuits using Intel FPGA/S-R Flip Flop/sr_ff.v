module sr_ff (
  input S, R, clk,
  output reg Q, Q_not
);

  always @(posedge clk) begin
    if (S & ~R) begin  // Set S and Reset R (active low)
      Q <= 1'b1;
      Q_not <= 1'b0;
    end else if (~S & R) begin  // Reset S and Set R (active low)
      Q <= 1'b0;
      Q_not <= 1'b1;
    end else begin  // Invalid or hold state
      Q <= Q;  // Maintain previous Q
      Q_not <= ~Q;  // Update complement
    end
  end
endmodule

