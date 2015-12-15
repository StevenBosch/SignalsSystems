x = gensinusoid(1, 5, -0.5*pi, 0, 2, 100);
y = gensinusoid(1, 5, 0, 0, 2, 100);

plot(pearson(x,y))
xlabel("Delay")
ylabel("Pearson correlation")
title ("The pearson correlation between sin(x) and cos(x)")
print -dpng ../report/plot1f1.png;

x = gensinusoid(2, 5, -0.5*pi, 0, 2, 100);
y = gensinusoid(1, 5, 0, 0, 2, 100);

plot(pearson(x,y))
xlabel("Delay")
ylabel("Pearson correlation")
title ("The pearson correlation between 2sin(x) and cos(x)")
print -dpng ../report/plot1f2.png;