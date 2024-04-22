module halfadder(a,b,m,c);
input a,b;
output m,c;
xor g1(m,a,b);
and g2(c,a,b);



endmodule
