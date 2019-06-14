outputtemplate := "%j-%c.mps";
prologues := 3;

% cls && mpost 12.mp && epstopdf 12-1.mps && start 12-1.pdf
beginfig(1)
    u := 2cm;

    % ground
    draw (-u/2, 0) -- (3u, 0);
    for i = -4 upto 30:
        numeric k; k := i / 10;
        draw (k  * u, 0) -- ((k - 1/10) * u, -u/10);
    endfor

    numeric upmost; upmost = (2.5**2) / 2;
    draw (0, 0) -- (0, upmost * u);

    draw (0, 0){right}
    for i = 1 upto 25:
        .. ((i / 10) * u, (i/ 10)**2 * u / 2)
    endfor;

    pair a, b;
    for i = 1 upto 4:
        numeric y; y := i * upmost / 4;
        if (i = 2) or (i = 3):
            if i = 2:
                a := (sqrt(2 * y) * u, y * u);
            fi;
            if i = 3:
                b := (sqrt(2 * y) * u, y * u);
            fi;
            draw (-u/16, y * u) -- (0, y * u);
        fi;
        drawarrow (0, y * u) -- (sqrt(2 * y) * u, y * u);
    endfor

    label.rt(btex $A$ etex, a);
    label.rt(btex $B$ etex, b);

    label.top(btex $v$ etex, a xscaled .5);
    label.top(btex $v + {\rm d} v$ etex, b xscaled .5);

    label.top(btex ${\rm d} y$ etex, (0, 0)) rotated 90 shifted (0, upmost * 5u/8);
endfig;

end
