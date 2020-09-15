import graph;
size(10cm,0);

pen crayon = defaultpen;
pen GrosCrayon = crayon +1;
pen GrosCrayonRouge = red +1;
pen PetitCrayon = crayon +0.2;

int n =6;

real[] x= new real[n];
  x[0] = 0;
  x[1] = 0.4;
  x[2] = 0.7;
  x[3] = 1.3;
  x[4] = 1.7;
  x[5] = 2;


real H0(real x){ return 2*x^2+1;};
real H1(real x){ return -2*x^2+2;};
real H2(real x){ return 1/x;};
real H3(real x){ return 1+0.1*sin(20*x);};
real H4(real x){ return 0.5+cos(10*x);};

real[] y= new real[n];
  y[0] = 1.5;
  y[1] = 1;
  y[2] = H2(x[2]);
  y[3] = 1.3;
  y[4] = 1.6;
  y[5] = 1.9;

//axes
draw((-0.75,0)--(2.5,0),Arrow);
draw((-0.5,-0.25)--(-0.5,2.5),Arrow);


real eps = 0.01;
guide C0= graph(H0,x[0]+1.3*eps,x[1]-1.2*eps);
guide C1= graph(H1,x[1]+1.1*eps,x[2]-0.6*eps);
guide C2= graph(H2,x[2]+0.4*eps,x[3]-1.1*eps);
guide C3= graph(H3,x[3]+1*eps,x[4]-0.7*eps);
guide C4= graph(H4,x[4]+0.2*eps,x[5]-0.2*eps);
draw(C0,GrosCrayonRouge);draw(C1,GrosCrayonRouge);draw(C2,GrosCrayonRouge);
draw(C3,GrosCrayonRouge);draw(C4,GrosCrayonRouge);

dot((x[1],H0(x[1]))--(x[2],H1(x[2]))--(x[3],H2(x[3]))--(x[4],H3(x[4]))--(x[5],H4(x[5])),filltype=Draw,GrosCrayonRouge);
dot((x[0],H0(x[0]))--(x[1],H1(x[1]))--(x[2],H2(x[2]))--(x[3],H3(x[3]))--(x[4],H4(x[4])),filltype=Draw,GrosCrayonRouge);
dot((x[0],y[0])--(x[1],y[1])--(x[2],y[2])--(x[3],y[3])--(x[4],y[4])--(x[5],y[5]),filltype=FillDraw,GrosCrayonRouge);

guide absc;
for(int k=0; k<n; ++k){
  absc = absc--(x[k],0);
}


label("$a=x_0$",(x[0],0),S);
label("$x_1$",(x[1],0),S);
label("$x_2$",(x[2],0),S);
label("$x_3$",(x[3],0),S);
label("$x_4$",(x[4],0),S);
label("$x_5=b$",(x[5],0),S);

dot(absc,red);