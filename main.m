%% SQP Algorithm


%% inital parameters
epsilon=0.00001 % priori agreed admissible error
%% Initial conditions
Initial_condition =3; % Choose starting point



if Initial_condition==1
  x0=[-1.71 1.59 1.82 -0.763 -0.763]'
 elseif Initial_condition==2
  x0=[-1.9 1.82 2.02 -0.9 -0.9]'
 elseif Initial_condition==3
  x0=[1 0 3 0 0]'
endif

lambda=[1,1,1]';
k=0;


stop=0;
x=x0;
tic()
while(stop==0)
  Qx=[hess_f(x)+hessienne_glambda(lambda,x) gradient_g(x);gradient_g(x)' zeros(3,3)];
  D=det(Qx);
  if D==0
    k
  endif
  Lx=[-grad_f(x);-g(x)];
  Sol=linsolve(Qx,Lx);
  y=Sol(1:5);lambda=Sol(6:8);
  if norm(y)<=epsilon
    stop=1;
  endif
  x=x+y;
  k=k+1;
endwhile

x
iter=k
obj=f(x)
toc()

% Test with the scp solver of Octave
tic()
[xsqp, obj, info, iter, nf, lambda] = sqp (x0, @f, @g, [])
toc()





