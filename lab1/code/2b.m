## Prevent Octave from thinking that this
# is a function file:

1;
#If two sound sources are present, the different phases will,
#change the signal, at some points they can amplify eachother, while at another point they would cancel each other out.

# If a mic is then placed exactly in between the sound sources, the two signals would be in anti-phase, effectively canceling each other out. 
# If a mic is placed after the sound sources, the signals would be in phase, and should amplify each other

#source A = A=5, f=400, phi = 0, posX=0, posY=0
#source B = A=5, f=400, phi = 0, posX=0, posY=1.5*(v_sound/f)
#mic 														 posX=0, posY=1*(v_sound/f)
v_sound = 343.3;
ans = micfunction(0, 0.75*v_sound/400, 2, [0, 0], [0, 1.5*v_sound/400], [5, 5], [400, 400], [0, 0], 8000);
ans2 = micfunction(0, v_sound/400, 2, [0, 0], [0, 1.5*v_sound/400], [5, 5], [400, 400], [0, 0], 8000);
ans3 = micfunction(0, 0.75*v_sound/400, 1, 0, 0, 5, 400, 0, 8000);
plot((1:200), ans3(1:200), (1:200),ans(1:200), (1:200), ans2(1:200));
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 200 samples of source A and source B, both in and out of phase)")
legend ("Original Source A/SourceB", "Source A + Source B", "Source A - Source B");
#print -deps ../report/plot2B.eps;
