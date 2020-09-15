size(6cm);
import graph;

real ch(real t) {return (exp(t)+exp(-t))/2;}
real sh(real t) {return (exp(t)-exp(-t))/2;}

guide courb1 = graph(ch, sh ,-1.8 , 1.8);
guide courb2 = xscale(-1)*courb1;


axes((-3.5,-3.5),(3.5,3.5),Arrow);

draw(courb1,deepgreen+1);
draw(courb2,red+1);

draw((-3,-3)--(3,3));
draw((-3,3)--(3,-3));

dot((ch(1),sh(1)),deepgreen +3);
label("$(\mathop{\mathrm{ch}}(t),\mathop{\mathrm{sh}}(t))$",(ch(1),sh(1)),E);

label("$\mathcal{H}^+$", (ch(1.7),sh(1.7)),E);
label("$\mathcal{H}^-$", (-ch(1.7),sh(1.7)),W);