size(6cm);
import graph;

real id(real t) {return t;}
guide courb1 = graph(id, sin ,-pi/2 , pi/2);

guide courb2 = graph(sin, id, -pi/2 , pi/2);

axes((-1.7,-1.7),(1.9,1.9),Arrow);

draw(courb1,deepgreen+1+dashed);
draw(courb2,red+1);

draw((-1,-pi/2)--(0,-pi/2),dashed);
draw((-1,0)--(-1,-pi/2),dashed);
draw((1,pi/2)--(0,pi/2),dashed);
draw((1,0)--(1,pi/2),dashed);

draw((-pi/2,-pi/2)--(pi/2,pi/2));

label("$\frac{\pi}{2}$",(0,pi/2),W);
label("$-\frac{\pi}{2}$",(0,-pi/2),E);
label("$-1$",(-1,0),N);
label("$1$",(1,0),S);