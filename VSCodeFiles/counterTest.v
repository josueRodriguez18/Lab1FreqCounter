//test bench for frequency counter
//test bench for frequency counter
`timescale 1 ms/1ps
module counterTest();
reg reset;
reg clock;
wire[0:31]countOut;

initial begin
  reset = 1;
  clock = 0;
end
counter c2(reset, clock, countOut); //look at count ount
always
    begin
      #10 clock = ~clock; //invert every ten milliseconds
    end

    always
      begin
        #1000 reset = ~reset; //sample for one second
      end
endmodule