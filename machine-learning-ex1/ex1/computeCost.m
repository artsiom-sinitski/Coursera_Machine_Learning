function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% h(x) = theta0 + theta1 * x1;
% J(theta) = 1/(2m) * SUMMATION OF(h(Xi) - Yi)^2

% calculate the h(x)
hx = X * theta;

% calculate the square of h(x)-y
t = power(hx .- y, 2);

% Cost function
J = 1/(2 * m) * sum(t(:)); % sum of all elements of the matrix t

% =========================================================================

end
