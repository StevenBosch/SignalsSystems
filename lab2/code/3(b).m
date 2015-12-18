1;

% The total amount of m's
amountM = 67;

% Get the correlation coefficients
signal = imread('page.pgm');
mask = imread('maskM.pgm');

results = zeros(1, 11);
for noiseFactor = 0:1:10
    noiseFactor
    % Add noise to the signal
    signal = signal + noiseFactor * randn(rows(signal),columns(signal));
    
    coeff = function3(signal, mask);

    % Find the peaks
    % First pad with zeros
    coeff = [zeros(1,columns(coeff)); coeff];
    coeff = [coeff; zeros(1,columns(coeff))];

    coeff = [zeros(rows(coeff),1), coeff];
    coeff = [coeff, zeros(rows(coeff),1)];

    % The threshold for filtering the peaks (emperically determined to be around 4.68)
    threshold = 4.68 * abs(std(reshape(coeff, 1, numel(coeff))))

    % Now count the peaks in the coefficients matrix. Finally plot the peaks.
    counter = 0;
    for row = 2:rows(coeff)-1
        for col = 2:columns(coeff)-1
            % The value of the current cell
            val = coeff(row, col);
            if (val > threshold &
                coeff(row-1, col) < val & coeff(row+1,col) < val &
                coeff(row, col-1) < val & coeff(row, col+1) < val
                )
                counter = counter+1;
            end
        end
    end
    results(noiseFactor+1) = counter
end

% Plot the amount of found Ms divided by the actual amount of Ms
plot(0:10,results/amountM)
xlabel('Noise factor')
ylabel('Success rate (Counted Ms / actual number of Ms)')
title('Robustness of the solution')
print -dpng ../report/fig3.png;
