function[ans] = NTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  vdm = rem(VDM(root, N), prime)
  ans = rem((vdm * x'), prime)'
end