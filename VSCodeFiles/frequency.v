//will calculate frequency and display it to board
module frequency(signalIn, clock, digit, segment);

output [6:0] segment; //seven segment display
output [7:0] digit; //eight big combination for digit
input clock;
input signalIn; //signal

reg[7:0] digit= 8'b01;
reg[31:0]freq;
wire[3:0]dispdata[0:7];
reg[2:0]digit_scan = 3'b0;
reg[23:0]disp_scanner = 24'b0;

reg[31:0]gatecounter = 32'b0;
reg gate;
wire[31:0] count;

//bcd stuff
bcd_to_seg s1(dispdata[digit_scan],segment);
bin_to_bcd b1(freq,dispdata[0],dispdata[1],dispdata[2],dispdata[3],dispdata[4],dispdata[5],
dispdata[6],dispdata[7]);



counter c1(gate, signalIn, count);

always@(posedge clock)
    begin
        if(!gatecounter)
            begin
                gatecounter = 'd2500;
                gate = 0;
                freq = count;
            end
        else
            begin
                gate = 1;
            end

        gatecounter = gatecounter - 1'b1;
        disp_scanner = disp_scanner + 1'b1;
        if(disp_scanner == 'd5000)
            begin
                digit = {digit[6:0], digit[7]};
                digit_scan = digit_scan + 'd1;
                disp_scanner = 0;
            end

    end

endmodule