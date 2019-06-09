outputtemplate := "%j-%c.mps";
prologues := 3;

vardef project(expr a,b,c) =
  a*(1,0) + b*(0,1) + c*(-.71,-.71)
enddef;

beginfig(1)

u := 2cm;

pair o, x[], y[], Z[];
o := (0, 0);
x[1] := project(2u, 0, 0);
y[1] := project(0, u, 0);
Z[1] := project(0, 0, u);
x[2] := 1.5 * x[1];
y[2] := 1.5 * y[1];
Z[2] := 1.5 * Z[1];

% slice
pair t, ty, tz, tyz;
t := x[1] / 2; ty := t + y[1]; tz := t + Z[1]; tyz := t + y[1] + Z[1];
fill t--ty--tyz--tz--cycle withcolor .9 white;
draw tz--t--ty dashed evenly;
draw ty--tyz--tz;

pair xy, xz, yz, xyz;
xy := x[1] + y[1];
xz := x[1] + Z[1];
yz := y[1] + Z[1];
xyz := x[1] + y[1] + Z[1];

% Ox
draw o--x[1] dashed evenly; drawarrow x[1]--x[2];
label.llft(btex Ox etex, x[2]);
% Oy
draw o--y[1] dashed evenly; drawarrow y[1]--y[2];
label.llft(btex Oy etex, y[2]);
% Oz
draw o--Z[1] dashed evenly; drawarrow Z[1]--Z[2];
label.lrt(btex Oz etex, Z[2]);

% box
draw x[1]--xy--y[1]--yz--Z[1]--xz--cycle;
draw xy--xyz; draw xz--xyz; draw yz--xyz;

% tensor
pair tau;
tau := t + .75 * y[1] + .25 * Z[1];
drawarrow tau--(tau + .25 * x[1]);
label.llft(btex $\sigma_x$ etex, tau + .25 * x[1]);
drawarrow tau--(tau + .625 * y[1]);
label.llft(btex $\tau_{x, y}$ etex, tau + .625 * y[1]);
drawarrow tau--(tau + .625 * Z[1]);
label.rt(btex $\tau_{x, z}$ etex, tau + .625 * Z[1] + .03125 * x[1]);

endfig;

beginfig(2)

u := 2cm;

pair o, x[], y[], Z[];
o := (0, 0);
x[1] := project(u, 0, 0);
y[1] := project(0, u, 0);
Z[1] := project(0, 0, .71u);
x[2] := 1.5 * x[1];
y[2] := 1.5 * y[1];
Z[2] := 1.5 * Z[1];

label.urt(btex $O$ etex, o);

pair tx[], ty[], tz[], t[];

tx[1] := (y[1] + Z[1] + o) / 3; tx[2] := tx[1] - .5 * x[1];
drawarrow tx[1]--tx[2];
label.top(btex $-\vec{{\bf t}}^{(x)}$ etex, tx[2]);

ty[1] := (x[1] + Z[1] + o) / 3; ty[2] := ty[1] - .5 * y[1];
drawarrow ty[1]--ty[2];
label.rt(btex $-\vec{{\bf t}}^{(y)}$ etex, ty[2]);

tz[1] := (x[1] + y[1] + o) / 3; tz[2] := tz[1] - .75 * Z[1];
drawarrow tz[1]--tz[2];
label.rt(btex $-\vec{{\bf t}}^{(z)}$ etex, tz[2]);

fill o--x[1]--y[1]--cycle withcolor .9 white;
fill o--x[1]--Z[1]--cycle withcolor .9 white;
fill o--y[1]--Z[1]--cycle withcolor .9 white;

% Ox
draw o--x[1] dashed evenly; drawarrow x[1]--x[2];
label.bot(btex $A$ etex, x[1]);
label.llft(btex x etex, x[2]);
% Oy
draw o--y[1] dashed evenly; drawarrow y[1]--y[2];
label.lft(btex $B$ etex, y[1]);
label.llft(btex y etex, y[2]);
% Oz
draw o--Z[1] dashed evenly; drawarrow Z[1]--Z[2];
label.bot(btex $C$ etex, Z[1]);
label.ulft(btex z etex, Z[2]);

draw x[1]--y[1]--Z[1]--cycle;

