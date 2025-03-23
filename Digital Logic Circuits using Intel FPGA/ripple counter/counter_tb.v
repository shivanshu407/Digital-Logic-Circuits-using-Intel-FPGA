module counter_tb;

  reg clk, reset;
  wire [3:0] count;

  counter dut (clk, reset, count);

  initial begin
    clk = 0;
    reset = 1;
    #10; // Wait for 10 ns for reset to settle

    reset = 0;
    #100; // Run the counter for 100 ns (10 clock cycles)

    $finish;
  end

  always #5 clk = ~clk; // Toggle clock every 5 ns

  always @(posedge dut.count) begin
    $display("Count = %d", count);
  end
endmodule

