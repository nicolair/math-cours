size(5cm,0);

pen GrosCrayon = defaultpen +1;
pen GrosCrayonRouge = red +1;

pair a = (0,0);
pair b = (100,100);
pair m = (50,20);
transform s = reflect(a,b);
transform t = shift((30,30));
 
pair mm = s*m;
pair mmm = t*mm;

draw(a--b,defaultpen+1);
draw(m--mm,dashed+red+1,Arrow);
draw(mm--mmm,dashed+red+1,Arrow);
dot(m,red +6);
dot(mm,red +6);
dot(mmm,red +6);