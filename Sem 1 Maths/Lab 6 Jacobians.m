(%i1) u : x2 − 2 ∗ y; v : x + y$
(%i2) J : jacobian([u, v], [x, y]);
(%o2)2x −2
      1 1
(%i3) D : determinant(J);
(%o3) 2x + 2