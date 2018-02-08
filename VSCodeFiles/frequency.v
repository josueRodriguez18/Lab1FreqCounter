//will calculate frequency and display it to board
module frequency(signalIn, clock, number, seg);

    output [6:0] seg; //seven seg display
    output [7:0] number; //eight big combination for number
    input clock; //clock will show vary display update rate
    input signalIn; //signal

    reg[7:0] number= 8'b01;
    reg[31:0]freq;
    wire[3:0]toDisplay[0:7];
    reg[2:0]number_scan = 3'b0;   //initialized to 0
    reg[23:0]disp_scanner = 24'b0;

    reg[31:0]gatecounter = 32'b0; 
    reg gate;
    wire[31:0] count;

    //display stuff
    bcd_to_seg s1(toDisplay[number_scan],seg);
    bin_to_bcd b1(freq,toDisplay[0],toDisplay[1],toDisplay[2],toDisplay[3],toDisplay[4],toDisplay[5],
    toDisplay[6],toDisplay[7]);



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