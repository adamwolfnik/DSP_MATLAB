clc;
clear all;
close all;
% plotting poles & zeros
num=input('Enter the numerator coefficients:'); %[ 0.45 0.5 0.45];
den=input('Enter the denominator coefficients:'); % [1 -0.43 0.56];
subplot(2,2,1);zplane(num,den);
title('zplane');
num_a=roots(num)
den_b=roots(den)
subplot(2,2,2);zplane(num_a,den_b);
title('zplane');
[z, p, k] = tf2zp(num,den)
subplot(2,2,3);zplane(z,p);
title('zplane');
disp('The poles are:');disp(p);
disp('The zeros are:');disp(z);
% FACTORED FORM OF Z-TRANSFORM
sos = zp2sos(z,p,k)
% FINDING IMPULSE RESPONSE
N = max(length(num),length(den));
[g t]=impz(num,den,N+1)
subplot(2,2,4);stem(g);
title('Impulse Response');
disp('Impulse response of a system is:');disp(g);
% GETTING PARTIAL FRACTION FORM OF Z-TRANSFORM
[r s t]=residue(num,den)
% Z-TRANSFORM
syms z n a;
eq=(r(1)*(s(1)^(-n)));
ztrans_out=ztrans(eq)
% inverse Z-transform
inv_ztransform=simplify(iztrans((r(1)/(z-s(1))+(r(2)/z-s(2)))))
% frequency response
figure,freqz(num,den,'whole')
legend("Z-transform");