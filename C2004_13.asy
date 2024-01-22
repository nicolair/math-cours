settings.outformat = "pdf";
size(7cm);

import graph;

axes(min=(-0.5,-.3),max=(2,1.3), Arrow);

pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;

real a = 0.25;
real b = 1.6;
real f(real t){
  return sqrt(1.7-(t-1.5)^2) - 0.5;
}
real fp(real t){
  return -(t-1.5)/sqrt(1.7-(t-1.5)^2);
}

real u = 0.9;
pair U = (u,f(u));
pair V = (1,fp(u));

path G = graph(f,a,b);
draw(G,CrayonVert);

dot(U,GrosCrayonRouge);
draw((u,0)--(u,f(u)),dashed);
draw((u,f(u))--(0,f(u)),dashed);
label("$a$",(u,0),S);
label("$f(a)$",(0,f(u)),W);

draw((U-1.1*V)--(U+0.9*V),CrayonRouge);
label("$\mathcal{T}_a$",U+0.7*V,2*N);