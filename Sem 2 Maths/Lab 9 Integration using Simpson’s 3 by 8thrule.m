(%i1) h : 1$
(%i2) y0 : 1$
(%i3) y1 : 0.5$
(%i4) y2 : 0.2$
(%i5) y3 : 0.1$
(%i6) y4 : 0.0588$
(%i7) y5 : 0.0385$
(%i8) y6 : 0.027$
(%i9) sol3 : (3 ∗ (h/8)) ∗ ((y0 + y6) + 3 ∗ (y1 + y2 + y4 + y5) + 2 ∗ (y3))$
(%i10) print(”The value of the given integral by Simpson′s 3/8th rule is : ¨, sol3)$
(%o10) ”The value of the given integral by Simpson′s 3/8th rule is : ¨” ”1.3570875””