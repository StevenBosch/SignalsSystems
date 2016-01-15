function myconv2(x, y)
  % Pad both signals with the length of the other signal  
  m = length(x);
  n = length(y);
  x = [x zeros(1, n-1)];
  y = [y zeros(1, m-1)];
  % Calculate the convolution
  NTTinv1(NTT1(x).*NTT1(y))
end