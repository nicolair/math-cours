size(7cm);
import graph;

real f(real t) {return t^2+t-0.5;}
guide courb = graph(f, 0 , 1);

draw((0,0)--(1,1));
real x=0.66;
draw((x,0)--(x,f(x)),dashed);
for (int i=1; i<= 3; ++i){
  draw((x,f(x))--(f(x),f(x)),MidArrow);
  x = f(x);
  draw((x,x)--(x,0),dashed);
  draw((x,x)--(x,f(x)),MidArrow);
}

xaxis(0,1,Arrow);
yaxis(0,1,Arrow);
draw(courb,deepgreen+1);