size(6cm);

path unitcircle = E..N..W..S..cycle;

real theta = 1.5;
pair A = (cos(theta),sin(theta));

real theta = 0.1;
pair B = (cos(theta),sin(theta));

real theta = 3;
pair C = (cos(theta),sin(theta));

real theta = 4.5;
pair D = (cos(theta),sin(theta));

draw(unitcircle, black);
dot(A,red); label("$A$",A,N);
dot(B,red); label("$B$",B,E);
dot(C,red); label("$C$",C,W);
dot(D,red); label("$D$",D,S);

draw(A--D--B, green); draw(A--C--B, blue);

//pair C_A = C + (A - C)/(2*length(A-C));
//pair C_B = C + (B - C)/(2*length(B-C));

draw(arc(C,0.3,degrees(A-C), degrees(B-C),CW),blue);
draw(arc(D,0.3,degrees(A-D), degrees(B-D),CW),green);