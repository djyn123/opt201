function val_grad_g = gradient_g(x)
  x1 = x(1);
  x2 = x(2);
  x3 = x(3);
  x4 = x(4);
  x5 = x(5);
  grad_1 = [2*x1;2*x2;2*x3;2*x4;2*x5];
  grad_2 = [0;x3;x2;-5*x5;-5*x4];
  grad_3 = [3*x1^2;3*x2^2;0;0;0];
  val_grad_g = [grad_1,grad_2,grad_3];
end
