module sr_ff_tb;

  reg S, R, clk;
  wire Q, Q_not;

  sr_ff dut (S, R, clk, Q, Q_not);

  initial begin
    clk = 0;
    #10; // Wait for 10 ns for initial settling

    // Test all possible combinations of S and R
    S = 1'b0; R = 1'b0; #20; // No change (hold)
    S = 1'b1; R = 1'b0; #20; // Set (Q = 1)
    S = 1'b0; R = 1'b1; #20; // Reset (Q = 0)
    S = 1'b1; R = 1'b1; #20; // Invalid (maintain previous state)

    $finish;
  end

  always #10 clk = ~clk; // Toggle clock every 10 ns

  always @(posedge dut.clk) begin
    $display("S = %b, R = %b, Q = %b, Q_not = %b", S, R, Q, Q_not);
  end
endmodule

