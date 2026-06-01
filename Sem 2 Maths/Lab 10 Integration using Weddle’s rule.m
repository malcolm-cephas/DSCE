(%i1) h : 1$
(%i2) y0 : 1$
(%i3) y1 : 0.5$
(%i4) y2 : 0.2$
(%i5) y3 : 0.1$
(%i6) y4 : 0.0588$
(%i7) y5 : 0.0385$
(%i8) y6 : 0.027$
(%i9) sol4 : (3 ∗ (h/10)) ∗ ((y0 + y2 + y4 + y6) + 5 ∗ (y1 + y5))$
(%i10) print(”The value of the given integral by Weddle′s rule is : ¨, sol4)$
(%o10) ”The value of the given integral by Weddle′s rule is : ””3.07824””