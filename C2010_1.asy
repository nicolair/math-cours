settings.outformat = "pdf";
import graph;
size(6cm);

pen rouge = red+2;
pen vert = deepgreen+2;
pen Vert = deepgreen+4;

real f(real x){
    return (x^4 + x + 1)/(x^3 + x^2 + 1);
}

draw(graph(f,-1.3,6),deepgreen+1);
draw(graph(f,-10,-1.6),deepgreen+1);

draw((-1.5,-11)--(-1.5,5.5), red+1);
draw((-10,-11)--(6,5), red+1);
