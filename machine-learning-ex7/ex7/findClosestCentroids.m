function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])

% Set K 
K = size(centroids, 1); % K x 1 == 3 x 1
m = size(X, 1);         % m x 1 == 300 x 2

% You need to return the following variables correctly.
idx = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.

for j = 1 : m
  cc = zeros(K, 1);
  cc = sqrt(sum((X(j,:) - centroids) .^ 2, 2));
  
  [~, idx(j)] = min(cc);
endfor

end

