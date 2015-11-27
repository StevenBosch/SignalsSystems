ans = gensinusoid(5,400,0,0,0.5,8000)
plot(ans(1:200))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 200 samples of the signal x1(t) = 5 cos(800\pi t)")
print -deps ../report/plot1A.eps
