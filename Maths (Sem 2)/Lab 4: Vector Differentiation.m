(%i18) f : x2 · y + 2 · x · z;
(%o18) 2xz + x2y
(%i19) scalefactors([x, y, z]);
(%o19) done
(%i20) gdf : grad(f);
(%o21) [2z + 2xy, x2, 2x]

(%i22) load(vect);
(%i23) kill(f)$
(%i24) f : x∧2 · y · z + 4 · x∧2 · y;
(%o24) x2yz + 4x2y
(%i25) scalefactors([x, y, z]);
(%o25) done
(%i26) gdf : grad(f);
(%o26) grad(x2yz + 4x2y)
(%i27) ev(express(gdf), diff);
(%o27) [2xyz + 8xy, x2z + 4x2, x2y]
(%i28) define(gdf(x, y, z), %);
(%o28) gdf(x, y, z) := [2xyz + 8xy, x2z + 4x2, x2y];
(%i29) delphi : gdf(1,−2,−1);
(%o29) [−12, 3,−2]
(%i30) d : [2,−1,−2]$ n : d/sqrt(d · d);
(%i31) dd : delphi · n;

(%i33) phi : x∧2 + y∧2 + z∧2 − 9; psi : x∧2 + y∧2 − z − 3;
(%o32) z2 + y2 + x2 − 9
(%o33) − z + y2 + x2 − 3
(%i34) load(vect);
(%i35) scalefactors([x, y, z]);
(%o35) done
(%i36) grad(phi);
(%o36) grad(z2 + y2 + x2 − 9)
(%i37) ev(express(%), diff);
(%o37) [2x, 2y, 2z]
(%i38) define(gdf1(x, y, z), %);
(%o38) gdf1(x, y, z) := [2x, 2y, 2z];
(%i39) delphi : gdf1(2,−1, 2);
(%o39) [4,−2, 4]
(%i40) grad(psi);
(%o40) grad(−z + y2 + x2 − 3)
(%i41) ev(express(%), diff);
(%o41) [2x, 2y,−1]
(%i42) define(gdf2(x, y, z), %);
(%o42) gdf2(x, y, z) := [2x, 2y,−1]
(%i43) delpsi : gdf2(2,−1, 2);
(%o43) [4,−2,−1]
(%i44) mod delphi : sqrt(delphi.delphi);
(%o44) 6
(%i45) mod delpsi : sqrt(delpsi.delpsi);
(%o45)√21
(%i46) theta : acos(delphi.delpsi/(mod delphi · mod delpsi));
(%i47) load(draw);
(%i50) gimp : implicit(9 = x∧2 + y∧2 + z∧2, x,−4, 4, y,−4, 4, z,−4, 4);
gexp : implicit(x∧2 + y∧2 − z = 3, x,−4, 4, y,−4, 4, z,−4, 4);
draw3d(proportional axes = xyz, xyplane = 0,
color = red, gexp, color = blue, gimp)$

(%o48) implicit(9 = z2 + y2 + x2, x,−4, 4, y,−4, 4, z,−4, 4)
(%o49) implicit(−z + y2 + x2 = 3, x,−4, 4, y,−4, 4, z,−4, 4)