settings.outformat = "pdf";
import graph;
size(6cm);

//axes("i", "j", (-.1,-.1),(10.1,10.1),Arrow);

pen rouge = red+2;
pen vert = deepgreen+2;
pen Vert = deepgreen+4;

//draw(graph(phi,-3,3),deepgreen+1);
for(int i = 0; i < 7; ++i){
    for(int j = 0 ; j < 6; ++j){
        dot((i,j),vert);
    }
}
draw((0,0)--(1,0),arrow=MidArrow,vert);
draw((1,0)--(1,1),arrow=MidArrow,vert);
draw((1,1)--(1,2),arrow=MidArrow,vert);

int n = 8;
int p = 5;
pair X = (p,n+1-p);
pair U = (p,n-p);
pair V = (p-1, n - p +1);

draw(U--X,arrow=MidArrow,vert);
draw(V--X,arrow=MidArrow,vert);

dot((0,0),Vert);
label("$0$",(0,0),S);

dot(X,Vert);
label("$X$",X,NE);

dot(U,Vert);
label("$U$",U,SE);

dot(V,Vert);
label("$V$",V,NW);
