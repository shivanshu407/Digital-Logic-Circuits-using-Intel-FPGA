module t_ff_tb;

  reg T, clk;
  wire Q, Q_not;

  t_ff dut (T, clk, Q, Q_not);

  initial begin
    clk = 0;
    #10; // Wait for 10 ns for initial settling

    // Test all possible values of T on clock pulses
    T = 1'b0; #20; // No change (hold)
    T = 1'b1; #20; // Toggle (invert Q on clock pulse)
    T = 1'b0; #20; // No change (hold previous state)

    $finish;
  end

  always #10 clk = ~clk; // Toggle clock every 10 ns

  always @(posedge dut.clk) begin
    $display("T = %b, Q = %b, Q_not = %b", T, Q, Q_not);
  end
endmodule

