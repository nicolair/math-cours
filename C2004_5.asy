size(6cm);
import graph;

real id(real t) {return t;}
real ch(real t) {return (exp(t)+exp(-t))/2;}
real sh(real t) {return (exp(t)-exp(-t))/2;}

guide courb1 = graph(id, exp ,-2 , 2);
guide courb2 = yscale(0.5)*courb1;
guide courb3 = xscale(-1)*courb1;

guide graphch = graph(id,ch,-3,3);
guide graphsh = graph(id,sh,-3,3);

axes((-3,-10),(3,10),Arrow);

draw(courb1, dashed);
draw(courb2, dashed);
draw(courb3, dashed);
draw(graphch,deepgreen + 1);
draw(graphsh, red + 1);

label("graphe de $\mathop{\mathrm{ch}}$",(-2.1,ch(2.1)),W);
label("graphe de $\mathop{\mathrm{sh}}$",(-2.1,-sh(2.1)),W);
