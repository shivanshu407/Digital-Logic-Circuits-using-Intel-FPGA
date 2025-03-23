module cla_8bit (A, B, Cin, Sum, Cout);
  input [7:0] A, B;
  input Cin;
  output [7:0] Sum;
  output Cout;

  wire [7:0] P, G;
  wire [6:0] carry;

  clu clu0 (A[0], B[0], Cin, P[0], G[0]);
  clu clu1 (A[1], B[1], P[0], P[1], G[1]);
  clu clu2 (A[2], B[2], P[1], P[2], G[2]);
  clu clu3 (A[3], B[3], P[2], P[3], G[3]);
  clu clu4 (A[4], B[4], P[3], P[4], G[4]);
  clu clu5 (A[5], B[5], P[4], P[5], G[5]);
  clu clu6 (A[6], B[6], P[5], P[6], G[6]);
  clu clu7 (A[7], B[7], P[6], P[7], G[7]);

  // Carry chain logic
  assign carry[0] = G[0];
  generate
    genvar i;
    for (i = 1; i < 7; i = i + 1) begin
      assign carry[i] = G[i] | (P[i] & carry[i-1]);
    end
    assign carry[7] = G[7] | (P[7] & carry[6]);
  endgenerate

  // Generate sum outputs
  generate
    for (i = 0; i < 8; i = i + 1) begin
      assign Sum[i] = P[i] ^ B[i] ^ carry[i-1];
    end
  endgenerate

  assign Cout = carry[7];
endmodule

