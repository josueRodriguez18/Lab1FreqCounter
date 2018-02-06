module testFrequency();
    reg[0:32] sigin;
    reg clck;
    wire[0:7] segment;
    wire[0:7] digit;

    initial begin
        clck = 1; //initialize clock to 1 (this will be gate input)
        sigin = 0; //initialize signal to 0
    end    
    always
        begin
            #10 sigin = ~sigin; //invert signal to create square wave
            #100 clck = ~clck;
        end
    frequency(sigin, clck, digit, segment);
endmodule