function myconv(x, y)
  n = length(x);
  x = [x zeros(1, n-1)];
  y = [y zeros(1, n-1)];
  real(ifft(fft(x).*fft(y)))
end