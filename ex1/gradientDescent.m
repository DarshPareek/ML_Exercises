function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % tone = 0;
    % ttwo = 0;
    % % h = X*theta;
    % % t1 = h-y;
    % for i = 1:m
    %     h = theta(1,1)*X(i,1) + theta(2,1)*X(i,2);
    %     t1 = h-y(i,1);
    %     t2 = t1*X(i,1);
    %     tone = tone+t2;
    % end;
    % % tone = alpha*(tone/m);
    % for i = 1:m
    %     h = theta(1,1)*X(i,1) + theta(2,1)*X(i,2);
    %     t1 = h-y(i,1);
    %     t1 = t1*X(i,2);
    %     ttwo = ttwo+t1;
    % end;
    % ttwo = alpha*(ttwo/m);
    % theta(2,1) = theta(2,1)-ttwo;
    % theta(1,1) = theta(1,1)-tone;
    % ============================================================
    h = X*theta;
    t1 = h-y;
    t2 = X.*t1;
    t3 = sum(t2);
    theta = theta - ((alpha/m)*t3)';
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
end
