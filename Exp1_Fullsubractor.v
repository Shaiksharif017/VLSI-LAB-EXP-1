module full_subtractor(a, b,c,D, bout);
input a, b, c;
output D, bout;
assign D= a ^ b ^ c;
assign bout= (~a&b) | (~(a ^ b) & c);
endmodule
