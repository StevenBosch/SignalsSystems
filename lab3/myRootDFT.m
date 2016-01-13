function[ans] = NTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  matrix = VDM(root, N) * x')
  ans = rem(matrix, prime);
end