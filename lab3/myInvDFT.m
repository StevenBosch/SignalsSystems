function[ans] = myInvDFT(x)
  N = length(x);
  omega = exp((2*pi*i)/N)
  
  m = (0:N-1);
  VDM = ones(N, N);
  for i = 1:N
    (i-1) * (m);
    VDM(i,:) = (omega .^ (-1*(i-1) * (m)))/N;
  endfor
  VDM;
  ans = (VDM * x')';
end