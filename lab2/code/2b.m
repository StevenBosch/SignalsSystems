1;
close all;
signal = gensinusoid(1, 5, 0, 0, 1.5, 100);

x = rotate(signal, 50) + rotate(signal, 100);
plot(x)
xlabel('Samples')
ylabel('x')
title('x[n] = d[n-50] + d[n-100]')
print -dpng ../report/plot2b1.png;

h1 = rotate(signal(1:70), 10) + rotate(signal(1:70), 60);
h2 = rotate(signal(1:70), 10) + rotate(signal(1:70), 59);
figure()
plot(h1)
xlabel('Samples')
ylabel('x')
title('h[n] = d[n-10] + d[n-60]')
print -dpng ../report/plot2b2.png;
figure()
plot(h2)
xlabel('Samples')
ylabel('x')
title('h[n] = d[n-10] + d[n-59]')
print -dpng ../report/plot2b3.png;

figure()
plot(pearson2(x, h1))
xlabel('Delay')
ylabel('Pearson correlation')
title('Pearson correlation between x and h1')
print -dpng ../report/plot2b4.png;
figure()
plot(pearson2(x, h2))
xlabel('Delay')
ylabel('Pearson correlation')
title('Pearson correlation between x and h2')
print -dpng ../report/plot2b5.png;
