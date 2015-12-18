1;

% The total amount of m's
amountM = 67;

% Get the correlation coefficients
%signal = imread('page.pgm');
%mask = imread('maskM.pgm');

%coeff = function3(signal, mask);

% Find the peaks
% First pad with zeros
%coeff = [zeros(1,columns(coeff)); coeff];
%coeff = [coeff; zeros(1,columns(coeff))];

%coeff = [zeros(rows(coeff),1), coeff];
%coeff = [coeff, zeros(rows(coeff),1)];

% The threshold for filtering the peaks (emperically determined as 5 times the absolute standard deviation)
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
counter
