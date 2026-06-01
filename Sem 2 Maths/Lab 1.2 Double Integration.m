(%i1) f : x ∗ y ∗ (1 + x + y);
(%o1) x ∗ y ∗ (1 + x + y)
(%i2) integrate(integrate(f, x, 1, 2), y, 0, 3);
(%o2) 123/4