//will calculate frequency and display it to board
module (signalIn, clock, digit, segment);

output [0:7] segment; //seven segment display
output [0:7] digit; //eight big combination for digit
input clock;
input signalIn; //signal

reg[0:7] digit= 8'b01;
reg[0:31]frequency;
wire[3:0]dispdata[0:7];
reg[0:2]digit_scan;
reg[0:23]disp_scanner;

reg[0:31]gatecounter;
reg gate;
wire[31:0] count;

endmodule