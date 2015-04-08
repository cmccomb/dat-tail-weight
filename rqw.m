function w = rqw(y, n)
%RQW Compute the quantile weight as a measure of right tailweight.
%   w = RQW(y, n) returns the weight of the nth quantile.

if n < 0.5
    error('Please use the LQW (right quantile weight) function.')
end

w = (prctile(y, (100+n)/2) + prctile(y, 100 - n/2) - 2*prctile(y, 75))/ ...
    (prctile(y, (100+n)/2) - prctile(y, 100 - n/2));

end