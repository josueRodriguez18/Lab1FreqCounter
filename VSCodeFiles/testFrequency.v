`timescale 1 us/ 1ps
module testFrequency();
    reg sigin;
    reg clck;
    wire[0:6] seg;
    wire[0:7] number;

    initial begin
        clck = 1; //initialize clock to 1 (this will be gate input)
        sigin = 0; //initialize signal to 0
    end    
    always
        begin
            #10 sigin = ~sigin; //invert signal to create square wave (has period of 50 ms)
            #1 clck = ~clck; //regulates update rate for ouput of segments and numbers
        end
    frequency f1(sigin, clck, number, seg);
endmodule