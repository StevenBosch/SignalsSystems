function[y] = runFFT(a)
  omega = exp(i*2*pi/length(a))
  myFFT(a, omega)
end