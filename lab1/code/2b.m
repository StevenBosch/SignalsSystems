# If two sound sources are present, the different phases will,
change the signal, at some points they can amplify eachother, while at another point they would cancel each other out.

# If a mic is then placed exactly in between the sound sources, the two signals would be in anti-phase, effectively canceling each other out. 
# If a mic is placed after the sound sources, the signals would be in phase, and should amplify each other

#source A = A=5, f=400, phi = 0, posX=0, posY=0
#source B = A=5, f=400, phi = 0, posX=0, posY=2*(v_sound/f)
#mic 														 posX=0, posY=1*(v_sound/f)
v_sound = 343.3
ans = micfunction(0, v_sound/400, 2, [0, 0], [0, 2*v_sound/400], [5, 5], [400, 400], [0, 0], 8000)
