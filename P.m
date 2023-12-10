function val=P(x,indices=0);
% Product of the coordinate or x without the ones which i in indices


  val=1;
  for i=1:5
    if ismember(i,indices)==0
      val=val*x(i);
    endif
  endfor



