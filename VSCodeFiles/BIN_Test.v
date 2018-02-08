`timescale 1us / 1 ps
//very similar to BCD_Test
module BIN_Test();
    reg[26:0] binary;
    wire[3:0] one, ten ,hundred ,thousands,ten_thousands,hundred_thousands,millions,ten_millions;
    
    initial begin
        binary = $urandom %26'bFFFFFFF;
        /*not sure at all if this works just trying to get maxval of 26bit number*/
    end
    bin_to_bcd b1(binary, one, ten ,hundred ,thousands,ten_thousands,hundred_thousands,millions,ten_millions);
    /*Binary values of individual digits should correspond to output values
    Example: 1234

            1   = thousands = 0001
            2   = hundreds =  0010
            3   = tens =      0011
            4   = ones =      0100
endmodule