function ans = circpearson(x, y)
  N = lcm(length(x),length(y))
  ans = zeros(1, N);
  xnew = repmat(x, 1, N/length(x));
  ynew = repmat(y, 1, N/length(y));  
  
  xmean = mean(x);
  ymean = mean(y);
  
  sumX = 0
  sumY = 0
  sumXY = 0
  
  for n = 0:N-1
    sumX = sumX + (x(n+1)-xmean)^2;
    sumY = sumY + (y(n+1)-ymean)^2;
  
  for d = 0:N-1
    for n = 0:N-1
      sumXY = sumXY + (x(n+1)-xmean)*(y(mod(n+d,N)+1)-ymean);
    endfor
    ans(d+1) = sumXY/(sumX*sumY);
    sumXY = 0;
  endfor
end