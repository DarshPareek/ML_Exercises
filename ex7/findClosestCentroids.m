function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%
% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
n = size(X, 1);
for i = 1:n
  min = 999999999999;
  for j = 1:K
    min_ = sqrt(sum((X(i,:)- centroids(j,:)).^2))^2;
    if min_ < min
        min = min_;
        idx(i) = j;
    end
  end
end


% =============================================================

end

