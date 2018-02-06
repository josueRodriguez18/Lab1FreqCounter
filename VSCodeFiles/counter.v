module timer(reset,clock,count); //clock should be signalIn eventually

parameter size = 32; //maximum amount of HIGH counts

input reset, clock; //clock to timekeep, reset to reset clock

output [0:31] count; //output will be array count

reg[0:31] count = 0; //32 bit variable initialized to 0

always @(posedge clock or negedge reset) //do when clock is positive or reset is negative 
    begin
      if(!reset) //if reset is low reset the count
         begin
          count = 0;
          end
      else if(count < 32'hFFFFFFFF) //if count is less than max sample size increment
          begin
            count = count + 1; //not sure if this c syntax works
          end
    end

endmodule