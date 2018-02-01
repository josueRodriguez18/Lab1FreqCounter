module timer(reset,clock,count); //clock should be signalIn eventually

parameter size = 32; //maximum amount of HIGH counts

input reset, clock; //clock to timekeep, reset to reset clock

output [0:31] count; //output will be array count

reg[0:31] count = 0; //32 element array initialized to 0

always @(posedge clock or negedge reset) //do when clock is positive or reset is negative 
    begin
      if(!reset){ //if reset is low reset the count
          count = 0;
      }
      else if(count < size){ //if count is less than max sample size increment
          begin
            count++; //not sure if this c syntax works
          end
      }
    end

endmodule