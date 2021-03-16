% cd 'C:\Users\lukin\Documents\GitHub\Courses-HWs\Estatistica'
clearvars; clc;
X = 0:20;
%
[X_bar, L] = mymean(X);
%
X_sigma2 = 0;
%
for ii = 1:L
  X_sigma2 = X_sigma2 + (X_bar - X(ii))^2;
  % disp([num2str(ii) ' it: ' num2str(X_sigma2) ])
end
%
%
X_sigma2 = X_sigma2/(L-1)
disp('matlab do var:')
var(X)
%
