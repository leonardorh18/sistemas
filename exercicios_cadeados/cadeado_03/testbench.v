module testbench;

reg a = 0, b = 0, c = 0, d = 0;
reg[20:0] count_um = 0;
reg[10:0] count_dois = 0;

cadeado cad1(aberto, a, b, c, d);
always #1 begin
    if (count_um == 19) begin
        $finish;
    end 
    else begin
        c <= ~c;
        count_um <= count_um + 1;
    end
end
always #2 begin
        if (count_dois == 10) begin
                $finish;
        end else begin
        d <= ~d;
        count_dois <= count_dois;    
        end
        
end
initial begin
   $dumpvars;

    a <= 1;
    b <= 1;
    

    #500;

   $finish; 
end

endmodule