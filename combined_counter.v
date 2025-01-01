module combined_counter (
    input clk,            
    input rst,            
    input mode,           
    output reg [4:0] d    
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            d <= 5'b00000; 
        else begin
            if (mode == 0) 
                d <= {~d[0], d[4:1]};
            else 
                d <= {d[0], d[4:1]};
        end
    end
endmodule
