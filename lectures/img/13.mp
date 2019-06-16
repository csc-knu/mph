outputtemplate := "%j-%c.mps";
prologues := 3;

input macros.mp;

% cls && mpost 13.mp && epstopdf 13-1.mps && start 13-1.pdf
beginfig(1)
    u := 2cm;
    numeric eps;
    eps := u/2;
    pair dipole[];
    dipole[1] := (0, -eps);
    dotlabel.llft(btex $-q$ etex, dipole[1]);
    dipole[2] := (0, eps);
    dotlabel.ulft(btex $+q$ etex, dipole[2]);
    draw dipole[1] -- dipole[2];
    pair o, p;
    o := (0, 0);
    dotlabel.lft(btex $O$ etex, o);
    label.lft(btex $\varepsilon$ etex, (o + dipole[1])/2);
    label.lft(btex $\varepsilon$ etex, (o + dipole[2])/2);
    p := (2u, 0);
    dotlabel.rt(btex $P$ etex, p);
    draw o -- p; 
    draw dipole[1] -- p; 
    draw dipole[2] -- p;
    label.top(btex $r$ etex, (3 o + 2 p)/5);
    arcs(dipole[2], o, p, 10);
    label.urt(btex $\psi$ etex, o + (3u/32, 3u/32));
endfig;

% cls && mpost 13.mp && epstopdf 13-2.mps && start 13-2.pdf
beginfig(2)
    u := 4cm;
    pair l[], r[];
    l[1] := (0, 0);
    l[2] := (0, u/4);
    l[3] := (0, 3u/4);
    l[4] := (0, 2u);
    l[5] := (0, 9u/4);
    drawarrow l[1] -- l[5];
    drawarrow l[2] -- l[3] withpen pencircle scaled 1.25bp;
    label.lft(btex ${\rm d}\ell$ etex, (l[2] + l[3])/2);
    label.lft(btex $I$ etex, l[4]);
    r[1] := l[1] + (u, 0);
    r[4] := l[4] + (u, 0);
    r[5] := l[5] + (u, 0);
    draw r[1] -- r[5] dashed evenly;
    draw l[2] -- r[4];
    draw l[3] -- r[4];
    draw l[4] -- r[4];
    label.top(btex $b$ etex, (l[4] + r[4])/2);
    label.lrt(btex $r$ etex, (l[2] + r[4])/2);
    arcs(r[1], r[4], l[2], 30);
    label.llft(btex $\alpha$ etex, r[4] - (u/32, 9u/32));
    arcs2(l[2], r[4], l[3], 65);
    label.llft(btex ${\rm d}\alpha$ etex, r[4] - (5u/16, u/2));
    pair hl[];
    hl[2] := altitude(l[2], l[3], r[4]);
    draw l[3] -- hl[2];
    mark_rt_angle(l[3], hl[2], r[4]);
    label.urt(btex $r {\rm d}\alpha$ etex, (0, 0)) rotated -30 shifted ((19 l[3] + hl[2]) / 20);
endfig;

% cls && mpost 13.mp && epstopdf 13-3.mps && start 13-3.pdf
beginfig(3)
    u := 3cm;
    draw (u, 0){down} .. (1.1 u/sqrt(2), -1.1 u/sqrt(2)) .. (0, -u) .. (-1.2u, -.2u) .. (-0.9u/sqrt(2), 0.9u/sqrt(2)) .. (1.2u/sqrt(2), 1.2u/sqrt(2)) .. (u, 0){down} withcolor (.2 black + .8 red);
    label.urt(btex $C$ etex, (1.2u/sqrt(2), 1.2u/sqrt(2))) withcolor (.2 black + .8 red);
    draw fullcircle scaled 2u dashed evenly withpen pencircle scaled 1.5bp;
    fill fullcircle scaled 2u withcolor white;
    drawarrow (u, 0) -- (u, -3u/2);
    label.rt(btex $H$ etex, (u, -11u/8));
    drawarrow (u, 0) -- (3u/2, u/2);
    label.lrt(btex $\overrightarrow{{\rm d}\ell\;}$ etex, (11u/8, 3u/8));
    draw (0, 0) -- (u, 0);
    mark_rt_angle((0, 0), (u, 0), (u, -3u/2));
    mark_rt_angle((0, 0), (u, 0), (3u/2, u/2));
    mark_rt_angle((u, -3u/2), (u, 0), (3u/2, u/2));
    label.bot(btex $R$ etex, (2u/3, 0));
    draw (0, 0) -- (3u/2, u/2);
    arcs((u, 0), (0, 0), (3u/2, u/2), 25);
    label.top(btex ${\rm d}\alpha$ etex, (5u/12, 0));
    
