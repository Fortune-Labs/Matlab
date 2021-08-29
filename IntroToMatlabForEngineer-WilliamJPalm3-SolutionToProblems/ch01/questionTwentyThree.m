x1 = 0:0.01:pi;
x2= -pi:0.01:0;

% Array the hold values for x
x = -pi:0.01:pi;

f1  = ones(length(x1),1);
f2  = -ones(length(x2),1);

fourier = 4/pi *(sin(x)/1 + sin(3*x)/3 + sin(5*x)/5 + sin(7*x)/7);

plot(x1,f1,x2,f2,x,fourier)
xlabel('x')