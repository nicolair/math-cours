settings.outformat = "pdf";
size(3cm);

import graph;
real a = 1.5;

axes(min=(-6,-1.5),max=(2.5,3), Arrow);

pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;

path G = graph(cos,0,2*pi) ;

G = xscale(-1)*G;
G = shift(a,0)*G;

draw(G,CrayonVert);
