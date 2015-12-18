close all;
x = rand(1,100);
figure();
plot(x);
xlabel('x')
ylabel('y')
title('x = rand(1,100)')
figure();
print -dpng ../report/plot1ga.png;
plot(pearson(x,x));
xlabel('Delay')
ylabel('Pearson correlation')
title('Circular correlation of x and x')
print -dpng ../report/plot1gb.png;

% 1gb second part
y = rotate(x,50);
figure();
plot(pearson(x,y))
xlabel('Delay')
ylabel('Pearson correlatin')
title('Pearson correlation of x = rand(1,100) and y = circorr(x, 50)')
print -dpng ../report/plot1gc.png;

close all;
for i = 0:0.4:2
  figure();
  plot(pearson(x+i*(rand(1,100)*2-1), y))
  xlabel('Delay')
  ylabel('Pearson correlation')
  title(['Noise factor = ' mat2str(i)])
  filename = ["../report/plot" mat2str(i) "noise.png"]
  print -dpng filename
  saveas (1, filename);
  close all;
endfor
