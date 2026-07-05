function [lower, upper] = lower_upper_approx(R, labels, alpha)
% LOWER_UPPER_APPROX Compute fuzzy rough lower/upper approximations

if nargin < 3
    alpha = 0.5;
end

n = size(R,1);
num_classes = length(unique(labels));

lower = zeros(n, num_classes);
upper = zeros(n, num_classes);

for c = 1:num_classes
    idx = (labels == c);
    for i = 1:n
        lower(i,c) = min(R(i, idx));
        upper(i,c) = max(R(i, idx));
    end
end

end