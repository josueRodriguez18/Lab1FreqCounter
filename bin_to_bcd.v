`timescale 1ns / 1ps
module bin_to_bcd(bin,one,ten,hundred,thousands,ten_thousands,hundred_thousands,millions,ten_millions);

	parameter BIN_N_bits=24;

	input [26:0] bin;
	output [3:0] one, ten ,hundred ,thousands,ten_thousands,hundred_thousands,millions,ten_millions;
	reg [3:0] one, ten ,hundred ,thousands,ten_thousands,hundred_thousands,millions,ten_millions,hundred_milli;
	integer i;
	always @(bin)
		begin
			one=0; 
			ten=0;	
			hundred=0;
			thousands=0;
			ten_thousands=0;
			hundred_thousands=0;
			millions=0; 
			ten_millions=0;
			for(i=26;i>=0;i=i-1)  //26 bit binary value
				begin
					if(hundred_milli>=5)
					hundred_milli =hundred_milli +3;
					if(ten_millions>=5)
					ten_millions = ten_millions +3;
					if(millions>=5)
					millions=millions+3;
					if(hundred_thousands>=5)
					hundred_thousands=hundred_thousands+3;
					if(ten_thousands>=5)
					ten_thousands=ten_thousands+3;
					if(thousands>=5)
					thousands=thousands+3;
					if(hundred>=5)
					hundred=hundred+3;
					if(ten>=5)
					ten=ten+3;
					if(one>=5)
					one =one+3;
					
					hundred_milli = hundred_milli <<1;
					hundred_milli[0] =ten_millions[3];
					
					ten_millions = ten_millions <<1;
					ten_millions[0] = millions[3];
					
					millions = millions <<1;
					millions[0] = hundred_thousands[3];
					
					hundred_thousands = hundred_thousands <<1;
					hundred_thousands[0] = ten_thousands[3];
					
					ten_thousands = ten_thousands<<1;
					ten_thousands[0] = thousands[3];
					
					thousands= thousands <<1;
					thousands[0]= hundred [3];
					
					hundred = hundred<<1;
					hundred[0] = ten[3];
					
					ten = ten <<1;
					ten[0] = one[3];
					
					one = one <<1;
					one[0] = bin[i];
				end //end of for loop
	end//end of always

endmodule
