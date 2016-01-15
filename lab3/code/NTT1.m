function[ans] = NTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  k = (prime-1)/ N;
  
  vdm = VDMprime(root^k, N, prime);
  ans = rem((vdm * x'), prime)'
end