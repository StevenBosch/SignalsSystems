function [shiftPhi]=delta(A1,f1,phi1, A2,f2,phi2, Fs)
# Calculate the phase shift needed for the second sinusoid, to be most similar to the first
# Shift the higher frequency sinusoid (second) over 1 complete period of the slower (first) sinusoid 
# Find the n which leads to the smallest squared error 
# Translate this n back to a phase

# Calculate how much n is one period 
nLongPeriod = Fs/f1
# Compute the error over least common multiple times the long period (base frequency of the two sinusoids combined)
nLCM = lcm(f1, f2)

#generate the sinusoids, t0 = 0, t1 = two full periods base frequency of the combined signal
sin1 = gensinusoid(A1, f1, phi1, 0, (2*nLCM)/Fs, Fs);
sin2 = gensinusoid(A2, f2, phi2, 0, (2*nLCM)/Fs, Fs);

# Calculate the original sum squared error (for 1 period)
SSE = sum( (sin1(1:nLCM)-sin2(1:nLCM)).^2 )
shift = 0
for n = 1:nLongPeriod
	newSSE = sum( (sin1(1:nLCM)-sin2(1+n:nLCM+n)).^2 );
	if (newSSE < SSE)
		shift = n;
		SSE = newSSE;
	endif
endfor

# Now we know that the second sinusoid has to be shifted n samples back
# We can calculate the phase 
shiftPhi = shift / (Fs/f2) * 2 * pi
