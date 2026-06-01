(%i1) h : 1$
(%i2) y0 : 1$
(%i3) y1 : 0.5$
(%i4) y2 : 0.2$
(%i5) y3 : 0.1$
(%i6) y4 : 0.0588$
(%i7) y5 : 0.0385$
(%i8) y6 : 0.027$
(%i9) sol2 : (h/3) ∗ ((y0 + y6) + 4 ∗ (y1 + y3 + y5) + 2 ∗ (y2 + y4))$
(%i10) print(”The value of the given integral by Simpson′s 1/3rd rule is : ¨, sol2)$
(%o10) ”The value of the given integral by Simpson′s 1/3rd rule is : ””1.3662””