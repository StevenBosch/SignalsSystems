function [location] = locate(dmic, f, phi1, phi2, phi3)
	
	# dmic = distance between two neighbouring microphones
	# f = frequencies of the sound source
	# phi = phase shift per microphone
    	
    	# Determine the delay times between the microphones
    	delay12 = (phi1-phi2)/2*f*pi
    	delay12 = (phi2-phi3)/2*f*pi
    	
    	location = dtoa(dmic, delay12, delay23)