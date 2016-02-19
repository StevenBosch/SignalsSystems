<<<<<<< HEAD
function myconv2(x, y)
  % Pad both signals with the length of the other signal
  m = length(x);
  n = length(y);
  x = [x zeros(1, n-1)];
  y = [y zeros(1, m-1)];
  % Calculate the convolution using our NTT functions
  NTTinv1(NTT1(x).*NTT1(y))
end
=======
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
>>>>>>> 1ea8bb0fd34716bc301044a0f50da6be0d912e9a
