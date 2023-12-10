function nabla_F=hess_f(x);

nabla_F=zeros(5,5);

for i=1:5
  for j=i:5
    if i==j
      nabla_F(i,j)=P(x,i)^2*exp(P(x));
    else
      nabla_F(i,j)=(P(x,[i,j])+P(x,i)*P(x,j))*exp(P(x));
    endif
    nabla_F(i,j)=nabla_F(j,i);
  endfor
endfor

nabla_F(1,1)=nabla_F(1,1)-6*x(1)*(x(1)^3+x(2)^3+1)-9*x(1)^4;
nabla_F(2,2)=nabla_F(2,2)-6*x(2)*(x(1)^3+x(2)^3+1)-9*x(2)^4;
nabla_F(1,2)=nabla_F(1,2)-9*x(1)^2*x(2)^2;
nabla_F(2,1)=nabla_F(1,2);
