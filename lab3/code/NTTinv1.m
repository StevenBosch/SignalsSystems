function[ans] = NTTinv1(x)
  N = length(x);
  [root, prime] = rootsofunity(N);
  k = (prime-1)/ N;
<<<<<<< HEAD
  invRoot = modinverse(root, prime);
  invN = modinverse(N, prime);
  vdm = rem(invN * VDMprime(invRoot^k, N, prime), prime);
=======
  rootInv = modinverse(root, prime);
  
  vdm = rem(modinverse(N, prime) * VDMprime(rootInv^k, N, prime), prime);
>>>>>>> 1ea8bb0fd34716bc301044a0f50da6be0d912e9a
  ans = rem(vdm * x', prime)';
end