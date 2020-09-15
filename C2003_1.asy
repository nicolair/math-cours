size(5cm,0);

//pen GrosCrayon = defaultpen +1;
//pen GrosCrayonRouge = red +1;

// Loop: iterate p times
int p= 6;
draw((0,-0.9)--(0,p+0.9),Arrow);
draw((-0.9,0)--(p+0.9,0),Arrow);

for(int i=0; i <= p; ++i) {
  draw((i,-0.5)--(i,p+0.5));
  draw((-0.5,i)--(p+0.5,i));
  for(int j=0; j<=p-i; ++j){
    dot((i,j), red+8 );
  }
}
