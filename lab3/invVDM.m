function[VDM] = invVDM(omega, N)
  m = (0:N-1);
  VDM = ones(N, N);
  for ind = 1:N
    VDM(ind,:) = omega .^ (-1*(ind-1) * m);
  endfor
end
