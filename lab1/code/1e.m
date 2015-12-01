x1 = gensinusoid(5,400,0,0,0.5,100000);
x3 = gensinusoid(1,800,0,0,0.5,100000);
x4 = gensinusoid(1,1600,0,0,0.5,100000);
x5 = gensinusoid(1,16000,0,0,0.5,100000);

plot(x1(1:1000)+x3(1:1000))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 1000 samples of x1(t) + x3(t)")
legend ({"x1(t) + x3(t)"});
print -deps ../report/plot1E1.eps

plot(x1(1:1000)+x4(1:1000))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 1000 samples of x1(t) + x4(t)")
legend ({"x1(t) + x4(t)"});
print -deps ../report/plot1E2.eps

plot(x1(1:1000)+x5(1:1000))
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 1000 samples of x1(t) + x5(t)")
legend ({"x1(t) + x5(t)"});
print -deps ../report/plot1E3.eps