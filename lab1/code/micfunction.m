function [ans] = micfunction( micX, micY, k, sourcesX, sourcesY, A, f,phi,Fs )

    # micX = x position of the mic (in meters)
    # micY = y position of the mic (in meters)
    # k = number of sound sources
    # sourcesX= x position of sound sources
    # sourcesY = y position of sound sources
    # A = amplitudes of sound sources
    # f = frequencies of sound sources
    # phi = phase shift of sound sources

    # The speed of sound is approximately 343.2 m/s
    v_sound = 343.3
    t1 = 0.0
    t2 = 0.5

    # the distances to each sound source (Euclidian)
    distances = zeros(1, k)
    # the corresponding delays
    delays = zeros(1, k)
    for i = 1:k
        distances(i) = sqrt(abs(micX - sourcesX(i))**2 + abs(micY - sourcesY(i))**2)
        delay(i) = -1 * distances(i) / v_sound
    endfor

    # adjust the phase shifts of the signals according to their distance
    # phi = - omega * tm
    # omega = 2*pi*f
    for i = 1:k
        phi(i) = phi(i) + (-1 * 2 * pi * f(i) *  delay(i) )
    endfor

    # Now generate the incoming signals per source
    ans = zeros(1, (t2-t1)*Fs)
    for i = 1:k
      ans = ans + gensinusoid(A(i), f(i), phi(i), t1, t2, Fs)
    endfor

end
