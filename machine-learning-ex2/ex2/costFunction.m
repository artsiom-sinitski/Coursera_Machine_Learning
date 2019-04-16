function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
n = size(theta);

% You need to return the following variables correctly 
J = 0;
grad = zeros(n);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta

% Calculate hypothesis
hx = sigmoid(X * theta);

% Calculate the Cost function:
res = -1*y .* log(hx) - (1-y) .* log(1-hx);
J = 1/m * sum(res(:));

%Calculate the gradients descents:
for i = 1 : n
  res = (hx .- y) .* X(:, i);
  grad(i) = 1/m * sum(res(:));
endfor

end
