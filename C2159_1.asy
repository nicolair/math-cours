size(100,0);

pen pp = dashed;
pen Crouge=red+3;
pen Cbleu=blue+3;

guide axe = (0,0)--(2,0);

pair[] z= new pair[5];
  z[1] = (0.3,0.6);
  z[2] = (0.7,0.3);
  z[3] = (1,1.1);
  z[4] = (1.4,0.5);
  z[5] = (1.8,1.5);
guide rac1 = z[1]--z[2]--z[3]--z[4]--z[5];

pair[] x=new pair[5];
  x[1] = (0.1,0);
  x[2] = (0.5,0);
  x[3] = (1,0);
  x[4] = (1.2,0);
  x[5] = (1.9,0);
guide rac3 = x[1]--x[2]--x[3]--x[4]--x[5];

transform sym=reflect((0,0),(1,0));
guide rac2=sym*rac1;

draw(axe,pp);
dot(rac1,Crouge);
dot(rac2,Crouge);
dot(rac3,Cbleu);

label("$z_1$",z[1],N);
label("$z_2$",z[2],N);
label("$z_q$",z[5],N);

label("$x_1$",x[1],S);
label("$x_2$",x[2],S);
label("$x_p$",x[5],S);

label("$\mathcal H$",(2,0.3));