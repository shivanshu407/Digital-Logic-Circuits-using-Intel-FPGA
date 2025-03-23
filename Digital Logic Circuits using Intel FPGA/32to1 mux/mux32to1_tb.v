module mux32to1_tb;

  reg [4:0] sel;
  reg [31:0] in;
  wire [31:0] out;

  mux32to1 dut (sel, in, out);

  initial begin
    // Test all possible selector combinations
    in = 32'hDEADBEEF;  // Set a specific data pattern
    sel = 5'b00000; #10; // Test selection of in[0]
    sel = 5'b00001; #10; // Test selection of in[1]
    sel = 5'b00010; #10; // Test selection of in[2]
    sel = 5'b00011; #10; // Test selection of in[3]
    sel = 5'b00100; #10; // Test selection of in[4]
    sel = 5'b00101; #10; // Test selection of in[5]
    sel = 5'b00110; #10; // Test selection of in[6]
    sel = 5'b00111; #10; // Test selection of in[7]
    sel = 5'b01000; #10; // Test selection of in[8]
    sel = 5'b01001; #10; // Test selection of in[9]
    sel = 5'b01010; #10; // Test selection of in[10]
    sel = 5'b01011; #10; // Test selection of in[11]
    sel = 5'b01100; #10; // Test selection of in[12]
    sel = 5'b01101; #10; // Test selection of in[13]
    sel = 5'b01110; #10; // Test selection of in[14]
    sel = 5'b01111; #10; // Test selection of in[15]
    sel = 5'b10000; #10; // Test selection of in[16]
    sel = 5'b10001; #10; // Test selection of in[17]
    sel = 5'b10010; #10; // Test selection of in[18]
    sel = 5'b10011; #10; // Test selection of in[19]
    sel = 5'b10100; #10; // Test selection of in[20]
    sel = 5'b10101; #10; // Test selection of in[21]
    sel = 5'b10110; #10; // Test selection of in[22]
    sel = 5'b10111; #10; // Test selection of in[23]
    sel = 5'b11000; #10; // Test selection of in[24]
    sel = 5'b11001; #10; // Test selection of in[25]
    sel = 5'b11010; #10; // Test selection of in[26]
    sel = 5'b11011; #10; // Test selection of in[27]
    sel = 5'b11100; #10; // Test selection of in[28]
    sel = 5'b11101; #10; // Test selection of in[29]
    sel = 5'b11110; #10; // Test selection of in[30]
    sel = 5'b11111; #10; // Test selection of in[31]
    $finish;
  end

  always @(posedge dut.out) begin
    $display("sel = %b, out = %h", sel, out);
  end
endmodule

