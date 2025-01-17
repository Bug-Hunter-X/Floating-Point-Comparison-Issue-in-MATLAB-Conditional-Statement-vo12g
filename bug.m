function result = myFunction(x)
  if x > 0
    result = x^2; 
  elseif x == 0
    result = 0; 
  else
    result = -x; 
  end
end

%Example usage that might cause unexpected behavior
 x = 0; 
 y = myFunction(x);
 z = myFunction(x); 
 disp(y)  % Output: 0
 disp(z) % Output: 0

x = 1e-100; % A very small number, close to zero
 y = myFunction(x);  
disp(y) % Output: 1e-200

x = -1e-100; % A very small negative number, close to zero
 y = myFunction(x); 
disp(y) % Output: 1e-100

%The issue arises due to floating point limitations. 
% Comparing floating point number to 0 directly is not always reliable
% in Matlab. Small rounding errors can lead to unexpected results in the 'elseif' condition