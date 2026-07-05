function R = fuzzy_relation(X, sigma)
% FUZZY_RELATION Compute fuzzy similarity matrix
% X: n x d data matrix
% sigma: bandwidth parameter

if nargin < 2
    sigma = 1.0;
end

[n, ~] = size(X);
R = zeros(n, n);

for i = 1:n
    for j = 1:n
        diff = X(i,:) - X(j,:);
        R(i,j) = exp(-norm(diff)^2 / (2*sigma^2));
    end
end

end