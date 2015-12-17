1;
## hallelujah
close all;
[y, fs] = wavread("handel.wav");
[y1, fs1] = wavread("hallelujah.wav");

% The plot of the correlation
figure()
plot(patternMatch(y, y1))
xlabel('Time (sample)')
ylabel('Correlation Coefficient')
title('Correlation of "Handel.wav" and the "hallelujah" mask')
print -dpng ../report/plot2d.png;

## Fur elise
[z, fs2] = wavread("furelise8kHZ.wav");
[z1, fs3] = wavread("cropelise8kHz.wav");

% The plot of the correlation
figure()
plot(patternMatch(z, z1))
xlabel('Time (sample)')
ylabel('Correlation Coefficient')
title('Correlation of "Furelise.wav" and the "furelisecrop" mask')
print -dpng ../report/plot2e.png;
