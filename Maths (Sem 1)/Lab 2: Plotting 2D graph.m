(%i1) plot2d(sin(x), [x, 0, 2 ∗ %pi]);

(%i2) plot2d(cos(x), [x, 0, 2 ∗ %pi]);

(%i3) plot2d((x∧2 + 1), [x, 0, 10]);

(%i4) plot2d([′discrete, [1, 2, 3, 4, 5], [2, 8, 13, 15, 20]],[color, red], [xlabel, “Pendulum Length(cm)”], [ylabel, “Period(s)”],[legend, “Experiment”]);