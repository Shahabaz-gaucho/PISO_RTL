module PISO(A,M,clk,rst,Q);
input [3:0] A;
input M,clk,rst;
output reg [3:0] Q;
always@(posedge clk)
    begin
    if (rst)
    Q<=4'b0;
    
    else if(M==0)
    begin
    Q[0]<=A[0];
    Q[1]<=A[1];
    Q[2]<=A[2];
    Q[3]<=A[3];
    end
    
    else
    begin
    Q[0]<=A[0];
    Q[1]<=Q[0];
    Q[2]<=Q[1];
    Q[3]<=Q[2];
    end
end
endmodule