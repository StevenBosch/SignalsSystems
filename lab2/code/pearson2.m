function ans = pearson2(x, y)
if (length(x) >= length(y))
    long = x;
    short = y;
else
    long = y;
    short = x;
end
% Prepend N - 1 elements to long
long = [long(end-(length(short)-2):end) long];

# Calculate cumsum for later calculation of the averages
cumSumLong = cumsum(long);
cumSumLong = [0 cumSumLong];

# Denominator : short part
meanShort = mean(short)
denomShort = sqrt(sum((short-meanShort).^2));

ans = zeros(1, length(long)-length(short)+1);

for d = 1:length(long)-length(short)+1
    # Get the long values for this slice/delay
    sliceLong = long(d:d+length(short)-1);
    # Calculate the average of the slice (optimized)
    avgSliceLong = (cumSumLong(d+length(short))-cumSumLong(d))/length(short);
    # Calculate the subtraction for faster computations
    sliceMinAvg = sliceLong - avgSliceLong;
    # The nominator
    nom = sum( sliceMinAvg.* (short-meanShort));
    # Denominator : long part
    denomLong = sqrt( sum( sliceMinAvg.^2 ) );
    # The final answer
    ans(d) = nom / (denomLong*denomShort);
endfor
# Bye bye
