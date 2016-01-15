function[VDM] = VDM(omega, N)
  % m holds multipliers to calculate the powers in the VDM matrix with
  m = (0:N-1);
  VDM = ones(N, N);
  % For every row, do omega to the power of the index of that row times m to get a
  % row of increasing powers, defined in the Vandermonde matrix
  for ind = 1:N
    VDM(ind,:) = omega .^ ((ind-1) * m);
  endfor
end