function[ans] = NTTinv1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  rootInv = modinverse(root, prime)
  y = VDM(rootInv, N) * x'
  ans = rem(modinverse(N, prime) * y, prime)';
end