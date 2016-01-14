function[y] = myInvFFT(a, omega)
  n = length(a);
  if(n == 1)
    y = a;
    return
  endif
  x = omega^0;
  
  a_even = a((1:2:n));
  a_odd = a((2:2:n));
  
  y_even = myFFT(a_even, omega^2);
  y_odd = myFFT(a_odd, omega^2);
  
  for ind = 1 : n/2
    y(ind) = y_even(ind) + x*y_odd(ind);
    y(ind + n/2) = y_even(ind) - x*y_odd(ind);
    x = x * omega;
  endfor
  y = y / n;
end