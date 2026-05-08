(%i1) a : [1, 2, 3]; b : [1,−1, 3]$
(%i2) a + b;
(%o2) [2, 1, 6]
(%i3) 2 ∗ a;
(%o3) [2, 4, 6]
(%i4) load(draw);
(%i5) draw3d(proportional axes = xyz, xrange = [−3, 3], yrange = [−3, 3],
zrange = [−5, 5], xyplane = 0, xlabel = x, ylabel = y, zlabel = z,
enhanced3d = true, head angle = 25, head length = 0.1, color = red,
vector([0, 0, 0], [1, 2, 3]), color = blue, vector([0, 0, 0], [1,−1, 3]), color = green,
vector([0, 0, 0], [2, 1, 6]), color = black, vector([0, 0, 0], [2, 4, 6]));


(%i6) a · b;
(%o6) 8
To cross check the solution
(%i7) 1 · 1 + 2 · −1 + 3 · 3;
(%o7) 8

(%i8) load(vect);
(%i9) a ∼ b;
(%o9) − [1,−1, 3] ∼ [1, 2, 3]
(%i10) express(%);
(%o10) [9, 0,−3]

(%i11) c : [2,−2, 1]$
(%i12) a · (b ∼ c);
(%o12) [1, 2, 3] · [1,−1, 3] ∼ [2,−2, 1]
(%i13) express(%);
(%o13) 15
(%i5) A : b − a;B : c − a;
(%o14) [0,−3, 0]
(%o15) [1,−4,−2]
(%i16) n : A ∼ B;
(%o16) [0,−3, 0] ∼ [1,−4,−2]
(%i17) express(%);
(%o17) [6, 0, 3]