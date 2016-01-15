function[ans] = NTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N);
  k = (prime-1)/ N;
  omega = root^k
  vdm = rem(VDMprime(omega, N, prime), prime);
  ans = rem((vdm * x'), prime)';
end
