function[ans] = myDFT(x)
  N = length(x);
  omega = exp((-2*pi*i)/N);
  
  m = (0:N-1);
  VDM = ones(N, N);
  for i = 2:N
    VDM(i,:) = omega .^ ((i-1) * m);
  endfor
  VDM
  ans = (VDM * x')';
end