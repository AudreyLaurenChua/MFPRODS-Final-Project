clc
clear
% Define optimization variables
x1 = optimvar('x1', 'LowerBound', 30,'UpperBound', 75);
x2 = optimvar('x2', 'LowerBound', 30,'UpperBound', 75);
x3 = optimvar('x3', 'LowerBound', 30,'UpperBound', 75);
x4 = optimvar('x4', 'LowerBound', 30,'UpperBound', 75);
x5 = optimvar('x5', 'LowerBound', 30,'UpperBound', 75);
x6 = optimvar('x6', 'LowerBound', 30,'UpperBound', 75);
x7 = optimvar('x7', 'LowerBound', 30,'UpperBound', 75);

prob = optimproblem('Objective', 9.72*x1 + 9.67*x2 + 6.7*x3 + 9.1*x4 + 9.5*x5 + 3.4*x6 + 9.5*x7,'ObjectiveSense','max');

prob.Constraints.c1 = 66954*x1 + 27322*x2 + 99780*x3 + 42756*x4 + 30082*x5 + 24646*x6 + 117939*x7  <= 17000000;

prob.Constraints.c2 = x1 + x2 + x3 + x4 + x5 + x6 + x7 >= 315;

problem = prob2struct(prob);

[sol,fval,exitflag,output] = linprog(problem)

