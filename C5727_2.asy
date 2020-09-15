import three;
settings.render = 0;
settings.prc = false;

size(5cm);

currentprojection=obliqueX;

int p = 50;
int q = 30;
real alpha = p*pi/180;
real theta = q*pi/180;

triple O = (0,0,0);
triple a = (0,0,-0.4);
triple b = (0,0,0.8);
triple u = (0,0,1);
triple m = (cos(alpha),sin(alpha),0); 

transform3 t=shift(u);
transform3 r = rotate(q,u);

triple mm = r*m;
triple mmm = t*mm;
draw(m,red+2);
draw(mm,red+2);
draw(mmm,red+2);

path3 pl = plane((2.2,0,0),(0,2.2,0),(-1,-1,0));
path3 arc1=arc(O,1,90,p,90,p+q,CCW); // counter-clockwise

draw(pl,darkgreen);
draw(a--O,dashed); draw(O--b);
draw(arc1,dotted+red,Arrow3);
draw(O--m,dotted);
draw(O--mm,dotted);
draw(mm--mmm,dotted+red,Arrow3);

