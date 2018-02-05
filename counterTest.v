//test bench for frequency counter
module test()
reg reset = 1;
wire countOut;
timer(reset, clock, countOut);



endmodule