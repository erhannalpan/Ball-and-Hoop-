%% plotting root locus to find Ku and Pu for Ziegler-Nichols method.

% Note that in this case Kc*Gp(s) is the open loop tf.

% we can use the plant tf directly as it we already estimated it via system
% identification.

syms s 

openloop_zn=tf_plant;

rlocus(openloop_zn);


grid on;

hold on;

% Run this code on the TERMINAL to find the exact points on root locus:

% [K_selected, poles]=rlocfind(openloop_zn);