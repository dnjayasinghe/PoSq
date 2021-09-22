module LutLARO(
(* s = "true" *)input en
 );
 
(* s = "true" *)wire clk, clk1;
LUT2 #(
.INIT(4'b0100) // Specify LUT Contents
) LUT3_inst (
 .O(clk), // LUT general output
 .I0(clk1), // LUT input
 .I1(en) // LUT input
);

(* s = "true" *)   LDPE #(
.INIT(1'b0) // Initial value of latch (1'b0 or 1'b1)
) LDPE_insti (
 .Q(clk1), // Data output
 .PRE(1'b0), // Asynchronous clear/reset input
 .D(clk), // Data input
 .G(1'b1), // Gate input
 .GE(1'b1) // Gate enable input
);

endmodule