function result = myFunctionImproved(x, tolerance)
  % Improved function with tolerance for zero comparison
  if nargin < 2
    tolerance = 1e-9; % Default tolerance
  end

  if x > tolerance
    result = x^2;
  elseif abs(x) <= tolerance
    result = 0;
  else
    result = -x;
  end
end

% Example usage:
 x = 0;
 y = myFunctionImproved(x);
 z = myFunctionImproved(x);
 disp(y); % Output: 0
 disp(z); % Output: 0

 x = 1e-100; % A very small number, close to zero
 y = myFunctionImproved(x);
 disp(y); % Output: 0

 x = -1e-100; % A very small negative number, close to zero
 y = myFunctionImproved(x);
 disp(y); % Output: 0

 %The improved function uses a tolerance to handle cases where the input is very close to zero.