settings.outformat = "pdf";
size(7cm);

import graph;

axes(min=(-0.5,-1.5),max=(6.5,1.5), Arrow);

pen CrayonVert = deepgreen +1;
pen CrayonRouge = red +1;
pen GrosCrayonRouge = red +5;


draw(graph(cos,0,2*pi),CrayonVert);
