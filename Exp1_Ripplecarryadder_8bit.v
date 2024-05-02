`timescale 1ns / 1ps
module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor g1(w1,a,b);
xor g2(sum,w1,c);
and g3(w2,a,b);
and g4(w3,w1,c);
or g5(carry,w2,w3);
endmodule
module RCA(a,b,c,sum,carry);
input[7:0]a,b;
input c;
output [7:0]sum;
output carry;
wire w1,w2,w3,w4,w5,w6,w7;
fulladder fulladder1 (a[0],b[0],c,sum[0],w1);
fulladder fulladder2 (a[1],b[1],w1,sum[1],w2);
fulladder fulladder3 (a[2],b[2],w2,sum[2],w3);
fulladder fulladder4 (a[3],b[3],w3,sum[3],w4);
fulladder fulladder5 (a[4],b[4],w4,sum[4],w5);
fulladder fulladder6 (a[5],b[5],w5,sum[5],w6);
fulladder fulladder7 (a[6],b[6],w6,sum[6],w7);
fulladder fulladder8 (a[7],b[7],w7,sum[7],carry);
endmodule
