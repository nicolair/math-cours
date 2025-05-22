import graph;

settings.outformat = "pdf";
size(8cm);

pen GCr1 = fillrule(1) + deepgreen;
pen GCr2 = deepgreen +1;

pair Ai = (-2,0);
pair A = (-1,0);
pair B = (-0.4,0);
pair C = (0,0);
pair D = (1,0);
pair Af = (2,0);

pair U1 = (-0.2,0.5);
pair U2 = (-0.7, 0.6);
pair U3 = (-0.9,0.4);
pair U4 = (-0.9, -0.2);
pair U5 = (-0.4, -0.6);
pair U6 = (-0.2, -0.35);

path setU = C..U1..U2..U3..A..U4..U5..U6..cycle;
path setU1 = C..U1..U2..U3..A--C..cycle;

pair V1 = (0.8,0.4);
pair V2 = (0.2, 0.5);
pair V3 = (-0.2,0.2);
pair V4 = (-0.4, -0.1);
pair V5 = (-0.1, -0.5);
pair V6 = (0.9, -0.4);

path setV = D..V1..V2..V3..B..V4..V5..V6..cycle;
path setV1 = B..V4..V5..V6..D--B..cycle;

filldraw(setU1,GCr1);
filldraw(setV1,GCr1);
draw(Ai--Af);
draw(setU);
draw(setV);
label("$A'$",Ai,N);
label("$A$",Ai+(0,-0.15));
label("$U$",(-1.1,0.5));
label("$V$",(1,0.5));
