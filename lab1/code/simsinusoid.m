function [A,f,phi]=sumsinusoid(A1,f,phi1, A2,phi2)
## Polar to cartesian
## because equal frequencies -> theta == phi
# x = r cos (theta)
  x1 = A1 * cos (phi1)
  x2 = A2 * cos (phi2)
  # y = r sin (theta)
  y1 = A1 * sin (phi1)
  y2 = A2 * sin (phi2)

  # add the vectors
  x3 = x1+x2
  y3 = y1+y2

  # r = sqrt(x3^2 + y3^2
  A = sqrt(x3**2+y3**2)
  # theta = atan (y/x)
  # atan(y/x) == atan2(Y, X)
  phi = atan2(y3, x3)
end


