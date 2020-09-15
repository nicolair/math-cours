import graph;

settings.outformat = "pdf";
size(4cm);

pen GCr1 = deepgreen;
pen GCr2 = deepgreen +1;


axes((-.2,-.2),(1.2,1.2),Arrow);

path C1 = circle((0.5,1),0.03);
draw(C1,GCr1);
path C2 = circle((1,0.5),0.03);
draw(C2,GCr1);

draw((0,0)--(0.5,0.5),GCr2);
draw((0.53,0.97)--(0.97,0.53),GCr2);

dot((0.5,0.5),GCr2+4);
dot((1.,1.),GCr2+4);