function[ans] =  myconv2(x, y)
  % Pad both signals with the length of the other signal
  % Here not -1 because the signals have to stay a power of 2
  m = length(x);
  n = length(y);
  x = [x zeros(1, n)];
  y = [y zeros(1, m)];
  % Calculate the convolution
  ans = runInvNTT2(runNTT2(x).*runNTT2(y));
  % Cut the last element, due to the longer signals
  ans(end) = [];
end