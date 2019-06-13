outputtemplate := "%j-%c.mps";
prologues := 3;

vardef wave (expr start, lift) = 
    draw start withpen pencircle scaled 2bp;
    drawarrow start{dir 75} .. (start + (u/2, u/2+lift)){dir 0} .. (start + (3u/2, u/2-lift)){dir 0} .. (start + (2u, u)){dir 75};
enddef;

% cls && mpost 11.mp && epstopdf 11-1.mps && start 11-1.pdf
beginfig(1)
    u := 3cm;
    wave((0, 0), u/8);
    label.top(btex $x = x(t)$ etex, (9u/16, 19u/32));
endfig;

% cls && mpost 11.mp && epstopdf 11-2.mps && start 11-2.pdf
beginfig(2)
    u := 2cm;
    draw (u, 0) {up} .. for i = 1 upto 19:
        (u * (1 + .1 * normaldeviate), 0) rotated (360 i / 20) ..
    endfor (u, 0) {up};

    wave((u/16, -7u/16), u/32); wave((-7u/16, u/16), u/32);
endfig;


Pi := 3.14159265;

vardef project(expr x,y,z) =
    x*(-1,-.25) + y*(1,-.25) + z*(0,.5)
enddef;

vardef polarx(expr rho,phi) = rho * sind(phi / Pi * 180) enddef;
vardef polary(expr rho,phi) = rho * cosd(phi / Pi * 180) enddef;

% cls && mpost 11.mp && epstopdf 11-3.mps && start 11-3.pdf
beginfig(3)
    u := 2cm;
    vardef f(expr x,y) = u - ((x/16)**2 + (y/16)**2) * u/8 enddef;

    ir := .1u; ip := Pi / 16; 
    for rho = 0 step ir until u:
        for phi = - 5 Pi / 16 step ip until 13 Pi / 16:
            path p;
            numeric x[], y[];
            x[0] := polarx(rho, phi);
            y[0] := polary(rho, phi);
            x[1] := polarx(rho, phi + ip);
            y[1] := polary(rho, phi + ip);
            x[2] := polarx(rho + ir, phi + ip);
            y[2] := polary(rho + ir, phi + ip);
            x[3] := polarx(rho + ir, phi);
            y[3] := polary(rho + ir, phi);
            p = project(x[0], y[0], f(x[0], y[0])) --
                project(x[1], y[1], f(x[1], y[1])) --
                project(x[2], y[2], f(x[2], y[2])) --
                project(x[3], y[3], f(x[3], y[3])) --
                cycle;
            fill p withcolor white;   
            draw p;
        endfor; 
    endfor;

    for phi = - 5 Pi / 16 step ip until 13 Pi / 16:
        numeric x[], y[];
        x[0] := polarx(u, phi);
        y[0] := polary(u, phi);
        x[1] := polarx(u, phi + ip);
        y[1] := polary(u, phi + ip);
        draw project(x[0], y[0], f(x[0], y[0])) --
            project(x[1], y[1], f(x[1], y[1]))
            withcolor red;
    endfor;

    numeric x, y;
    x := polarx(u, Pi / 4);
    y := polary(u, Pi / 4);
    label.bot(btex $c(t)$ etex, project(x, y, f(x, y))) withcolor red;

    x := polarx(0, 0);
    y := polary(0, 0);
    label.top(btex $\sigma$ etex, project(x, y, f(x, y)));
endfig;

% cls && mpost 11.mp && epstopdf 11-4.mps && start 11-4.pdf
beginfig(4)
    u := 2cm;
    pair a[]; a[0] := (0, 0); a[1] := (u, 3u/4); a[2] := (3u, u/4); a[3] := (4u, u);
    path p; p := a[0]{dir 30} .. a[1]{dir 0} .. a[2]{dir 0} .. a[3]{dir 30};
    drawarrow p withcolor red;

    pair sx, sy; sx := (u/16, 0); sy := (0, u/8);
    draw p shifted sy dashed evenly;
    draw p shifted -sy dashed evenly;
    
    for i = 0 upto 3:
        if i < 3: draw a[i] withpen pencircle scaled 2bp withcolor red; fi;
        draw a[i] - sx .. a[i] + sy .. a[i] + sx .. a[i] - sy .. cycle dashed evenly;
    endfor

    label.bot(btex $c(t)$ etex, (u, 3u/4) - sy) withcolor red;
    label.top(btex $c_\varepsilon(t)$ etex, (3u, u/4) + sy);
endfig;

% cls && mpost 11.mp && epstopdf 11-5.mps && start 11-5.pdf
beginfig(5)
    u := 3.5cm;
    numeric k[]; k[1] := 20;
    pair A[]; A[0] := (u/2, 0); A[20] := (u/2, 0);
    for i = 1 upto (k[1] - 1):
        A[i] := (u * (1 + .1 * normaldeviate), 0) rotated (360 i / k[1]) xscaled 1/3;
    endfor
    fill A[0]{up} .. for i = 1 upto (k[1] - 1): 
        A[i] .. 
    endfor A[20]{up} .. cycle withcolor .95 white;
    draw A[0]{up} .. for i = 1 upto (k[1] - 1): 
        A[i] .. 
    endfor A[20]{up};

    label.lft(btex $S$ etex, (0, 0));

    k[2] := 10;
    
    vardef wavetwo(expr start) =
        draw start withpen pencircle scaled 2bp;
        drawarrow start{dir 30} for i = 1 upto k[2] - 1:
            .. start + (u * (2 * i / k[2]), u/4 * sind(360 / k[2] * i)) + .025 * u * normaldeviate * up
        endfor .. (start + (2 u, 0)) {dir 30};
    enddef;
    
    k[3] := 4;
    for i = 1 upto k[3]:
        k[30] := 2 * i / (k[3] + 1) - 1;
        wavetwo((0, u * k[30]));
    endfor

    pair B[]; for i = 0 upto 20: B[i] := A[i] shifted (2 * u, 0); endfor
    draw B[0]{up} .. for i = 1 upto (k[1] - 1): 
        B[i] .. 
    endfor B[20]{up} dashed evenly;

    label.top(btex ${\rm rot} \vec{v} = 0$ etex, (u, -u/16));

    pair C, D; C := (A[15]) shifted (- u * up / 4); D := (B[15] + A[20]) shifted (- u * up / 4);
    draw C withpen pencircle scaled 2bp;
    drawarrow C -- D;
    label.bot(btex $t = t_0$ etex, C);
    label.llft(btex $t$ etex, D);
endfig

end
