function[ans] = invNTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  rootInv = modinverse(root, prime)
  
  answers = VDM(rootInv, N) * x
  ans = rem(modinverse(N, prime) * answers, prime);
end