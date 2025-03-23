module cla_8bit_tb;
  reg [7:0] A, B;
  reg Cin;
  wire [7:0] Sum;
  wire Cout;

  cla_8bit dut (A, B, Cin, Sum, Cout);

  initial begin
    $display("Testing 8-bit Carry Look-Ahead Adder");
    $monitor("A = %d, B = %d, Cin = %d, Sum = %d, Cout = %d", A, B, Cin, Sum, Cout);

    // Test cases with different values
    A = 8'd56;
    B = 8'd38;
    Cin = 1'b0;
    #10;

    A = 8'd127;
    B = 8'd255;
    Cin = 1'b1;
    #10;

    A = 8'd250;
    B = 8'd50;
    Cin = 1'b0;
    #10;

    $finish;
  end
endmodule
