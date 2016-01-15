function[y] = runNNT(a)
  N = length(a);
  [root, prime] = rootsofunity(N)
  k = (prime-1)/ N;
  rootInv = modinverse(root, prime)
  omega = rem(rootInv^k, prime)
  y = myNNT(a, omega, prime);
end
