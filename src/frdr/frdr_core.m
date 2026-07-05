function [selected_features] = frdr_core(X, y, k)
% FRDR_CORE Core feature selection algorithm (skeleton implementation)

if nargin < 3
    k = size(X,2);
end

[n, d] = size(X);
selected_features = [];
remaining = 1:d;

R = fuzzy_relation(X);

for iter = 1:k
    best_score = -inf;
    best_feat = -1;

    for f = remaining
        temp_set = [selected_features, f];
        score = rand(); % TODO: replace with FRDR significance measure
        
        if score > best_score
            best_score = score;
            best_feat = f;
        end
    end
    
    selected_features = [selected_features, best_feat];
    remaining(remaining == best_feat) = [];
end

end