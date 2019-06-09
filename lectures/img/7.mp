outputtemplate := "%j-%c.mps";
prologues := 3;
beginfig(1)

u := 2cm;
pair a, b, c, d, e, f, g[], h[];

% axis
e := (3u, 0);
f := (3u, 3u);
drawarrow f--e;
draw f withpen pencircle scaled 2bp;
label.lrt(btex $0$ etex, f);
label.urt(btex Ox etex, e);

% xi
g[0] := (0, 1.5u);
h[0] := (2u, 1.5u);

% xi pm delta x
dx := u / 4;
g[1] := g[0] + (0, dx);
label.lft(btex $\xi - \Delta x$ etex, g[1]);
g[2] := g[0] - (0, dx);
label.lft(btex $\xi + \Delta x$ etex, g[2]);
h[1] := h[0] + (0, dx);
h[2] := h[0] - (0, dx);
fill (g[1] -- h[1] -- h[2] -- g[2] -- cycle) withcolor .9 * white;
draw g[1] -- h[1];
draw g[2] -- h[2];

% back to xi
label.rt(btex $\xi(t)$ etex, h[0]);
draw g[0]--h[0] dashed evenly;

% main rectangle
a := (0, 0);
b := (2u, 0);
c := (2u, 3u);
d := (0, 3u);
draw a--b--c--d--cycle;

% normal vector
pair gh[];
gh[1] := (g[1] + h[1]) / 2;
gh[2] := (g[2] + h[2]) / 2;
drawarrow gh[1] -- (gh[1] + (0, dx));
label.urt(btex $\vec n$ etex, gh[1]);
drawarrow gh[2] -- (gh[2] - (0, dx));
label.lrt(btex $\vec n$ etex, gh[2]);

endfig;
end
