size(6cm);
import graph;

real id(real t) {return t;}
real a = pi/2-0.2;
guide courb1 = graph(id, tan ,-a , a);

guide courb2 = graph(tan, id, -a , a);

axes((-5,-5),(5,5),Arrow);

draw(courb1,deepgreen+1+dashed);
draw(courb2,red+1);

draw((-5,-pi/2)--(5,-pi/2),dashed);

draw((-5,pi/2)--(5,pi/2),dashed);


draw((-4,-4)--(4,4));

label("$\frac{\pi}{2}$",(0,pi/2),NW);
label("$-\frac{\pi}{2}$",(0,-pi/2),SE);
