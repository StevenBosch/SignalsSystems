function[ans] = NTTinv1(x)
  N = length(x);
  [root, prime] = rootsofunity(N);
  k = (prime-1)/ N;
  invRoot = modinverse(root, prime);
  invN = modinverse(N, prime);
  vdm = rem(invN * VDMprime(invRoot^k, N, prime), prime);
  ans = rem(vdm * x', prime)';
end
