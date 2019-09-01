outputtemplate := "%j-%c.mps";
prologues := 3;

% cls && mpost 25.mp && epstopdf 25-1.mps && start 25-1.pdf
beginfig(1)
    u := 2cm;
    numeric k[]; k[1] := 20;
    pair A[]; A[0] := (u, 0); A[20] := (u, 0);
    for i = 1 upto (k[1] - 1):
        A[i] := (u * (1 + .05 * normaldeviate), 0) rotated (360 i / k[1]);
    endfor
    fill A[0]{up} .. for i = 1 upto (k[1] - 1): 
        A[i] .. 
    endfor A[20]{up} .. cycle withcolor .95 white;
    draw A[0]{up} .. for i = 1 upto (k[1] - 1): 
        A[i] .. 
    endfor A[20]{up};

    label.lft(btex $\Omega$ etex, (0, 0));

    draw fullcircle scaled (.65u) shifted A[3] withpen pencircle scaled 1bp;
    fill fullcircle scaled (.65u) shifted A[3] withcolor white;
    draw A[0]{up} .. for i = 1 upto (k[1] - 1): 
        A[i] .. 
    endfor A[20]{up} dashed evenly;
    label.urt(btex $x$ etex, A[3]);
    draw A[3] withpen pencircle scaled 2bp;
    label.top(btex $U(x, \varepsilon)$ etex, A[3] + (0, .3u));
    label.lft(btex $S_1(x, \varepsilon)$ etex, A[3] - (.3u, .1u));
    label.bot(btex $S_1$ etex, A[15]);
endfig;

% cls && mpost 25.mp && epstopdf 25-2.mps && start 25-2.pdf
beginfig(2)
    u := 1.5cm;
    draw (u, 0) {dir 135} .. (0, u/2) {dir 180} .. (-u, 0) {dir -120} .. (-9u/8, -u/2) {dir -90};
    label.top(btex $S$ etex, (0, u/2 - u/16));
    pair x;
    x := (-u, 0) + (-sqrt(3), 1) * u/2;
    draw x withpen pencircle scaled 2bp;
    drawarrow (-u, 0) -- ((-u, 0) + 1.25 * (x - (-u, 0)));
    label.llft(btex $x$ etex, x + (u/16, 0));
    draw (-u, 0) withpen pencircle scaled 2bp;
    label.urt(btex $\vec n_x$ etex, ((-u, 0) + x) / 2 - (u/16, u/16));
endfig;

end
