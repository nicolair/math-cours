settings.outformat = "pdf";
import graph;
size(10cm);

pen Vert = deepgreen+4;
pen vert = deepgreen+1;
pen Rouge = red+3;
pen rouge = red+1;

axes((-4,-4),(4,4), xlabel="$x$", ylabel= "$y$", Arrow);
dot((0,0),black+4);
label("$O$",(0,0),NW);
draw((0,0)--(1,0),Arrow);
draw((0,0)--(0,1),Arrow);


pair A = (-3,-5);
pair I = (-1,-2);
pair J = (-4,-7);
dot(A,Vert);
dot(I,Vert);
dot(J,Vert);
label("$A$",A+(-0.4,0.2));
label("$I$",I+(-0.3,0.2));
label("$J$",J +(0.4,0));
draw(A--I,vert,Arrow);
draw(A--J,vert,Arrow);
draw((A-0.7*(I-A))--(A+2(I-A)),Arrow);
draw((A-0.9*(J-A))--(A+2(J-A)),Arrow);
label("$X$",A+2(I-A)+(0.5,0));
label("$Y$",A+2(J-A)+(0.6,-0.1));
