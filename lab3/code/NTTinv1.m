function[ans] = NTTinv1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  k = (prime-1)/ N;
  rootInv = modinverse(root, prime)
  
  vdm = rem(VDMprime(rootInv^k, N, prime), prime);
  ans = rem(modinverse(N, prime) * vdm * x', prime)';
end