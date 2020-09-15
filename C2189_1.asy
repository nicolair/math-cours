size(5cm,0);

pen GrosCrayon = defaultpen +1;
pen GrosCrayonRouge = red +1;

int n =6;
int m=11;

pair[] pt = new pair[n];
  pt[0] = (0,0);
  pt[1] = (0.2,0);
  pt[2] = (0.5,0);
  pt[3] = (1,0);
  pt[4] = (1.3,0);
  pt[5] = (2,0);

pair[] pty = new pair[m];
  pty[0] = (0,0);
  pty[1] = (0.1,0);
  pty[2] = (0.2,0);
  pty[3] = (0.5,0);
  pty[4] = (0.8,0);
  pty[5] = (0.9,0);
  pty[6] = (1,0);
  pty[7] = (1.3,0);
  pty[8] = (1.5,0);
  pty[9] = (1.8,0);
  pty[10] = (2,0);


draw(pt[0]--pt[1],blue+1);
draw(pt[1]--pt[2],darkgreen+2);
draw(pt[2]--pt[3],dashed+1);
draw(pt[3]--pt[4],defaultpen+2);
draw(pt[4]--pt[5],dotted+darkgreen+2);

guide ronds;
for(int k=0; k<n; ++k){
  ronds = ronds--pt[k];
}
guide rondsy;
for(int k=0; k<m; ++k){
  rondsy = rondsy--pty[k];
}


label("$a=x_0$",pt[0],S);
label("$x_1$",pt[1],S);
label("$x_2$",pt[2],S);
label("$x_3$",pt[3],S);
label("$x_5$",pt[4],S);
label("$x_6=b$",pt[5],S);

label("$y_0$",pty[0],N);
label("$y_1$",pty[1],N);
label("$y_2$",pty[2],N);
label("$y_3$",pty[3],N);
label("$y_4$",pty[4],N);
label("$y_5$",pty[5],N);
label("$y_6$",pty[6],N);
label("$y_7$",pty[7],N);
label("$y_8$",pty[8],N);
label("$y_9$",pty[9],N);
label("$y_{10}$",pty[10],N);

dot(rondsy,red);

dot(ronds,red);