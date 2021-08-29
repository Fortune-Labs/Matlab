%Projectile
V0 = 40; %initial speed
g = 9.81; % gravitational acceleration
Angle = 30*pi/180; %angle in radian
t_hit = (2*V0*sin(Angle)/g); %compute the time to hit
t=0:t_hit/100:t_hit; %declaration of an array containing time
h = V0.*t.*sin(Angle)-0.5.*g.*t.^2; % declaration of an array containing height
v = sqrt(V0.^2-2.*V0.*g.*t.*sin(Angle)+(g.^2).*(t.^2)); % declaration of an array containing speed
plot (t,v,t,h); grid on; legend('speed', 'height'); % plotting the velocity vs time and height vs time graph

% part a %finding the time interval when the height is no less than 15m
x= find(h>=15);
t1_a = min(t(x));
t2_a = max(t(x));
disp ('The time between which the height is no less than 15 m')
TA = [num2str(t1_a),'<=t<=',num2str(t2_a)]; disp(TA)

% part b %finding the time interval when the height>=15m and velocity<=36
y= find(h>=15 & v<=36);
t1_b = min(t(y));
t2_b = max(t(y));
disp ('The time between which the height is no less than 15 m and velocity no greater than 36m/s')
TB = [num2str(t1_b),'<=t<=',num2str(t2_b)]; 
disp(TB)

% part_c %finding the time interval when the height<5 and velocity>35
z = find(h<5 & v>35);
w = length(z)/2;
t1_c = min(t(z)); t4_c = max(t(z));
t2_c = min(t(w)); t3_c = max(t(w));
disp ('The time between which the height is less than 5m and velocity is greather than 35m/s')
TC = [num2str(t1_c),'<=t<=',num2str(t2_c),' and ',num2str(t3_c),'<=t<=',num2str(t4_c)];
disp(TC)