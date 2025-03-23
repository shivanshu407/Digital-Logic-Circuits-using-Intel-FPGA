module mux32to1 (
  input [4:0] sel, // 5-bit selector for 32 inputs
  input [31:0] in,   // 32-bit data input
  output reg [31:0] out  // 32-bit data output
);

  always @(*) begin
    case (sel)
      5'b00000: out = in[0];  // Output = in[0] for sel = 00000
      5'b00001: out = in[1];  // Output = in[1] for sel = 00001
      5'b00010: out = in[2];  // Output = in[2] for sel = 00010
      5'b00011: out = in[3];  // Output = in[3] for sel = 00011
      5'b00100: out = in[4];  // Output = in[4] for sel = 00100
      5'b00101: out = in[5];  // Output = in[5] for sel = 00101
      5'b00110: out = in[6];  // Output = in[6] for sel = 00110
      5'b00111: out = in[7];  // Output = in[7] for sel = 00111
      5'b01000: out = in[8];  // Output = in[8] for sel = 01000
      5'b01001: out = in[9];  // Output = in[9] for sel = 01001
      5'b01010: out = in[10]; // Output = in[10] for sel = 01010
      5'b01011: out = in[11]; // Output = in[11] for sel = 01011
      5'b01100: out = in[12]; // Output = in[12] for sel = 01100
      5'b01101: out = in[13]; // Output = in[13] for sel = 01101
      5'b01110: out = in[14]; // Output = in[14] for sel = 01110
      5'b01111: out = in[15]; // Output = in[15] for sel = 01111
      5'b10000: out = in[16]; // Output = in[16] for sel = 10000
      5'b10001: out = in[17]; // Output = in[17] for sel = 10001
      5'b10010: out = in[18]; // Output = in[18] for sel = 10010
      5'b10011: out = in[19]; // Output = in[19] for sel = 10011
      5'b10100: out = in[20]; // Output = in[20] for sel = 10100
      5'b10101: out = in[21]; // Output = in[21] for sel = 10101
      5'b10110: out = in[22]; // Output = in[22] for sel = 10110
      5'b10111: out = in[23]; // Output = in[23] for sel = 10111
      5'b11000: out = in[24]; // Output = in[24] for sel = 11000
      5'b11001: out = in[25]; // Output = in[25] for sel = 11001
      5'b11010: out = in[26]; // Output = in[26] for sel = 11010
      5'b11011: out = in[27];
      5'b11100: out = in[28];
      5'b11101: out = in[29];
      5'b11110: out = in[30];
      5'b11111: out = in[31]; // Output = in[31] for sel = 11111
      default: out = 32'bxxxx_xxxx; // Handle undefined cases (optional)
    endcase
  end
endmodule

