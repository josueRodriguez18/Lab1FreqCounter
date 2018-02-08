//will calculate frequency and display it to board
module frequency(signalIn, clock, number, segment);

output [6:0] segment; //seven segment display
output [7:0] number; //eight big combination for number
input clock; //clock will show vary display update rate
input signalIn; //signal

reg[7:0] number= 8'b01;
reg[31:0]freq;
wire[3:0]dispdata[0:7];
reg[2:0]number_scan = 3'b0;   //initialized to 0
reg[23:0]disp_scanner = 24'b0;

reg[31:0]gatecounter = 32'b0; 
reg gate;
wire[31:0] count;

//bcd stuff
bcd_to_seg s1(dispdata[number_scan],segment);
bin_to_bcd b1(freq,dispdata[0],dispdata[1],dispdata[2],dispdata[3],dispdata[4],dispdata[5],
dispdata[6],dispdata[7]);



counter c1(gate, signalIn, count);

always@(posedge clock)
    begin
        if(!gatecounter)
            begin
                gatecounter = 'd2500; //this number may have to be changed, ideally a timer of 1 sec will be achieved
                gate = 0;
                freq = count;
            end
        else
            begin
                gate = 1;
            end

        gatecounter = gatecounter - 1'b1; //decrement on every clock impulse
        disp_scanner = disp_scanner + 1'b1; //used as an index to digit
        if(disp_scanner == 'd5000)
            begin
                number = {number[6:0], number[7]};
                number_scan = number_scan + 'd1;
                disp_scanner = 0;
            end

    end

endmodule