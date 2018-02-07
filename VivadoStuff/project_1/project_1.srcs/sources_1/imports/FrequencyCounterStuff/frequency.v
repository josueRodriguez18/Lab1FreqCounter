//will calculate frequency and display it to board
module frequency(signalIn, clock, digit, segment);

output [7:0] segment; //seven segment display
output [7:0] digit; //eight big combination for digit
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

bcd_to_seg s1(dispdata[digit_scan],segment);
bin_to_bcd b1(freq,dispdata[0],dispdata[1],dispdata[2],dispdata[3],dispdata[4],dispdata[5],
dispdata[6],dispdata[7]);

//bcd stuff


counter(gate, signalIn, count);

always@(posedge clock)
begin
  if(gatecounter == 0)
  begin
    gatecounter = 'd2500;
    gate = 0;
    frequency = count;
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