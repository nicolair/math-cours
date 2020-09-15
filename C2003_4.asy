settings.outformat = "pdf";
import graph;
size(6cm);

//axes("i", "j", (-.1,-.1),(10.1,10.1),Arrow);

pen rouge = red+2;
pen vert = deepgreen+2;
pen Vert = deepgreen+4;

//draw(graph(phi,-3,3),deepgreen+1);
for(int i = 0; i < 8; ++i){
    for(int j = 0 ; j < 8; ++j){
        dot((i,j),vert);
    }
}
draw((0,0)--(1,0),arrow=MidArrow,vert);
draw((1,0)--(1,1),arrow=MidArrow,vert);
draw((1,1)--(1,2),arrow=MidArrow,vert);
draw((1,2)--(1,3),arrow=MidArrow,vert);
draw((1,3)--(2,3),arrow=MidArrow,vert);
draw((2,3)--(2,4),arrow=MidArrow,vert);

//label("$0$",(0,0),S);
//label("$1$",(1,0),S);
//label("$n$",(9,0),S);

//label("$0$",(0,0),W);
//label("$1$",(0,1),W);
//label("$n$",(0,9),W);
