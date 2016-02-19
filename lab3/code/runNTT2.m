function[y] = runNTT2(a)
  N = length(a);
  [root, prime] = rootsofunity(N);
  k = (prime-1)/ N;
  omega = rem(root^k, prime);
  y = rem(NTT2(a, omega, prime), prime);
end
