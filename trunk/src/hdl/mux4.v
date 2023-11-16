module mux4(in1, in2, in3, in4, sl, out)
        input [31:0] in1, in2, in3;
        input [1:0] sl;
        output [31:0] out;

        assign out = (sl == 2'b00) ? in1 :
                (sl == 2'b01) ? in2 :
                (sl == 2'b10) ? in3 : 
                (sl == 2'b11) ? in4 :
                32'bx;
endmodule