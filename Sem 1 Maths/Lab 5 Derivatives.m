(%i1) y : sin(x)$
(%i2) y1 : diff(y, x, 1);
(%o2) cos(x)
(%i3) y2 : diff(y, x, 2);
(%o3) − sin(x)
(%i4) y3 : diff(y, x, 3);
(%o4) − cos(x)
(%i5) plot2d([y, y1, y2, y3], [x,−5, 5]);

(%i5) y : x^x^x$
(%i6) y1 : diff(y, x, 1);
(%o6) x^x^x(x^xlog(x)(log(x) + 1) + x^x−1)
(%i7) y2 : diff(y, x, 2);(%o7) x^x^x(x^xlog(x)(log(x) + 1) + x^x−1)2 + x^x^x(x^xlog(x)(log(x) + 1)2+ x^x−1log(x) +x − 1x+ x^x−1(log(x) + 1) + x^x−1log(x))
(%i8) plot2d([y, y1, y2], [x, 0.5, 2]);