1;

% Get the correlation coefficients
% profile off
% profile on
signal = imread('page.pgm');
mask = imread('maskM.pgm');

coeff = function3(signal, mask);
% profile off
% data = profile('info')
% profshow(data)

% Find the peaks
% First pad with zeros
coeff = [zeros(1,columns(coeff)); coeff];
coeff = [coef; zeros(1,columns(coeff))];

coeff = [zeros(rows(coeff),1), coeff];
coeff = [coef, zeros(rows(coeff),1)];

counter = 0
for row = 2:rows(coeff)-1
    for col = 2:columns(coeff)-1
        % The value of the current cell
        val = coeff(row, col)
        if (coeff(row-1, col) < val & coeff(row+1,col) < val &
            coef(row, col-1) < val & coeff(row, col+1) < val )
            counter = counter+1;
