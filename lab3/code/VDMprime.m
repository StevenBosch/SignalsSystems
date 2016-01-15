function[VDM] = VDMprime(omega, N, prime)
  m = (0:N-1);
  VDM = ones(N, N);
  for ind = 1:N
    for ind2 = 1:N
      for power = 1:ind*ind2        
        VDM(ind, ind2) = rem(VDM(ind, ind2) *= omega, prime);
      endfor  
    endfor
  endfor
end