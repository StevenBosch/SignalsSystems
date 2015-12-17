1;
close all;

signal = gensinusoid(1, 5, 0, 0, 1.5, 100);

x = rotate(signal, 50) + rotate(signal, 100);
h1 = rotate(signal(1:70), 10) + rotate(signal(1:70), 59);

% The plot of the correlation
figure()
plot(patternMatch(x, h1))
xlabel('Time (sample)')
ylabel('Pearson correlation Coefficient')
title('Correlation of x[n] and h')
print -dpdf ../report/plot2c.pdf;
