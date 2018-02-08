
module bcd_to_seg (BCD, seg);
	
    output [6:0]seg;
    input [3:0]BCD; //BCD has a 4 bit range (0-15) so ABCDEF conditions are added despite not being used
    reg [6:0]seg;
    always @(BCD)
        begin
            case(BCD) 
                4'b0000:begin				//0
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b0; //g
                end
                4'b0001:begin				//1
                    seg[0] = 1'b0; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b0; //d
                    seg[4] = 1'b0; //e
                    seg[5] = 1'b0; //f
                    seg[6] = 1'b0; //g
                end
                4'b0010:begin				//2
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b0; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b0; //f
                    seg[6] = 1'b1; //g
                end
                4'b0011:begin				//3
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b0; //e
                    seg[5] = 1'b0; //f
                    seg[6] = 1'b1; //g
                end
                4'b0100:begin				//4
                    seg[0] = 1'b0; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b0; //d
                    seg[4] = 1'b0; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b0101:begin				//5
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b0; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b0; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b0110:begin				//6
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b0; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b0111:begin				//7
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b0; //d
                    seg[4] = 1'b0; //e
                    seg[5] = 1'b0; //f
                    seg[6] = 1'b0; //g
                end
                4'b1000:begin				//8
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b1001:begin				//9
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b0; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b1010:begin				//A
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b0; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b1011:begin				//B
                    seg[0] = 1'b0; //a
                    seg[1] = 1'b0; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b1100:begin				//C
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b0; //b
                    seg[2] = 1'b0; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b0; //g
                end
                4'b1101:begin				//D
                    seg[0] = 1'b0; //a
                    seg[1] = 1'b1; //b
                    seg[2] = 1'b1; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b0; //f
                    seg[6] = 1'b1; //g
                end
                4'b1110:begin				//E
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b0; //b
                    seg[2] = 1'b0; //c
                    seg[3] = 1'b1; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
                4'b1111:begin				//F
                    seg[0] = 1'b1; //a
                    seg[1] = 1'b0; //b
                    seg[2] = 1'b0; //c
                    seg[3] = 1'b0; //d
                    seg[4] = 1'b1; //e
                    seg[5] = 1'b1; //f
                    seg[6] = 1'b1; //g
                end
            
            endcase

        end

endmodule
