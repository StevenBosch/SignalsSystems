function [location] = locate(dmic, f, phi1, phi2, phi3)
	
	# dmic = distance between two neighbouring microphones
	# f = frequency of the sound source
	# phi = phase shift per microphone
	   	
	# Determine the delay times between the microphones
	delay12 = (phi1-phi2)/(2*pi*f)
	delay23 = (phi2-phi3)/(2*pi*f)
	
	# Determine the location using the function dtoa
	location = dtoa(dmic, delay12, delay23)