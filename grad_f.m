function nabla_f=grad_f(x)

  nabla_f=zeros(5,1);
  for i=1:5

    nabla_f(i)=P(x,i)*exp(P(x));
  endfor
  nabla_f(1)=nabla_f(1)-3*x(1)^2*(x(1)^3+x(2)^3+1);
  nabla_f(2)=nabla_f(2)-3*x(2)^2*(x(1)^3+x(2)^3+1);


