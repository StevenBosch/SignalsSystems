function ans = rotate(sig, n)
  ans = zeros(1, length(sig));
  for i= 1:length(sig)
    ans(i) = sig(mod(i+length(sig)-n-1,length(sig))+1);
  endfor
 end