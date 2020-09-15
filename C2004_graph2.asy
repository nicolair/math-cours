settings.outformat = "pdf";
size(3cm);

import graph;
real a = 1.5;

axes(min=(-2,-1.5),max=(6.5,3), Arrow);

pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;


draw(shift(0,a)*graph(cos,0,2*pi),CrayonVert);
