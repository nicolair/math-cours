size(10cm);

import graph;

real f( real x) {
  return 1 + (3.9/8)*x - 0.002*x^3;
}

axes((-1,-1),(10,5), Arrow);

draw(graph(f,0, 8), deepgreen+2);

for(int i = 0; i < 8; ++i){
  draw((i,0)--(i,f(i)), dashed);
  draw((i,f(i))--(i+1,f(i)),dashed);
}
draw((8,0)--(8,f(8-1)), dashed);

label('$n_0$',(0,0),SE);
label('$n-1$',(7,0),S);