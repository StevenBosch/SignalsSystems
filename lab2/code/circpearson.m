function ans = circpearson(x, y)
  # As is stated in assignment 2, we assume the length of x and y is the same
  N = length(x);
  ans = zeros(1, N);
  
  xmean = mean(x);
  ymean = mean(y);
  
  sumX = 0;
  sumY = 0;
  sumXY = 0;
  
  # Calculate the variances of both individual signals
  for n = 0:N-1
    sumX = sumX + (x(n+1)-xmean)^2;
    sumY = sumY + (y(n+1)-ymean)^2;
  
  # For every possible alignment of x and y, calculate the correlation
  for d = 0:N-1
    for n = 0:N-1
      sumXY = sumXY + (x(n+1)-xmean)*(y(mod(n+d,N)+1)-ymean);
    endfor
    if (sumX == 0 || sumY == 0)
      ans(d+1) = 0;
    else 
      ans(d+1) = sumXY/(sqrt(sumX)*sqrt(sumY));
    end  
    sumXY = 0;
  endfor
end