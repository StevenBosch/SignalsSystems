function [ans] = gensinusoid(A,f,phi,t1,t2,Fs)
	# The sinusoid function is: y(n)=Asin(2π f t+phi)
	totalTime = t2-t1
	nSamples = totalTime * Fs
	ans = zeros(1, nSamples)
	for i = 1:nSamples
		t = t1 + (i-1)*1/Fs
		ans(i) = A * cos (2*pi  *f*t + phi) 	
	endfor
end