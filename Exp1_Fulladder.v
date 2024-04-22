module fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
xor g1(w1,a,b);
and g2(w2,w1,cin);
and g3(w3,a,b);
xor g4(sum,w1,cin);
or g5(cout,w2,w3);

endmodule
