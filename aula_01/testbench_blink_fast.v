
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