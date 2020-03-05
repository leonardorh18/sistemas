// Slow blinking a LED

/* module */
module blinker (

    input CLOCK_50,
    output [1:0] LEDG
    
);

    /* reg */
    reg [1:0] state = 2'b01;

    /* assign */ 
    assign LEDG = state;
    
    /* always */
    always @ (posedge CLOCK_50) begin
        state <= ~state;
    end

endmodule


module testbench; 


reg clk = 0;
wire [1:0] leds;

blinker b(clk, leds);

always #1 begin
    clk <= ~clk;
end

initial begin 
$dumpvars(0);
#100 $finish;


end

endmodule