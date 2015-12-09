1;

close all;
x = rand(1,100);
figure();
plot(x);
xlabel('x')
ylabel('y')
title('x = rand(1,100)')
figure();
plot(circorr(x,x));
xlabel('x')
ylabel('y')
title('Circular correlation of x and x')

# 1c second part
y = rotate(x,50);
figure();
plot(circorr(x,y))
xlabel('x')
ylabel('y')
title('Circular correlation of x = rand(1,100) and y = circorr(x, 50)')