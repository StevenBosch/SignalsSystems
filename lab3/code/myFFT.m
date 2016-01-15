function[y] = myFFT(a, omega)
  n = length(a);

  % The base case
  if(n == 1)
    y = a;
    return
  endif
  x = omega^0;

  % Split the data
  a_even = a((1:2:n));
  a_odd = a((2:2:n));

  %Into the recursion
  y_even = myFFT(a_even, omega^2);
  y_odd = myFFT(a_odd, omega^2);

  % Sum all found results
  for ind = 1 : n/2
    y(ind) = y_even(ind) + x*y_odd(ind);
    y(ind + n/2) = y_even(ind) - x*y_odd(ind);
    x = x * omega;
  endfor
end
