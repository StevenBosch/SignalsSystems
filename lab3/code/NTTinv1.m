function[ans] = NTTinv1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  k = (prime-1)/ N;
  rootInv = modinverse(root, prime)
  
  vdm = VDMprime(rootInv^k, N, prime);
  ans = rem(modinverse(N, prime) * vdm * x', prime)';
end