size(6cm);
settings.outformat = "pdf";
import graph;

real id(real t) {return t;}
guide courb1 = graph(id, cos ,0 , pi);

guide courb2 = graph(cos, id, 0 , pi);

axes((-1.5,-1.5),(3.5,3.5),Arrow);

draw(courb1,deepgreen+1+dashed);
draw(courb2,red+1);

draw((-1,pi)--(0,pi),dashed);
draw((-1,0)--(-1,pi),dashed);
draw((0,0)--(pi,pi));

label("$\pi$",(0,pi),E);
label("$-1$",(-1,0),S);
label("$1$",(1,0),S);