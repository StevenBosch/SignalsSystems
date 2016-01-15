function[y] = runFFT(a)
  omega = exp(-i*2*pi/length(a));
  y = myFFT(a, omega);
end
