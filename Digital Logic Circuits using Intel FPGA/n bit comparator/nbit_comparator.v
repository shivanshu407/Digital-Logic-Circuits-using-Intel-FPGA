module nbit_comparator #(parameter N = 8) (
  input [N-1:0] A, B,
  output reg [2:0] GT, LT, EQ
);

  always @(*) begin
    GT = 1'b0; // Greater Than (default: false)
    LT = 1'b0; // Less Than (default: false)
    EQ = 1'b0; // Equal (default: false)

    if (A > B) begin
      GT = 1'b1;
    end else if (A < B) begin
      LT = 1'b1;
    end else begin
      EQ = 1'b1;
    end
  end
endmodule

