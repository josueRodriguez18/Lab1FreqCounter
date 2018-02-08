//Test bench for BCD to Segment file
`timescale 1 us/ 1ps
module BCD_Test();
    reg[3:0]BCD;
    wire[6:0] seg;
    //this test bench is really simple, nothing is time dependent
    initial begin
        BCD = 4'b0101; //unsigned random number between 0-15
                            //not sure if this works
    end

    bcd_to_seg testB(BCD, seg);

    /*
        number codes
        BCD             seg         number
        0000------------1111110     0
        0001------------0110000     1
        0010------------1101101     2
        0011------------1111001     3
        0100------------0110011     4
        0101------------1011011     5
        0110------------1011111     6
        0111------------1110000     7
        1000------------1111111     8
        1001------------1111011     9
        1010------------1110111     A
        1011------------0011111     B
        1100------------1001110     C
        1101------------0111101     D
        1110------------1001111     E
        1111------------1000111     F

        I tried to format this to the best of my ability



    */
endmodule
