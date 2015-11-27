x1 = gensinusoid(5,400,0,0,0.5,8000)
x3 = gensinusoid(1,800,0,0,0.5,8000)

plot(x1(1:200)+x3(1:200))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 200 samples of the signal x1(t) and x2(t) added")
legend ({"x1(t) + x2(t)"});
print -deps ../report/plot1E.eps