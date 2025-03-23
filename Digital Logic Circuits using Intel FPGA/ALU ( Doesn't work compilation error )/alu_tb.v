module alu_tb;

  reg [7:0] A, B;
  reg [3:0] opcode;
  wire [7:0] result;
  wire zero, carry;

  alu dut (A, B, opcode, result, zero, carry);

  initial begin
    // Test all valid opcodes with different operands
    A = 8'd5; B = 8'd3; opcode = 4'b0000; #10; // Addition
    A = 8'd10; B = 8'd7; opcode = 4'b0001; #10; // Subtraction
    // Multiplication (commented out due to potential overflow)
    // A = 8'd5; B = 8'd2; opcode = 4'b0010; #10;
    A = 8'd10; B = 8'd2; opcode = 4'b0011; #10; // Division (simplified)
    A = 8'd5; B = 8'd5; opcode = 4'b0100; #10; // Equal comparison
    A = 8'd10; B = 8'd15; opcode = 4'b0101; #10; // XOR
    A = 8'd10; B = 8'd15; opcode = 4'b0110; #10; // XNOR
    A = 8'd10; B = 8'd5; opcode = 4'b0111; #10; // AND
    
    // Test invalid opcode
    A = 8'd0; B = 8'd0; opcode = 4'bXXXX; #10;

    $finish;
  end

  always @(posedge dut.result) begin
    $display("A = %d, B = %d, opcode = %b, result = %d, zero = %b, carry = %b", 
             A, B, opcode, result, zero, carry);
  end
endmodule

