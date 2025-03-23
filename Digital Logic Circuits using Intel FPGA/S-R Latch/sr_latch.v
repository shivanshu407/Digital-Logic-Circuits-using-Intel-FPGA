module sr_latch (
  input S, R,
  output reg Q, Q_not
);

  always @(S or R) begin
    if (S & ~R) begin  // Set S = 1, Reset = 0 -> Set Q = 1, Q_not = 0
      Q = 1'b1;
      Q_not = 1'b0;
    end else if (~S & R) begin // Set S = 0, Reset = 1 -> Set Q = 0, Q_not = 1
      Q = 1'b0;
      Q_not = 1'b1;
    end else begin  // Invalid or hold condition (both S and R are 0 or 1)
      // Maintain previous state
    end
  end
endmodule

