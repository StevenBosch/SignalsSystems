## Prevent Octave from thinking that this
# is a function file:

1;

#source A = A=5, f=400, phi = 0, posX=0, posY=100
#mic1 													 posX=0, posY=0
#mic2 													 posX=50,posY=0
#mic3 													 posX=100,posY=0

ans = micfunction(0, 0, 1, 0, 100, 5, 400, 0, 8000);
ans2 = micfunction(50, 0, 1, 0, 100, 5, 400, 0, 8000);
ans3 = micfunction(100, 0, 1, 0, 100, 5, 400, 0, 8000);

plot( (1:100), ans(1:100), "-", (1:100), ans2(1:100), "--", (1:100), ans3(1:100), ":")
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The sound source, percieved at three different locations")
legend ("Mic1", "Mic2", "Mic3")
print -dpng ../report/plot2D.png;
