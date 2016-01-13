function[ans] = myInvDFT(x)
  N = length(x);
  omega = exp((-2*pi*i)/N);
  ans = (VDM(omega, N) * x')'/N;
end