function [ans] = gensinusoid(A,f,phi,t1,t2,Fs)
	# The sinusoid function is: y(n)=Asin(2π f n+phi)
	# A: amplitude of the wave
	# f: frequency in Hertz (Hz)
	# phi: phase at t = 0 s.
	# t1 and t2: start and end time of the sampled wave (in s.)
	# Fs: sample rate, i.e. number of samples per second

	totalTime = t2-t1;
	nSamples = totalTime * Fs;
	ans = zeros(1, nSamples);

	for i = 1:nSamples
		t = t1 + (i-1)*1/Fs;
		ans(i) = A * cos (2*pi  *f*t + phi);
	endfor
