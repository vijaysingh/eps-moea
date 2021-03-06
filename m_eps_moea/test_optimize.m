% Shake out the optimization routine using test problems from:
% Tzitzler E. et al, Comparison of Multiobjective Evolutionary Algorithms: 
% Empirical Results, Evolutionary computation, 2000, vol 8(2), pp. 173-195.

grid = [0.0075, 0.0075];

% test problem 1:
cr = construct_creature(zeros(1, 30), ones(1, 30), 0.033);
[population, fitness, archive] = eps_moea_optimize(cr, 100, 600, 20000, @tau1, grid);
archive = find(archive);

plot(fitness(archive,1), fitness(archive,2), 'o');
figure;
plot(fitness(:,1), fitness(:,2), 'go');
