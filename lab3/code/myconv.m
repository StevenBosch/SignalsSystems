function myconv(x, y)
  % Pad both signals with the length of the other signal - 1
  m = length(x);
  n = length(y);
  x = [x zeros(1, n-1)];
  y = [y zeros(1, m-1)];
  % Calculate the convolution
  real(ifft(fft(x).*fft(y)))
end