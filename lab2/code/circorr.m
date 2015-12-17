function ans = circorr(x, y)
  N = lcm(length(x),length(y));
  xnew = repmat(x, 1, N/length(x));
  ynew = repmat(y, 1, N/length(y));

  ans = zeros(1, N);
  for d = 0:N-1
    for n = 0:N-1
        ans(d+1) = ans(d+1) + xnew(n+1) * ynew(mod(n+d,N)+1);
    endfor
  endfor
end
