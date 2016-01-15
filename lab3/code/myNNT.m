function[y] = myNNT(a, omega, prime)
  n = length(a);
  if(n == 1)
    y = a;
    return
  endif
  x = rem(omega^0, prime);

  a_even = a((1:2:n));
  a_odd  = a((2:2:n));

  y_even = myFFT(a_even, omega^2, prime);
  y_odd  = myFFT(a_odd,  omega^2, prime);

  for ind = 1 : n/2
    y(ind)       = rem(rem(y_even(ind) + x*y_odd(ind) + prime, prime) + prime, prime);
    % Add prime to ensure positive modulo
    y(ind + n/2) = rem(rem(y_even(ind) - x*y_odd(ind) + prime, prime) + prime, prime);
    x = rem(x * omega, prime);
  endfor
end
