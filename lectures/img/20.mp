outputtemplate := "%j-%c.mps";
prologues := 3;

vardef project(expr a,b,c) =
  a*(1,0) + c*(0,1) + b*(-.71,-.71)
enddef;

% cls && mpost 20.mp && epstopdf 20-1.mps && start 20-1.pdf
beginfig(1)
    u := 2cm;
    pair o, e[], p[];
    o := (0, 0);
    e[1] := project(2u, 0, 0);
    e[2] := project(0, u, 0);
    e[3] := project(0, 0, .75u);
    fill o--e[1]--e[1]+e[2]--e[2]--cycle withcolor .9 white;
    drawarrow o--e[1];
    drawarrow o--e[2];
    drawarrow o--e[3];
    p[1] = .3 * e[1] + .5 * e[2] + .6 * e[3];
    draw p[1] withpen pencircle scaled 2bp;
    label.urt(btex $+P_0 = (x_0, y_0, z_0)$ etex, p[1] - .1 * e[1]);
    p[2] = .3 * e[1] + .5 * e[2] - .6 * e[3];
    draw p[2] withpen pencircle scaled 2bp;
    label.lrt(btex $-\overline{P_0} = (x_0, y_0, -z_0)$ etex, p[2] - .1 * e[1]);
    p[3] = (p[1] + p[2]) / 2;
    draw p[3] withpen pencircle scaled 2bp;
    draw p[1] -- p[3];
    draw p[3] -- p[2] dashed evenly;
    p[4] = .95 * e[1] + .2 * e[2] + .4 * e[3];
    draw p[1] -- p[4] -- p[2];
    draw p[4] withpen pencircle scaled 2bp;
    label.rt(btex $P = (x, y, z)$ etex, p[4]);
endfig;

% cls && mpost 20.mp && epstopdf 20-2.mps && start 20-2.pdf
beginfig(2)
    u := 2cm;
    pair o, e[], p[];
    o := (0, 0);
    e[1] := project(2u, 0, 0);
    e[2] := project(0, u, 0);
    e[3] := project(0, 0, .75u);
    fill o--e[1]--e[1]+e[2]--e[2]--cycle withcolor .9 white;
    drawarrow o--e[1];
    drawarrow o--e[2];
    drawarrow o--e[3];
    p[1] = .3 * e[1] + .5 * e[2] + .6 * e[3];
    draw p[1] withpen pencircle scaled 2bp;
    label.urt(btex $+P_0 = (x_0, y_0, z_0)$ etex, p[1] - .1 * e[1]);
    p[2] = .3 * e[1] + .5 * e[2] - .6 * e[3];
    draw p[2] withpen pencircle scaled 2bp;
    label.lrt(btex $+\overline{P_0} = (x_0, y_0, -z_0)$ etex, p[2] - .1 * e[1]);
    p[3] = (p[1] + p[2]) / 2;
    draw p[3] withpen pencircle scaled 2bp;
    draw p[1] -- p[3];
    draw p[3] -- p[2] dashed evenly;
    p[4] = .95 * e[1] + .2 * e[2] + .4 * e[3];
    draw p[1] -- p[4] -- p[2];
    draw p[4] withpen pencircle scaled 2bp;
    label.rt(btex $P = (x, y, z)$ etex, p[4]);
endfig;

end