endfig;

% cls && mpost 13.mp && epstopdf 13-4.mps && start 13-4.pdf
beginfig(4)
    u := 2cm;
    vardef mol(expr _o, _a) =
        draw _o withpen pencircle scaled 2bp;
        pair _c[];
        _c[1] := ((u/8, 0) rotated _a) + _o;
        _c[2] := ((0, u/4) rotated _a) + _o;
        _c[3] := ((-u/8, 0) rotated _a) + _o;
        _c[4] := ((0, -u/4) rotated _a) + _o;
        draw _c[1]{dir (_a + 90)} .. _c[2]{dir (_a + 180)} .. _c[3]{dir (_a + 270)} .. _c[4]{dir _a} .. _c[1]{dir (_a + 90)};
        drawarrow _o -- (_o + ((u/2, 0) rotated _a));
    enddef;

    path box;
    box := (0, 0) -- (2u, 0) -- (2u, 2u) -- (0, 2u) -- cycle;
    draw box dashed evenly;

    mol((u/2, 3u/2), 10);
    mol((u/2, 3u/4), -70);
    mol((3u/2, u/2), 135);
    mol((3u/2, 3u/2), 45);

    draw box shifted (3u, 0) dashed evenly;

    mol((3.25u, 1.5u), 0);
    mol((3.25u,  .5u), 0);
    drawarrow (3.125u, u) -- (4.875u, u) dashed evenly;
    mol((4.25u,  .5u), 0);
    mol((4.25u, 1.5u), 0);
endfig;

% cls && mpost 13.mp && epstopdf 13-5.mps && start 13-5.pdf
beginfig(5)
    u := 2cm;
    path p[];
    p[1] := (0, 0){down} .. (u, -u){right} .. (2u, 0){up};
    draw p[1] yscaled .2;
    p[2] := (2u, 0){up} .. (u, u){left} .. (0, 0){down};
    draw p[2] yscaled .2 dashed evenly;

    draw p[1] yscaled .2 shifted (0, u/2);
    draw p[2] yscaled .2 shifted (0, u/2) dashed evenly;

    draw (0, 0) -- (0, u); draw (2u, 0) -- (2u, u);

    draw fullcircle scaled 2u yscaled .2 shifted (u, u);

    draw (-u/4,0) -- (0, 0);
    drawarrow (-u/4,u/2) -- (-u/4,u) dashed evenly;
    label.lft(btex $h$ etex, (-u/4, u/2));
    drawarrow (-u/4,u/2) -- (-u/4,0) dashed evenly;
    draw (-u/4,u) -- (0, u);

    label.rt(btex $S_1$ etex, (u/16, 0));
    label.rt(btex $S_2$ etex, (u/16, u));

    label.rt(btex $\vec n_2$ etex, (u, -5u/8));
    draw (u, 0) withpen pencircle scaled 2bp;
    drawarrow (u, 0) -- (u, -3u/4);
    label.lft(btex $\vec n_1$ etex, (u, 13u/8));
    draw (u, u) withpen pencircle scaled 2bp;
    drawarrow (u, u) -- (u, 7u/4);

    label.ulft(btex $B_1$ etex, (2.5u, 2u));
    drawarrow (2.5u, 2u) -- (u, .5u) dashed evenly;
    label.lrt(btex $B_2$ etex, (.25u, -1.25u));
    drawarrow (u, .5u) -- (.25u, -1.25u) dashed evenly;

    label.lft(btex $\mu_2$ etex, (2u, u/4));
    label.lft(btex $\mu_1$ etex, (2u, 3u/4));
endfig;

% cls && mpost 13.mp && epstopdf 13-6.mps && start 13-6.pdf
beginfig(6)
    u := 2cm;

    draw (0, 0) -- (0, u/2) -- (2u, u/2) -- (2u, 0) -- cycle dashed evenly;
    drawarrow (3u/2, 0) -- (u, 0);
    label.bot(btex $a_2$ etex, (5u/4, 0));
    drawarrow (u, u/2) -- (3u/2, u/2);
    label.top(btex $a_1$ etex, (5u/4, u/2));
    draw (-u/4, u/4) -- (9u/4, u/4);
    drawarrow (-u/2,u/4) -- (-u/2, u/2);
    drawarrow (-u/2,u/4) -- (-u/2, 0);
    drawarrow (u/4, 3/4u) -- (7u/4, 3u/4) dashed evenly;
    label.top(btex $\vec H_{1, \tau}$ etex, (u, 3u/4));
    drawarrow (7u/4, -u/4) -- (u/4, -u/4) dashed evenly;
    label.bot(btex $\vec H_{2, \tau}$ etex, (u, -u/4));
endfig;
end
