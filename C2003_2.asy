size(6cm);

path C = E..N..W..S..cycle;

real c = 0;
real r;
path p;

r = 0.3;
p = scale(r)*C;
draw(p, green+3);
label("$p_1$",c);
c = c + r;

r = 0.3;
c = c + r;
p = shift(c)*scale(r)*C;
draw(p, green+3);
label("$p_2$",c);
c = c + r;

r = 0.5;
c = c + r;
p = shift(c)*scale(r)*C;
draw(p, green+3);
label("$p_3$",c);
c = c + r;

r = 0.5;
c = c + r;
p = shift(c)*scale(r)*C;
draw(p, green+3);
label("$p_4$",c);
c = c + r;

r = 0.4;
c = c + r;
p = shift(c)*scale(r)*C;
draw(p, green+3);
label("$p_5$",c);
c = c + r;

r = 0.4;
c = c + r;
p = shift(c)*scale(r)*C;
draw(p, green+3);
label("$p_6$",c);
c = c + r;

r = 0.4;
c = c + r;
p = shift(c)*scale(r)*C;
draw(p, green+3);
label("$p_7$",c);
c = c + r;
