1;
# So at each sample the distance between the source and the microphone changes
# calculate 1 sample at each step with the adjusted distance 

# The total number of points
Fs = 8000
v = 180 / 3.6 		# Velocity (m/s)
vSample = v / Fs 	# Traveled distance per sample (m/Sample)
t = 250 / v 		# Total time it takes to travel the 250 meter (m / ms^-1 = s)
n = t * Fs		# Total amount of samples over the total duration

ans = zeros(1,n);
for i = 1:n
	ans(i) = micfunction(125, 0, 1, 0 + i*vSample, 10, 5, 4000, 0, 8000, 0.0, 1/8000);
endfor

plot(ans)
xlabel("Sample")
ylabel("Amplitude (A)")
title ("Perceived sound of a moving source over the distance of 250 meter")
print -dpng ../report/plot3.png;

playsound(ans, 8000);

bps = 16;       		# bits per sample
sps = 8000;     	# sample rate [samples/s]
wavwrite(ans, sps, bps, 'audio.wav')