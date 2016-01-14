function[y] = runInvFFT(a)
  omega = exp(i*2*pi/length(a))
  myInvFFT(a, omega)
end