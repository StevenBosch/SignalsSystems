1;

signal = imread('page.pgm');
mask = imread('maskM.pgm');

signalRows = rows(signal);
signalColumns = columns(signal);
maskRows = rows(mask);
maskColumns = columns(mask);

% Make a vector of the mask
maskVector = reshape(mask, 1, numel(mask));

% Denominator : mask part
meanMask = mean(maskVector);
denomMask = sqrt(sum((maskVector-meanMask).^2));

result = zeros(signalRows-maskRows, signalColumns-maskColumns+1);

for dRow = 1:signalRows-maskRows+1
  for dColumn = 1:signalColumns-maskColumns+1
    % Get the signal values for this slice/delay (reshaped from an array to a vector)
    sliceSignal = reshape(signal(dRow:dRow+maskRows-1, dColumn:dColumn+maskColumns-1), 1, length(maskVector));
    % Calculate the average of the slice (optimized)
    avgSliceSignal = mean(sliceSignal);
    % Calculate the subtraction for faster computations
    sliceMinAvg = sliceSignal - avgSliceSignal;
    % The nominator
    nom = sum( sliceMinAvg.* (maskVector-meanMask));
    % Denominator : signal part
    denomSignal = sqrt( sum( sliceMinAvg.^2 ) );
    % The final answer
    result(dRow,dColumn) = nom / (denomSignal*denomMask);
  endfor
endfor
mesh(result)
xlabel('Rows')
ylabel('Columns')
zlabel('Pearson correlation')
title('Pearson correlation for maskM and page')
print -dpdf ../report/plot3.pdf;
