module sr_latch_tb;

  reg S, R;
  wire Q, Q_not;

  sr_latch dut (S, R, Q, Q_not);

  initial begin
    // Test all possible combinations of S and R
    S = 1'b0; R = 1'b0; #10; // Hold (maintain previous state)
    S = 1'b0; R = 1'b1; #10; // Reset (Q = 0, Q_not = 1)
    S = 1'b1; R = 1'b0; #10; // Set (Q = 1, Q_not = 0)
    S = 1'b1; R = 1'b1; #10; // Invalid (maintain previous state)
    $finish;
  end

  always @(posedge dut.Q or posedge dut.Q_not) begin
    $display("S = %b, R = %b, Q = %b, Q_not = %b", S, R, Q, Q_not);
  end
endmodule

