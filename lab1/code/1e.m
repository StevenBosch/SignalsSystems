x1 = gensinusoid(5,400,0,0,0.5,8000)
x3 = gensinusoid(1,800,0,0,0.5,8000)

plot(x1(1:200)+x3(1:200))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 200 samples of x1(t) + x3(t)")
legend ({"x1(t) + x3(t)"});
print -deps ../report/plot1E.eps
