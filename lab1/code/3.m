1;
#Consider a moving sound source that produces sound with a frequency of 400 Hz. The sound source moves
#with a speed of 180km/h from (0,10) to (250,10), where the coordinates are in meters. A microphone
#(with sampling rate 8000 samples per second) is located at location (125,0). Compute the signal that this
#microphone will perceive and play the sound. Explain what you hear.

# So at each sample the distance between the source and the microphone changes
# calculate 1 sample at each step with the adjusted distance 

# The total number of points
Fs = 8000
v = 180 / 3.6 #(m/s)
vSample = v / Fs # m/Sample
t = 250 / v #(m / ms^-1 = s)
n = t * Fs

ans = zeros(1,n);
for i = 1:n
	ans(i) = micfunction2(125, 0, 1, 0 + i*vSample, 10, 5, 4000, 0, 8000);
endfor
#
plot(ans)

bps = 16;       % bits per sample
sps = 8000;     % sample rate [samples/s]
wavwrite(ans, sps, bps, 'audio.wav')