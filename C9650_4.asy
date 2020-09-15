size(10cm);

import graph;

real f( real x) {
  return 1 + (3.9/8)*x - 0.002*x^3;
}

axes((-1,-1),(10,5), Arrow);

draw(graph(f,0, 8), deepgreen+2);

for(int i = 1; i < 9; ++i){
  draw((i,0)--(i,f(i+1)), dashed);
  draw((i-1,f(i))--(i,f(i)),dashed);
}

label('$n_0+1$',(1,0),S);
label('$n$',(8,0),S);