function val_g = g(x)
  g_1 = 0;
  for i=1:5
    g_1 = g_1 + x(i)^2
  endfor
  val_g = [g_1 -10; x(2)*x(3) - 5*x(4)*x(5); x(1)^2+x(2)^2 +1];
end
