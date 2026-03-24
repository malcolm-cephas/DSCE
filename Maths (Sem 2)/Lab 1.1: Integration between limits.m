(%i1) f(x) := (x∧2) ∗ (sin(x))$
(%i2) f(x);
(%o2) (x2) ∗ (sin(x))
(%i3) integrate(f(x), x, 0,%pi));
(%o3) π2-4