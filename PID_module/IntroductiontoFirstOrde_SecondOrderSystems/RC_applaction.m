R =1e6;
C = 1e-6;
Wn =1 /(R*C)
zeta = 3*R*C/(2*Wn*(R^2)*(C^2));
Time = 1/(zeta*Wn);
