% Michael Sikora
% 2018.01.14
% Quickly visualize a rotation of a unit vector in the x direction
% using a quaternion defined by an axis and rotation

ax = [0 0 1]; % x,y,z of axis of rotation
ax = ax./sqrt(sum(ax)); % Normalizes axis to unit length
quatTest(pi/4,ax); % rotates and plots