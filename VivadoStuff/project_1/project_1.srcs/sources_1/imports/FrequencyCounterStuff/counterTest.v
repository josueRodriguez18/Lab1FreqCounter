module counterTest();
reg reset;
reg clock;
wire[0:31]countOut;

initial begin
  reset = 1;
  clock = 0;
end
counter(reset, clock, countOut); //look at count ount
always
    begin
      #10 clock = ~clock; //invert every ten nano milliseconds
    end
endmodule