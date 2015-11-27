x1 = gensinusoid(5, 400, 0, 0, 0.5, 8000)
x2 = gensinusoid(5, 400, 10.5*pi, 0, 0.5, 8000)

plot(x1(1:200)+x2(1:200))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 200 samples of the signal x1(t) and x2(t) added")
legend ({"x1(t) + x2(t)"});
print -deps ../report/plot4A.eps

# Now we can generate the proper function y(t) with our sumsinusoid function
[A, f, phi] = sumsinusoid(5,400,0,5,10.5*pi)
y = gensinusoid(A, f, phi, 0, 0.5, 8000)

# Plot the two to optically check for difference 
plot((1:200),x1(1:200)+x2(1:200),y(1:200))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("x1(t)+x2(t) plotted against y(t)")
legend ({"x1(t) + x2(t)","y(t)"});
print -deps ../report/plot4B.eps
