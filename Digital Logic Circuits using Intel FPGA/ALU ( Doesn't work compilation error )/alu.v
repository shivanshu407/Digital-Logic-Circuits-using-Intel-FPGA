module alu 

(
  input [7:0] A,  // 8-bit operand A
  input [7:0] B,  // 8-bit operand B
  input [3:0] opcode, // Opcode for selecting operation
  output reg [7:0] result, // Result of the operation
  output reg zero, // Flag indicating zero result
  output reg carry  // Flag indicating carry out for addition/subtraction
);

  always @(*) begin
    case (opcode)
      4'b0000: {carry, result} = A + B; // Addition
      4'b0001: {carry, result} = A - B; // Subtraction
      // Multiplication (not recommended for 8-bit due to overflow)
      // 4'b0010: result = A * B;
      4'b0011: {carry, result} = A / B; // Division (simplified for educational purposes)
      4'b0100: result = A == B; // Equal comparison
      4'b0101: result = A ^ B;   // XOR
      4'b0110: result = ~(A ^ B); // XNOR
      4'b0111: result = A & B;   // AND
      default: result = 8'bX;     // Default behavior for invalid opcode
    end
    
	zero = (result == 8'b0); // Set zero flag if result is zero
  end

endmodule  // Added the missing endmodule statement

