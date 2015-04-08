%% Make a uniform random data set
y = rand(1000000, 1);

% Find the LQW25 and RQW75
l25 = qw(y, 25);
r75 = qw(y, 75);

% Test assertions
assert(l25 < 0.01);
assert(r75 < 0.01);

%% Make a normal random data set
y = randn(10000000, 1);

% Find the LQW25 and RQW75
l25 = qw(y, 25);
r75 = qw(y, 75);

% Test assertions
assert(l25 > -0.15 && l25 < -0.14);
assert(R75 < +0.15 && r75 > +0.14);