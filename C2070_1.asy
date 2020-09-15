import graph;

settings.outformat = "pdf";
size(7cm);

pen GCr1 = deepgreen;
pen GCr2 = deepgreen +1;

real u = -0.1;
real v = 1;
real a = 0.5;

real f(real x){
  return 0.1 + x^3;
}

real fp(real x){
  return 3*x^2;
}

pair A = (a,f(a));
pair V = (1,fp(a));
pair T1 = A - 0.4*V;
pair T2 = A + 0.7*V;

axes((u-0.1, f(u) -0.3),(v + 0.2, f(v) + 0.2),Arrow);

dot(A,GCr2+4);
draw(A--(a,0),dotted);
label("$a$",(a,0),S);
label("$(a,f(a))$",A,W);

draw( graph(f,u,v),GCr2);
draw(T1--T2);

real x = 0.8;
dot((x,f(x)),GCr2+4);
draw((x,f(x))--(x,0),dotted);
label("$x$",(x,0),S);
label("$(x,f(x))$",(x,f(x)),W);

pair X = (x,f(a)+(x-a)*fp(a));
dot(X,black +3);
label("$a + (x-a) f'(a)$",X+(0.05,0),E);

label("$\mathcal{T}_a$",T2,NE);


