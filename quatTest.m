function quatTest(angle, axis)
% AUTHOR: MICHAEL SIKORA
% DATE: 2018.01.14
% PURPOSE: written to test quaternion algebra
% Implements equations 5 in madgwick paper

% Initially just a script. I made it a function for quicker observation
% of rotation using quaternions

%%%%%%%% DECLARATIONS %%%%%%%%%
% Initial vector in x y z coordinates
vect_init = [1 0 0]; % size 1x3
% sqrt(sum(vect_init.^2)) % Magnitude
% any quaternion representing a change of a coordinate frame can be defined
% by a rotation about an axis. This definition makes it easy to observe
% the results finding a resultant vector transformed by a quaternion.

% axis and angle of rotation to define quaternion
% angle = pi;
% axis = [1 0 0];

cos2 = cos(angle/2);
sin2 = sin(angle/2);
% Define quaternion
% Madgwick's definition:
% quaternion = [cos2 -axis(1)*sin2 -axis(2)*sin2 -axis(3)*sin2];
% standard definition: 
quaternion = [cos2 axis(1)*sin2 axis(2)*sin2 axis(3)*sin2];


% alternatively, quaternion can be explicitly defined here
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Calculate vect in new reference frame
vect_after = quatRotateDup(quaternion, vect_init);
% sqrt(sum(vect_after.^2)) % Magnitude

[x, y, z] = sphere(128);
%%%%%%%% PLOT %%%%%%%%
figure(1)
subplot(1,2,1), quiver3(0,0,0,vect_init(1),vect_init(2),vect_init(3));
hold on;
h = surfl(x,y,z); set(h, 'FaceAlpha', 0.1); shading interp;
xlim([-1 1]); ylim([-1 1]); zlim([-1 1]);
title('vector in initial reference frame'); hold off;

subplot(1,2,2), quiver3(0,0,0,vect_after(1),vect_after(2),vect_after(3));
hold on;
quiver3(0,0,0,axis(1),axis(2),axis(3)); 
h = surfl(x,y,z); set(h, 'FaceAlpha', 0.1 ); shading interp; hold off;
legend('vector','axis','Location','northeast');
xlabel('x axis'); ylabel('y axis'); zlabel('z axis');
xlim([-1 1]); ylim([-1 1]); zlim([-1 1]);
title('vector in new reference frame');

%%%%%%%%%%%%%%%%%%%%%%
end