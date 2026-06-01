(%i1) f1(x) : = sqrt(x)$
(%i2) f1(x);
(%o1)√x
(%i3) f2(x) :=(x∧3/2)$
(%i4) f2(x);
(%o2) (x3/2)
(%i5) Solve(f1(x)=f2(x), x);
(%o3) [x = 0, x = 1]
(%i6) integrate(f1(x)-f2(x), x, 0, 1);

(%i1) facts();
(%o1) []
(%i2) assume(a > 0, b > 0, x > 0, x < a, y > 0, y < b)$
(%i3) facts();
(%o2) [a > 0, b > 0, x > 0, a > x, y > 0, b > y]
(%i4) [xmax : (a/b) ∗ sqrt(b2-y2), ymax : (b/a) ∗ sqrt(a2-x2)]$
(%i5) integrate(integrate(1, x, 0, xmax), y, 0, b);
(%o3) π/4