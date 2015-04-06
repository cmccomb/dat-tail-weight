function w = qw(y, n)
%QW Compute the quantile weight as a measure of tailweight.
%   w = QW(y, n) returns the RQW if n > 0.5, and the LQW if n < 0.5;

if n == 0.5
    error('We should have a talk about your life choices. Using n = 0.5 is not a good measure of tail weight.');
end

if n < 0.5
    w = lqw(y, n);
else
    w = rqw(y, n);
end
end