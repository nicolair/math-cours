import graph;

settings.outformat = "pdf";
size(7cm);

pen GCr1 = deepgreen;
pen GCr2 = deepgreen +1;

real u = 0.1;
real v = 1;
real a = 0.7;

real f(real x){
  return 1 + x^3;
}

real fp(real x){
  return 3*x^2;
}

pair A = (a,f(a));
pair V = (1,fp(a));
pair T1 = A - 0.4*V;
pair T2 = A + 0.6*V;

axes((u-0.1, f(u) -1.1),(2, f(v) + 0.2),Arrow);

dot(A,GCr2+4);

guide Gf = graph(f,u,v);
draw( Gf ,GCr2);
draw(T1--T2);

real x = 0.8;

label("$\mathcal{T}_a(f)$",T2,NE);

draw((0,0)--(2,2),dotted);

transform sym = reflect((0,0),(1,1));
guide Gfinv = sym*Gf;
draw(Gfinv ,GCr2);
draw(sym*(T1--T2));
dot(sym*A,GCr2+4);
label("$\mathcal{T}_a(f^{-1})$",sym*T2,NE);
