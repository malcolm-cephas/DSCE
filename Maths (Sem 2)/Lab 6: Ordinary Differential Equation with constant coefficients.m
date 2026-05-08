(%i1) ode2(′diff(y, x, 2) + y = x, y, x);
ic2(y = %k1 ∗ sin(x) + %k2 ∗ cos(x) + x, x = 0, y = 1,′ diff(y, x) = 2)
(%o1) y = sin(x) + cos(x) + x
(%i2)plot2d(sin(x) + cos(x) + x, [x, 0,%pi])

