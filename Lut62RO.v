module Lut62RO(
(* s = "true" *)input en
    );

(* s = "true" *) wire RO, RO1;

LUT6_2 #(
.INIT(64'h0f0f000055550000) // Specify LUT Contents
) LUT6_2_inst (
 .O6(RO), // 1-bit LUT6 output
 .O5(RO1), // 1-bit lower LUT5 output
 .I0(RO), // 1-bit LUT input
 .I1(1'b0), // 1-bit LUT input
 .I2(RO1), // 1-bit LUT input
 .I3(1'b0), // 1-bit LUT input
 .I4(en), // 1-bit LUT input
 .I5(1'b1) // 1-bit LUT input (fast MUX select only available to O6 output)
);

endmodule
