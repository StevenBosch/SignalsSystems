function loc = dtoa(dmic, delay12, delay23)
  % dtoa: Differential Time Of Arrivals
  %       returns the location of an emitter given the delays of arrival
  %       between mic1 and mic2, and between mic2 and mic3.
  % dmic: distance between microphones (meters)
  %      so, the microphones are at (0,0), (dmic,0), and (2*dmic,0)
    % delay12: delay time of arrival between mic1 and mic2 (seconds)
  %      so, time of arrival at mic1 - time of arrival at mic 2
  % delay23: delay time of arrival between mic2 and mic3 (seconds)
  %      so, time of arrival at mic2 - time of arrival at mic 3

  % delays are in seconds, convert to meters
  speedOfSound = 343.2;
  d12 = delay12*speedOfSound;
  d23 = delay23*speedOfSound;

  % compute hyperbola paramaters
  alpha1 = d12/2;
  alpha2 = d23/2;
  beta1  = sqrt((dmic/2)^2 - alpha1^2);
  beta2  = sqrt((dmic/2)^2 - alpha2^2);

  % solve x, use a,b,c-formula;
  a = (beta1/alpha1)^2 - (beta2/alpha2)^2;
  b = 2*dmic*(beta2/alpha2)^2;
  c = beta2^2 - beta1^2 - (dmic*beta2/alpha2)^2;
  dsq = sqrt(b*b - 4*a*c);

  x = -(b + dsq)/(2*a);
  y = beta1*sqrt(x^2/(alpha1^2) - 1);

  loc(1) = x + dmic/2;
  loc(2) = y;
end
