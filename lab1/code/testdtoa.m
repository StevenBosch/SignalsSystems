function testdtoa(dmic, x, y)
  x0 = 0;
  x1 = dmic;
  x2 = 2*dmic;
  d0 = norm([x-x0, y]);
  d1 = norm([x-x1, y]);
  d2 = norm([x-x2, y]);

  speedOfSound = 343.2;
  delay1 = (d0-d1)/speedOfSound
  delay2 = (d1-d2)/speedOfSound
  p = dtoa(dmic, delay1, delay2)
  err = norm([x,y]-p)
end
