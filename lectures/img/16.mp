outputtemplate := "%j-%c.mps";
prologues := 3;


% cls && mpost 16.mp && epstopdf 16-1.mps && start 16-1.pdf
beginfig(1)
    u := 2cm;

    pair llftlabelshift;
    llftlabelshift := (-u/32, -u/32);

    pair o, x, t, a, b, c;
    o := (0, 0);
    draw o withpen pencircle scaled 2bp;
    label.llft(btex $O$ etex, o);
    
    x := (3u, 0);
    drawarrow (-u/4,0)--x;
    label.llft(btex $x$ etex, x + llftlabelshift);
    
    t := (0, 2u);
    drawarrow (0,-u/4)--t;
    label.llft(btex $t$ etex, t + llftlabelshift);

    c := (u, u/2);
    draw c withpen pencircle scaled 2bp;
    label.lrt(btex $C(x_1, t_1)$ etex, c);

    b := (u/2, u);
    draw c--b;
    label.top(btex $B$ etex, b);

    a := (7u/4, 5u/4);
    draw c--a;
    label.top(btex $A$ etex, a);

    pair bb, aa;
    bb := (-u/16, u/2);
    aa := (5u/2, 3u/4);
    draw bb .. b .. a .. aa;
    label.top(btex $L$ etex, (u, 5u/4));
endfig;

end
