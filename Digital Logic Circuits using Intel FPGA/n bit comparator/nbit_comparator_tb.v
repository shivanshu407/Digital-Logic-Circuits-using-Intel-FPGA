module nbit_comparator_tb #(parameter N = 8);

  reg [N-1:0] A, B;
  wire [2:0] GT, LT, EQ;

  nbit_comparator #(N) dut (A, B, GT, LT, EQ);

  initial begin
    // Test cases for different scenarios
    A = 4'b1010; B = 4'b1011; // A < B
    #10;

    A = 4'b1100; B = 4'b1100; // A = B
    #10;

    A = 4'b1111; B = 4'b1001; // A > B
    #10;

    $finish;
  end

  always @(posedge dut.GT or posedge dut.LT or posedge dut.EQ) begin
    $display("A = %b, B = %b, GT = %b, LT = %b, EQ = %b", A, B, GT, LT, EQ);
  end
endmodule

