function[y] = NTT2(a, omega, prime)
  n = length(a);

  % The base case
  if(n == 1)
    y = a;
    return
  endif
  x = rem(omega^0, prime);

  % Split the data
  a_even = a((1:2:n));
  a_odd  = a((2:2:n));

  %Into the recursion
  y_even = NTT2(a_even, omega^2, prime);
  y_odd  = NTT2(a_odd,  omega^2, prime);

  % Sum all found results
  for ind = 1 : n/2
<<<<<<< HEAD
    % Add prime to ensure positive modulo results
    y(ind)       = rem(rem(y_even(ind) + x*y_odd(ind) + prime, prime) + prime, prime);
    y(ind + n/2) = rem(rem(y_even(ind) - x*y_odd(ind) + prime, prime) + prime, prime);
=======
    % Add prime to ensure positive modulo
    y(ind) = rem(rem(y_even(ind) + x*y_odd(ind), prime) + prime, prime);
    y(ind + n/2) = rem(rem(y_even(ind) - x*y_odd(ind), prime) + prime, prime);
>>>>>>> 1ea8bb0fd34716bc301044a0f50da6be0d912e9a
    x = rem(x * omega, prime);
  endfor
end
