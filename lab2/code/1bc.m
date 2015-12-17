close all;
x = rand(1,100);
figure();
plot(x);
xlabel('x')
ylabel('y')
title('x = rand(1,100)')
print -dpng ../report/plot1b1.png;
figure();
plot(circorr(x,x));
xlabel('Delay')
ylabel('Circular correlation')
title('Circular correlation of x and x')
print -dpng ../report/plot1b2.png;

% 1c second part
y = rotate(x,50);
figure();
plot(circorr(x,y))
xlabel('Delay')
ylabel('Circular correlation')
title('Circular correlation of x = rand(1,100) and y = circorr(x, 50)')
print -dpng ../report/plot1c.png;
