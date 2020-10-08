module testbench;

    reg a = 0, b = 0, c = 0, d = 0;
    reg[20:0] count = 0;

    cadeado cad1(aberto, a, b, c, d);

always #1 begin
    if (count == 20) begin
        $finish;
    end 
    else begin
        c <= ~c;
        count <= count + 1;
    end
end
initial begin
   $dumpvars;
    a <= 1;
    b <= 1;
    d <= 1;
    #500;

   $finish; 
end

endmodule