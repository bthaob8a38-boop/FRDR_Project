function [X, y] = uci_loader(dataset_name)
% UCI_LOADER Load UCI datasets (placeholder)

fprintf('Loading dataset: %s\n', dataset_name);

% TODO: implement real dataset loading
X = rand(100,10);
y = randi([1,2],100,1);

end