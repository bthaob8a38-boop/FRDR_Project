% UCI FRDR Experiment Runner

clear; clc;

datasets = {'iris','wine','breast_cancer'};
results = [];

for i = 1:length(datasets)
    name = datasets{i};
    [X, y] = uci_loader(name);
    
    selected = frdr_core(X, y, size(X,2));
    
    acc = rand(); % TODO: classification accuracy
    red_rate = length(selected)/size(X,2);
    
    results = [results; acc, red_rate];
    fprintf('Dataset: %s | Acc: %.4f | Reduction: %.4f\n', name, acc, red_rate);
end

save('results/frdr_results.mat','results');
