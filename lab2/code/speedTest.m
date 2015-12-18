1;

profile on

for i = 1:10
  disp(i)
  x = rand(1,5);
  y = rand(1,5);

  circpearson(x,y)
  pearson(x,y)
endfor

profile off

data = profile('info')
profshow(data)
