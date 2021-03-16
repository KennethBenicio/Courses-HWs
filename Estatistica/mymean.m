function [S, L] = mymean(X)
% mymean  Average or mean values
%     S = mymean(X) is the mean of the elements in the X array or matriX.
%
%     [S,L] = mymean(X) return the mean and length of the X array or matriX.
%
%     % Example:
%         X = [1 2 3; 3 3 6; 4 6 8; 4 7 7]
%         mymean(X)
%
%     % Example 1:
%     %   Compute the mean in a 101 elements array, from 0 to 100.
%
%     x = 0:100;
%     [S,L] = mymean(x)
%
%     lucasabdalah - 24/05/2020
%

L = numel(X);

S = sum(X(:))/L;

end % function
