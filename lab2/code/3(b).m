1;

% Get the correlation coefficients
% profile off
% profile on

%amountM = 67
%noiseFactor = 1.0

%signal = noise * imread('page.pgm');
%mask = imread('maskM.pgm');

%coeff = function3(signal, mask);
mesh(coeff)

%profile off
%data = profile('info')
%profshow(data)
profile on
% Find the peaks
% First pad with zeros
coeff = [zeros(1,columns(coeff)); coeff];
coeff = [coeff; zeros(1,columns(coeff))];

coeff = [zeros(rows(coeff),1), coeff];
coeff = [coeff, zeros(rows(coeff),1)];

% Define a threshold for the peaks that are high enough
threshold = 5 * abs(std(reshape(coeff, 1, numel(coeff))))

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
        else
            % Non-peaks should not be plotted
            coeff(row,col) = 0
        end
    end
end

figure(); mesh(coeff)

data2 = profile('info')
profshow(data2)
