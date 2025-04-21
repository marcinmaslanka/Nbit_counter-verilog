`timescale 1ns/1ps  // Define simulation time unit and precision

module tb_counter;

    parameter N = 7;  // Counter bit-width parameter (can be changed easily)

    // Testbench signals
    reg clear;               // Clear/reset signal
    reg clock;               // Clock signal
    wire [N:0] count;        // Output from DUT

    // Instantiate the Design Under Test (DUT)
    counter #(N) uut (
        .clear(clear),
        .clock(clock),
        .count(count)
    );

    // Clock generation: 20 ns period (i.e., 50 MHz)
    initial begin
        clock = 0;
        forever #10 clock = ~clock;  // Toggle clock every 10 ns
    end

    // Input stimulus
    initial begin
        clear = 1;         // Assert clear (reset)
        #25;               // Wait for 25 ns

        clear = 0;         // Deassert clear
        #1000;             // Run simulation for some time

        // Optional additional stimulus:
        // clear = 1; #20;
        // clear = 0; #100;

        $finish;           // End simulation
    end

    // VCD (Value Change Dump) file generation for waveform viewing
    initial begin
        $dumpfile("nbit_counter.vcd");     // Output file name
        $dumpvars(0, tb_counter);          // Dump all variables in the testbench
    end

endmodule
