outputtemplate := "%j-%c.mps";
prologues := 3;

vardef project(expr a,b,c) =
  a*(1,0) + b*(0,1) + c*(-.71,-.71)
enddef;

beginfig(1)
u := 2cm;

pair o, x, y, Z;
o := (0, 0);
x := project(u, 0, 0);
y := project(0, 2u, 0);
Z := project(0, 0, u);

pair xy, xz, yz, xyz;
xy := x + y;
xz := x + Z;
yz := y + Z;
xyz := x + y + Z;

draw o--x dashed evenly;
draw o--y dashed evenly;
draw o--Z dashed evenly;

draw x--xy--xyz--xz--cycle;
draw y--xy--xyz--yz--cycle;
draw Z--xz--xyz--yz--cycle;

pair sgm[];
sgm[1] := (x + Z) / 2;
sgm[2] := sgm[1] - y / 2;
draw sgm[1] withpen pencircle scaled 2bp;
drawarrow sgm[1]--sgm[2];
label.ulft(btex $\sigma_1$ etex, sgm[2]);

endfig;
end
