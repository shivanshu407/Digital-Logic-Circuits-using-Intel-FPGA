module jk_ff_tb;

  reg J, K, clk;
  wire Q, Q_not;

  jk_ff dut (J, K, clk, Q, Q_not);

  initial begin
    clk = 0;
    #10; // Wait for 10 ns for initial settling

    // Test all possible combinations of J and K
    J = 1'b0; K = 1'b0; #20; // No change (hold)
    J = 1'b0; K = 1'b1; #20; // Reset (Q = 0)
    J = 1'b1; K = 1'b0; #20; // Set (Q = 1)
    J = 1'b1; K = 1'b1; #20; // Toggle (flips Q on each clock pulse)

    $finish;
  end

  always #10 clk = ~clk; // Toggle clock every 10 ns

  always @(posedge dut.clk) begin
    $display("J = %b, K = %b, Q = %b, Q_not = %b", J, K, Q, Q_not);
  end
endmodule

