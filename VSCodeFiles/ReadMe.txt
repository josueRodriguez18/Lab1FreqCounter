Read me for FGPA frequency counter verilog project by Josue Rodriguez
January 30th, 2018
ECE 3331 Spring 2018 Texas Tech University

This code is meant to be used in tandem with a Basys3 board.

The frequency counter is going to have four different parts:

1. signalIn: essentially the input for the signal
2. timekeeper: a constant time period over which the input signal will be
    recorded.
3. counter: a record of how many highs or 1s in binary are seen on the
    signal kept by a register.
4. frequency: essentially the amount of highs or 1s over the time period
    which will give frequency.

The signal will be read in plainly. When appropriate the timekeeper will
go high for a constant amount of time (probably 1 second) then go low.
When and only when the timekeeper is high the counter will be allowed to 
increment on every rising edge seen in signalIn. The frequency module will
simply be (counter amount/ gate high time) to give a frequency and then
display that to a seven segment board. Only incrementing on rising edges
means that duty cycle calculation is not straightforward.

reference: http://www.circuitvalley.com/2015/10/simple-frequency-meter-counter-fpga-xilinx-altera-cpld-wireframe.html