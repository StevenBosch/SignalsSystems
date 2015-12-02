## Prevent Octave from thinking that this
# is a function file:

1;
# Place both sound sources 1.5 wavelength apart from each other.
# First first place the microphone at 0.75 wavelength from both sound sources, resulting in amplification of the signal
# Second place the microphone at 1 wavelength from the first cource and 0.5 wavelength from the other, resulting in them canceling each other out

#source A = A=5, f=400, phi = 0, posX=0, posY=0
#source B = A=5, f=400, phi = 0, posX=0, posY=1.5*(v_sound/f)
#mic posX=0, posY=1*(v_sound/f)
v_sound = 343.3;
ans = micfunction(0, 0.75*v_sound/400, 2, [0, 0], [0, 1.5*v_sound/400], [5, 5], [400, 400], [0, 0], 8000);
ans2 = micfunction(0, v_sound/400, 2, [0, 0], [0, 1.5*v_sound/400], [5, 5], [400, 400], [0, 0], 8000);
ans3 = micfunction(0, 0.75*v_sound/400, 1, 0, 0, 5, 400, 0, 8000);
plot((1:200), ans3(1:200), (1:200),ans(1:200), (1:200), ans2(1:200));
xlabel("Sample")
ylabel("Amplitude (A)")
title ("The first 200 samples of source A and source B, both in and out of phase)")
legend ("Original Source A/SourceB", "Source A + Source B", "Source A - Source B");
print -deps ../report/plot2B.eps;
