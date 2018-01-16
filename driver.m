% Michael Sikora
% 2018.01.14
% Quickly visualize a rotation of a unit vector in the x direction
% using a quaternion defined by an axis and rotation

%ax = [0 0 1]; % x,y,z of axis of rotation
%ax = ax./sqrt(sum(ax.^2)); % Normalizes axis to unit length
% quatTest(pi/2, ax); % rotates and plots

% quatTest(pi/4, ax);

% full 360 degree rotation about the -y axis
ax = [0 1 0]; ax = ax./sqrt(sum(ax.^2));
N = 10;
for ii = 1:N
    quatTest(2*ii*pi/N, ax);
    pause(0.02);
end

% ax = [0 1 0]; % x,y,z of axis of rotation
% ax = ax./sqrt(sum(ax.^2)); % Normalizes axis to unit length
% % quatTest(pi/2, ax); % rotates and plots
% 
% quatTest(pi/4, ax);


% % full 360 degree rotation about the -y axis
% ax = [0 -1 0]; ax = ax./sqrt(sum(ax.^2));
% N = 10;
% for ii = 1:N
%     quatTest(2*ii*pi/N, ax);
%     pause(0.02);
% end
