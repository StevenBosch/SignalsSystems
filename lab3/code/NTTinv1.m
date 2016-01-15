function[ans] = NTTinv1(x)
  N = length(x);
  [root, prime] = rootsofunity(N);
  k = (prime-1)/ N;
  rootInv = modinverse(root, prime);
  
  vdm = rem(modinverse(N, prime) * VDMprime(rootInv^k, N, prime), prime);
  ans = rem(vdm * x', prime)';
end