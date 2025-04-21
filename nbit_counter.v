// -----------------------------------------------------------------------------
// Parameterizable N-bit Counter
// This module implements a synchronous counter with asynchronous clear.
// The width of the counter is controlled by the parameter N (default is 7).
// -----------------------------------------------------------------------------

module counter #(parameter N = 7) (   // Define a module named 'counter' with parameter N
    input clear,                      // Active-high clear signal to reset the counter
    input clock,                      // Clock input (triggered on the falling edge)
    output reg [N:0] count            // Output count signal with N+1 bits
);

    // Always block triggered on the negative edge of the clock
    always @(negedge clock)
        if (clear)
            count <= 0;               // If clear is active, reset the counter to 0
        else
            count <= count + 1;       // Otherwise, increment the counter

endmodule
