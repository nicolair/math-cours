settings.outformat = "pdf";
import graph;
size(8cm);

pen Vert = deepgreen+6;
pen vert = deepgreen+1;
pen Rouge = red+3;
pen rouge = red+1;

int n = 6;
for(int i=0; i < n; ++i){
  for(int j=0; j < n; ++j){
    dot((i,j),Vert);
  }
}

draw((0,0)--(1,0)--(1,1)--(2,1)--(2,2)--(2,3),vert);
label("$(0,0)$",(-0.1,-0.4));
