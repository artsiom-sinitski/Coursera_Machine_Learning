function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.

##for j = 1 : K
##  Ck = 0;
##  sumXi = 0;
##  sumYi = 0;
##  
##  for i = 1 : m
##    if idx(i) == j
##      Ck++;
##      sumXi += sum(X(i,1));
##      sumYi += sum(X(i,2));
##    endif
##  endfor
##
##  centroids(j,1) = 1/Ck * sumXi;
##  centroids(j,2) = 1/Ck * sumYi;
##endfor

for i = 1 : K
      idx_i = find(idx==i);       %indexes of all the input which belongs to cluster j
      centroids(i,:) = mean(X(idx_i,:)); % calculating mean using built-in function
  end
  
end

