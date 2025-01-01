module combined_counter_tb;
    reg clk;              
    reg rst;              
    reg mode;            
    wire [4:0] d;         
    combined_counter uut (
        .clk(clk),
        .rst(rst),
        .mode(mode),
        .d(d)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
         rst = 1; mode = 0;
        #10 rst = 0;       
        #90 mode = 1;      
        #50 $finish;       
    end
    initial begin
        $monitor("Time=%0t | Mode=%b | Counter Output=%b", $time, mode, d);
    end
endmodule