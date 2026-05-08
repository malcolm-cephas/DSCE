(%i1) F(x, y) := [3 ∗ x∧3 + y∧2, 5 ∗ x ∗ y∧2 − 3 ∗ x ∗ y];
(%o1) F(x, y) := 3x3 + y2, 5xy2 − 3xy
(%i2) load(vect);
(%o2) /usr/local/share/maxima/5.19.2/share/vector/vect
(%i3) scalefactors([x, y]);
(%o3) done
(%i4) div(F(x, y));
(%o4) div([3x3 + y2, 5xy2 − 3xy])
(%i5) express(%)
(%o5) d/dx(3x3 + y2) − d/dy(5xy2 − 3xy2)
(%i6) ev(%, diff);
(%o6) 9x2 − 10xy − 3x

(%i1) F(x, y) := [4 ∗ x∧3 − 5 ∗ y∧2, 5 ∗ y∧3 − 3 ∗ x];
(%o1) F(x, y) := 4x3 − 5y2, 5y3 − 3x
(%i2) load(vect);
(%o2) /usr/local/share/maxima/5.19.2/share/vector/vect
(%i3) scalefactors([x, y]);
(%o3) done
(%i4) curl(F(x, y));
(%o4) curl([4x3 − 5y2, 5y3 − 3x])
(%i5) express(%)
(%o5) d/dx(5y3 − 3x) − d/dy(4x3 − 5y2)
(%i6) ev(%, diff);
(%o6) 10y − 3

(%i1) F(x, y) := [x∧3 + 5 ∗ y, 5 ∗ y∧3 + 5x];
(%o1) F(x, y) := [x3 + 5y, 5y3 + 5x]
(%i2) ev(express(curl(F(x, y))), diff);
(%o2) 0
[Since curlF is zero, F is conservative and hence we can find the scalar potential]
(%i3) F(u, v) := [u∧3 + 5 ∗ v, 5 ∗ v∧3 + 5 ∗ u];
(%o3) F(u, v) := [u3 + 5v, 5v3 + 5u]
(%i4) scalefactors([u, v])
(%o4) done
(%i5) potential(F(u, v));
(%o5)
5v4 + 20uv + u4
4