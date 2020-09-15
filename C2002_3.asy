settings.outformat = "pdf";

size(6cm);

pair A = (0,0);
pair B = (1,1.5);
pair C = (-1,4);

draw(A--B--C--A, deepgreen+1);

dot(A);
dot(B);
dot(C);

label('$A (a)$',A,S);
label('$\\alpha$',A+(0.1,0.7));
label('$B (b)$',B,E);
label('$\\beta$',B+(-0.75,0));
label('$C (c)$',C,N);
label('$\\gamma$',C+(0.5,-1));

draw(arc(A,0.5,58,106),Arrow);
draw(arc(B,0.5,130,232),Arrow);
draw(arc(C,0.8,-76,-50),Arrow);