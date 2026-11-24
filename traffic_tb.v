
module traffic_tb;

reg clk;
reg reset;

wire red;
wire yellow;
wire green;

traffic_light uut(
    .clk(clk),
    .reset(reset),
    .red(red),
    .yellow(yellow),
    .green(green)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    #10;
    $display("RED=%b YELLOW=%b GREEN=%b",
              red, yellow, green);

    #10;
    $display("RED=%b YELLOW=%b GREEN=%b",
              red, yellow, green);

    #10;
    $display("RED=%b YELLOW=%b GREEN=%b",
              red, yellow, green);

    #10;
    $display("RED=%b YELLOW=%b GREEN=%b",
              red, yellow, green);

    #10 $finish;
end

endmodule
