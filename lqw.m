function w = lqw(y, n)
%LQW Compute the quantile weight as a measure of left tailweight.
%   w = LQW(y, n) returns the weight of the nth quantile.

if n > 0.5
    error('Please use the RQW (right quantile weight) function.')
end

w = (prctile(y, (1-n)/2) + prctile(y, n/2) - 2*prctile(y, 0.25))/ ...
    (prctile(y, (1-n)/2) - prctile(y, n/2));

end
