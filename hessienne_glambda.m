function val = hessienne_glambda(lambda,x)
  val = lambda(1)*hessienne_g1(x)+lambda(2)*hessienne_g2(x)+lambda(3)*hessienne_g3(x);
end
