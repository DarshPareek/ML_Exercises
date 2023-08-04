function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = 1./(1 + exp(-z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% x = -1*z;
% for i = 1:length(z(:,1))
%     for j = 1:length(z(1,:))
%         t = exp(x(i,j));
%         g(i,j) = 1/(1+t);
%     end;
% end;




% =============================================================

end
