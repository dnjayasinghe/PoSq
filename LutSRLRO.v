module LutSRLRO(
(* s = "true" *)input en
    );

(* s = "true" *) wire clk;
(* s = "true" *) wire RO1, RO, RO2;


(*DONT_TOUCH= "true"*) LUT2 #(
.INIT(4'b0100) // Specify LUT Contents
) LUT2_inst (
 .O(RO), // LUT general output
 .I0(RO), // LUT input
 .I1(en) // LUT input
);

SRL16E #(
.INIT(16'hAAAA) // Initial Value of Shift Register
) SRL16E_inst (
 .Q(RO1), // SRL data output
 .A0(1'b1), // Select[0] input
 .A1(1'b1), // Select[1] input
 .A2(1'b1), // Select[2] input
 .A3(1'b1), // Select[3] input
 .CE(1'b1), // Clock enable input
 .CLK(RO), // Clock input
 .D(RO1) // SRL data input
);

endmodule

