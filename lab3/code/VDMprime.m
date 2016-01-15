function[VDM] = VDMprime(omega, N, prime)
  VDM = ones(N, N);
  % Use the row and column index as the powers
  for ind = 1:N-1
    for ind2 = 1:N-1
      for power = 1:ind*ind2
        % Modulo after each multiplication
        VDM(ind+1, ind2+1) = rem(VDM(ind+1, ind2+1) * omega, prime);
      endfor
    endfor
  endfor
end
