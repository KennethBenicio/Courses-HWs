function [sig2] = myvar(X)
  % myvar  Variance of an array
  %     sig2 = myvar(X) is the mean of the elements in the X array or matriX.
  %
  %     % Example:
  %         X = [1 2 3; 3 3 6; 4 6 8; 4 7 7]
  %         myvar(X)
  %
  %     % Example 1:
  %     %   Compute the variance in a 101 elements array, from 0 to 100.
  %
  %     x = 0:100;
  %     sig2 = myvar(x)
  %
  %     lucasabdalah - 24/05/2020
  %
  [S, L] = mymean(X);

  sig2 = sum(X(:))/L;

end % function
