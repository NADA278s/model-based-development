% for first order from simulation.
%tuning methods,Process Reaction Curve.
K = 1;
L = 0.0004;
T = 1.28 - L;
% calculat KP KI KD from the table.
KP_1st = 1.2*(L/T);
KI_1st =KP_1st/(2*L) ;
KD_1st =KP_1st* .5*L;
%Ziegler-Nichols to optimize PID parameters.
%for R1 C1 
%from the simulation
KU1 = 300;
TU1 = 4.157- 3.798;
[KP1,KI1,KD1] = ZiglerNichols(KU1,TU1,'ClassicPID');
%for R2 C2 
%from the simulation
KU2 = 200;
TU2 = 3.314-2.978;
[KP2,KI2,KD2] = ZiglerNichols(KU2,TU2,'ClassicPID');
%for R2 C2 
%from the simulation
KU3 = 100;
TU3= 3.571-2.963;
[KP3,KI3,KD3] = ZiglerNichols(KU3,TU3,'ClassicPID');