% n
pair n[];
n[1] := (x[1] + y[1] + Z[1]) / 3; n[2] := 2.5 * n[1];
draw n[1] withpen pencircle scaled 2bp;
drawarrow n[1]--n[2];
label.ulft(btex $\vec{\bf n}$ etex, 2.25 * n[1]);

% f
pair f[];
f[1] := (.4 * x[1] + .1 * y[1] + .4 * Z[1]); 
f[2] := (1.2 * x[1] - .1 * y[1] + .5 * Z[1]);
draw f[1] withpen pencircle scaled 2bp;
drawarrow f[1]--f[2];
label.bot(btex $\vec{f}$ etex, f[2]);

endfig;

beginfig(3)

u := 4cm;

pair x[], dx[], dy;
dy := (0, u/4);

drawarrow (-u/2,0)--(u,0);
label.llft(btex Ox etex, (u, 0));

x[1] := (0, 0); x[2] := (-u/4, 0);
draw x[1] withpen pencircle scaled 2bp;
% draw x[1]--(x[1] + dy)--(x[2] + dy)--x[2]--cycle;
label.bot(btex $x$ etex, x[1]);
drawarrow x[1]--x[2] withpen pencircle scaled 1.25bp;

dx[1] := (u/2, 0); dx[2] := (3u/4, 0);
draw dx[1] withpen pencircle scaled 2bp;
% draw dx[1]--(dx[1] + dy)--(dx[2] + dy)--dx[2]--cycle;
label.bot(btex $x + {\rm d} x$ etex, dx[1]);
drawarrow dx[1]--dx[2] withpen pencircle scaled 1.25bp;

endfig;

beginfig(4)

u := 4cm;

pair o, A[], B[], C[], D[], x, y, dx[], dy[];
o := (0, 0);
x := (7u/4, 0); y := (0, 7u/4);
drawarrow (-u/4, 0)--x; drawarrow(0, -u/4)--y;
draw o withpen pencircle scaled 2bp;
label.llft(btex $O$ etex, o);
label.llft(btex x etex, x);
label.llft(btex y etex, y);


A[1] := (u/2, 0); C[1] := (0, u/2);
dx[1] := (u, 0); dy[1] := (0, u);
B[1] := A[1] + dx[1]; D[1] := C[1] + dy[1];
dx[2] := (u/4, 0); dy[2] := (0, u/4);

draw A[1] withpen pencircle scaled 2bp; label.bot(btex $A$ etex, A[1]);
label.bot(btex {\rm d}x etex, (A[1] + B[1]) / 2);
draw B[1] withpen pencircle scaled 2bp; label.bot(btex $B$ etex, B[1]);

draw C[1] withpen pencircle scaled 2bp; label.lft(btex $C$ etex, C[1]);
label.lft(btex {\rm d}y etex, (C[1] + D[1]) / 2);
draw D[1] withpen pencircle scaled 2bp; label.lft(btex $D$ etex, D[1]);

A[2] := A[1] + dy[2]; B[2] := B[1] + dy[2];
draw A[2] withpen pencircle scaled 2bp; label.llft(btex $A'$ etex, A[2]);
draw B[2] withpen pencircle scaled 2bp; 
C[2] := C[1] + dx[2]; D[2] := D[1] + dx[2];
draw C[2] withpen pencircle scaled 2bp; label.llft(btex $C'$ etex, C[2]);
draw D[2] withpen pencircle scaled 2bp; 

B[3] := B[2] + dy[2]; D[3] := D[2] + dx[2];
draw B[3] withpen pencircle scaled 2bp; label.ulft(btex $B'$ etex, B[3]);
draw D[3] withpen pencircle scaled 2bp; label.lrt(btex $D'$ etex, D[3]);

draw B[3]--A[2]--B[2]; draw D[3]--C[2]--D[2];

xi := .25;
draw C[2] + xi * dy[1] {dir 0} .. C[2] + xi / sqrt(17/16) * (dy[1] + dx[2]) {dir -11.25};
label.urt(btex $\beta$ etex, C[2] + xi * dy[1]);
draw A[2] + xi / sqrt(17/16) * (B[3] - A[2]) {dir -78.75} .. A[2] + xi * (B[2] - A[2]) {dir -90};
label.urt(btex $\alpha$ etex, A[2] + xi * dx[1]);

endfig;

end
