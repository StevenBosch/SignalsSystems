function[y] = runInvFFT(a)
  omega = exp(i*2*pi/length(a))
  myFFT(a, omega) / length(a)
end