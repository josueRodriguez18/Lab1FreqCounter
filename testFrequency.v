





module testFrequency();


    initial


    


    


    


    


    reg sigin;                                                                                                                                                            


    reg clk = 1;


    wire[7:0]segment;


    wire[7:0]digit;


    for(i = 0; i <
10000; i++){


        if(i%2 == 1){


            sigin = 0;


            #1000;


        }


        else{


            sigin = 1;


            #1000;


        }


    }


    freq_meter(clk,
segment, digit, sigin);


  


endmodule


