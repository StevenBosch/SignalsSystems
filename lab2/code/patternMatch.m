function ans = patternMatch(signal, mask)
  if (length(mask) > length(signal))
    error('pearson(x,y): x and y are not of the same shape');
  end

  # Calculate cumsum for later calculation of the averages
  cumSumSignal = cumsum(signal);
  cumSumSignal = [0 cumSumSignal];

  # Denominator : mask part
  meanMask = mean(mask);
  denomMask = sqrt(sum((mask-meanMask).^2));

  ans = zeros(1, length(signal)-length(mask)+1);

  for d = 1:length(signal)-length(mask)+1
      # Get the signal values for this slice/delay
      sliceSignal = signal(d:d+length(mask)-1);
      # Calculate the average of the slice (optimized)
      avgSliceSignal = (cumSumSignal(d+length(mask))-cumSumSignal(d))/length(mask);
      # Calculate the subtraction for faster computations
      sliceMinAvg = sliceSignal - avgSliceSignal;
      # The nominator
      nom = sum( sliceMinAvg.* (mask-meanMask));
      # Denominator : signal part
      denomSignal = sqrt( sum( sliceMinAvg.^2 ) );
      # The final answer
      ans(d) = nom / (denomSignal*denomMask);
  endfor
  # Bye bye
