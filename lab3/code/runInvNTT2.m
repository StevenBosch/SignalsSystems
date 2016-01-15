function[y] = runInvNTT2(a)
  N = length(a);
  [root, prime] = rootsofunity(N)
  k = (prime-1)/ N;
  rootInv = modinverse(root, prime)
  omega = rem(rootInv^k, prime)
  y = rem(NTT2(a, omega, prime) * modinverse(N, prime), prime);
end
