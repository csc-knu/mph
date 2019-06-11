outputtemplate := "%j-%c.mps";
prologues := 3;

beginfig(1)
ux := 2cm; uy := 1cm;

for i = -4 upto -1:
    k := i/2 + 1/4;
    drawarrow (ux, k * uy)--(2 ux, k * uy);
    draw (2ux, k * uy)--(2.5 ux, k * uy);
    drawarrow (2.5 ux, k * uy){dir (20 / i)} .. (5.5 ux, k * uy){dir -(10 / i)};
    draw (5.5 ux, k * uy) {dir -(10/i)} .. for j = 1 upto 9:
        (5.5 ux + j / 10 * ux, k * uy + .002 * (5 + i) * (5 + i) * normaldeviate * uy) ..
    endfor (6.5 ux, k * uy);
endfor;

draw (5 ux, 0) .. (4.5 ux, .25 uy) .. (3.5 ux, .5 uy) .. (3 ux, 0) .. (3.5 ux, -.5 uy) .. (4.5 ux, -.125 uy) .. (5 ux, 0) withpen pencircle scaled 2bp shifted (.25 ux, 0);

label.top(btex $S$ etex, (3.625 ux, -3/16 uy));

for i = 1 upto 4:
    k := i/2 - 1/4;
    drawarrow (ux, k * uy)--(2 ux, k * uy);
    draw (2ux, k * uy)--(2.5 ux, k * uy);
    drawarrow (2.5 ux, k * uy){dir (20 / i)} .. (5.5 ux, k * uy){dir -(10 / i)};
    draw (5.5 ux, k * uy) {dir -(10/i)} .. for j = 1 upto 9:
        (5.5 ux + j / 10 * ux, k * uy + .002 * (5 - i) * (5 - i) * normaldeviate * uy) ..
    endfor (6.5 ux, k * uy);
endfor;

endfig;

beginfig(2)
ux := 2cm; uy := .5cm;

label.bot(btex $S_1$ etex, (ux/2, -2uy));
label.top(btex $S_3$ etex, (2ux, 2.5uy));
label.bot(btex $S_2$ etex, (7ux/2, -2uy));

for i = -2 upto 2:
    drawarrow (0, i * uy)--(ux, i * uy);
    drawarrow (ux, i * uy){dir -15} .. (3 ux, i * uy){dir -15} dashed evenly;
    drawarrow (3 ux, i * uy)--(4 ux, i * uy);
endfor;

draw (ux, -2.5 uy) -- (ux, 2.5 uy);
draw (ux, -2.5 uy){dir -15} .. (3 ux, -2.5 uy){dir -15};
draw (ux, 2.5 uy){dir -15} .. (3 ux, 2.5 uy){dir -15};
draw (3 ux, -2.5 uy) -- (3 ux, 2.5 uy);

endfig;
end
