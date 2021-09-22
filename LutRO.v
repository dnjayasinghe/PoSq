module LutRO(
(* s = "true" *)input en
    );

(* s = "true" *) wire clk;

LUT2 #(
.INIT(4'b0100) // Specify LUT Contents
) LUT2_inst (
 .O(clk), // LUT general output
 .I0(clk), // LUT input
 .I1(en) // LUT input
);

endmodule