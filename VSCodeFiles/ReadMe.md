Read me for FGPA frequency counter verilog project by Josue Rodriguez
January 30th, 2018
ECE 3331 Spring 2018 Texas Tech University

This code is meant to be used in tandem with a Basys3 board, Xilinx Artix-7 FPGA part number (XC7A35T-ICPG236C).
All code was written in visual studio code using Verilong HDL 0.0.4 plug in by leafvmaple
All code was tested/debugged in Vivado 2017.4

The frequency counter is going to have four different parts:

    1. A counter module, which will have a sample time (gate) and count the amount of HIGH edges from a given signal
    2. A binary-to-BCD module which will convert the counter's output to BCD
    3. A BCD-to-segment module which will convert the BCD output of the previous module to corresponding segment patterns
    4. A frequency module, which incorporates all other modules, regulates sample time for counter, and displays segment patterns to the 4-digit 7-segment on board display
    
Description:    The signal will be read in plainly. When appropriate the timekeeper will
                go high for a constant amount of time (probably 1 second) then go low.
                When and only when the timekeeper is high the counter will be allowed to 
                increment on every rising edge seen in signalIn. The frequency output will
                simply be (counter amount/ gate HIGH time) , which will be simple given a 1 sec window.
                The binary frequency output will then be fed into a binary-to-bcd translator module which
                will also split the number into ones, tens, hundreds, and thousands digits for easy display.
                The output of the previous module will be fed to the BCD-to-seg module which will give
                the appropriate segment patterns for the individual digits on the display board.
                The frequency module will move through the digits at a rate fast enough to reduce flicker
                and update them. The frequency module will only take samples inbetween full updates (as in every digit is correct).