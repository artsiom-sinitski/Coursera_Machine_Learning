function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
n = size(theta);
grad = zeros(n);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% Calculate hypothesis
hx = sigmoid(X * theta);

% Calculate the Cost function:
res1 = -1*y .* log(hx) - (1-y) .* log(1-hx);

res2 = power(theta, 2);
res2(1) = 0;    % theta0 is not to be parametrized, so exclude it

J = 1/m * sum(res1(:)) + lambda/(2*m)*sum(res2(:));

%Calculate the gradients descents:
for i = 1 : n
  res = (hx .- y) .* X(:, i);
  if ( i > 1)  
    grad(i) = (1/m * sum(res(:))) + lambda/m * theta(i);
  elseif % theta0 is not to be parametrized, so exclude it
    grad(i) = 1/m * sum(res(:));
  endif
endfor
% =============================================================
end
