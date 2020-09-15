import graph;
size(10cm,0);

pen crayon = defaultpen;
pen GrosCrayon = crayon +1;
pen GrosCrayonRouge = red +1;
pen GrosCrayonVert = green +1;
pen PetitCrayon = crayon +0.2;

int n =5;

real[] x= new real[n];
  x[0] = 0;
  x[1] = 0.4;
  x[2] = 0.7;
  x[3] = 1.3;
  x[4] = 2;

real H4(real x){ return 2 -(x-1.3)^2;};

real[] y= new real[n];
  y[0] = 1.5;
  y[1] = 1;
  y[2] = 0.5;
  y[3] = 1.3;
  y[4] = 1.9;

//axes
draw((-0.75,0)--(2.5,0),Arrow);
draw((-0.5,-0.25)--(-0.5,2.5),Arrow);

draw((x[1],0)--(x[1],H4(x[1])));
draw((x[2],0)--(x[2],H4(x[2])));
draw((x[3],0)--(x[3],H4(x[3])));

draw((-0.5,H4(x[1]))--(x[1],H4(x[1])));
draw((-0.5,H4(x[2]))--(x[2],H4(x[2])));


draw((x[1],H4(x[1]))--(x[3],H4(x[1])),GrosCrayonVert);
draw((x[0],0)--(x[1],0),GrosCrayonVert);
draw((x[3],0)--(x[4],0),GrosCrayonVert);

guide C4= graph(H4,x[0],x[4]);
draw(C4,GrosCrayonRouge);


guide absc;
for(int k=0; k<n; ++k){
  absc = absc--(x[k],0);
}


label("$a$",(x[0],0),S);
label("$u$",(x[1],0),S);
label("$x$",(x[2],0),S);
label("$v$",(x[3],0),S);
label("$b$",(x[4],0),S);

label("$f(x)$",(-0.5,H4(x[2])),NW);
label("$\lambda$",(-0.5,H4(x[1])),NW);

dot(absc,red);