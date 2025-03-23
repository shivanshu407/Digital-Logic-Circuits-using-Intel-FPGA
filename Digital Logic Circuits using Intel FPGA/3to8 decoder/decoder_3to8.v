module decoder_3to8 (
  input [2:0] A,
  output reg [7:0] Y
);

  always @(*) begin
    Y = 8'b0; // Initialize all outputs low (default)
    case (A)
      3'b000: Y = 8'b0000_0001; // Output Y[0] high for A = 000
      3'b001: Y = 8'b0000_0010; // Output Y[1] high for A = 001
      3'b010: Y = 8'b0000_0100; // Output Y[2] high for A = 010
      3'b011: Y = 8'b0000_1000; // Output Y[3] high for A = 011
      3'b100: Y = 8'b0001_0000; // Output Y[4] high for A = 100
      3'b101: Y = 8'b0010_0000; // Output Y[5] high for A = 101
      3'b110: Y = 8'b0100_0000; // Output Y[6] high for A = 110
      3'b111: Y = 8'b1000_0000; // Output Y[7] high for A = 111
      default: Y = 8'bxxxx_xxxx; // Handle undefined cases (optional)
    endcase
  end
endmodule

