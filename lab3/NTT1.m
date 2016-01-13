function[ans] = NTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  ans = rem((VDM(root, N) * x'), prime)'
end