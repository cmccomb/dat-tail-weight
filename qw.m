function w = qw(y, n)
%QW Compute the quantile weight as a measure of tailweight.
%   w = QW(y, n) returns the RQW if n > 50, and the LQW if n < 50.

if n == 50
    warning('We should have a talk about your life choices. Using n = 50 is not a good measure of tail weight.');
end

if n < 50
    w = lqw(y, n);
else
    w = rqw(y, n);
end
end