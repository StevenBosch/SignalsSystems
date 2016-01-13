function[ans] = NTTinv1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
  rootInv = modinverse(root, prime)
  vdm = rem(VDM(rootInv, N), prime)
  
   y = vdm * x'
  ans = rem(modinverse(N, prime) * y, prime)';
end