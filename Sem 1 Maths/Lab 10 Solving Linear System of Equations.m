(%i1) linsolve([2 ∗ x + 5 ∗ y + 7 ∗ z = 52, 2 ∗ x + y − z = 3, x + y + z = 9], [x, y, z]);

(%i2) t1 : implicit(2 ∗ x + 5 ∗ y + 7 ∗ z = 52, x,−5, 5, y,−5, 5, z,−5, 5)$
t2 : implicit(2 ∗ x + y − z = 3, x,−5, 5, y,−5, 5, z,−5, 5)$
t3 : implicit(x + y + z = 9, x,−5, 5, y,−5, 5, z,−5, 5)$
draw3d(t1, t2, t3, color = red, t1, color = blue, t2, color = green, t3,
xlabel = x, ylabel = y, zlabel = z);

(%i3) linsolve([−6 ∗ x + 4 ∗ y = 2, 3 ∗ x − 2 ∗ y = −1], [x, y]);

(%i4) plot2d([−6 ∗ x + 4 ∗ y = 2, 3 ∗ x − 2 ∗ y = −1], [x,−10, 10], [y,−20, 20]);

(%i5) linsolve([−4 ∗ x + 10 ∗ y = 6, 2 ∗ x − 5 ∗ y = 3], [x, y]);

(%i6) plot2d([−4 ∗ x + 10 ∗ y = 6, 2 ∗ x − 5 ∗ y = 3], [x,−20, 20], [y,−20, 20]);
