module tb_johnson_counter;
    reg clk;      
    reg rst;       
    wire [3:0] q;   
    johnson_counter uut(.clk(clk), .rst(rst), .q(q));
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    initial begin
        $monitor("Time: %0t | Reset: %b | Counter Output: %b", $time, rst, q);
        rst = 1; #25; 
        rst = 0; #200; 
        $stop;
    end
endmodule
