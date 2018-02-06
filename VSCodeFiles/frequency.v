//will calculate frequency and display it to board
module frequency(signalIn, clock, digit, segment);

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

//bcd stuff


counter(gate, signalIn, count);

always(@posedge clock)
begin
  if(gatecounter == 0)
  begin
    gatecounter = d'2500;
    gate = 0;
    frequency = count;
  end
else
begin
  gate = 1;
end

gatecounter = gatecounter - 1'b1;
disp_scanner = disp_scanner + 1'b1
if(disp_scanner=='d5000)
begin
  digit = {digit[6:0], digit[7]};
  digit_scan = digit_scan + 'd1;
  disp_scanner = 0;
end

end

endmodule