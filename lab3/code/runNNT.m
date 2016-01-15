function[y] = runNNT(a)
  N = length(a);
  [root, prime] = rootsofunity(N)
  k = (prime-1)/ N
  omega = rem(root^k, prime)
  y = myNNT(a, omega, prime);
end
