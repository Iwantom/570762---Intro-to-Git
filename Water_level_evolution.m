%% Clear up variables

clear all;
close all;
clc;

%% Constants

% Gravitational constant 
g = 9.81;

% Surface area
s = 1.0;

% Water density 
rho = 1000;

% Loss coeffecient 
cl = 1000;

% Initial water level
h0 = 2;

%% Calculated Parameters 

alpha = -sqrt(g/s^2/rho/cl);
Ci_prime = sqrt(h0);

t_e = -2*sqrt(h0)/alpha;

%% Solutions

t_past = linspace(-0.2*t_e, 0, 100);

t0 = 0;
t1 = t_e;
t = linspace(t0,t1,1001);

h = alpha^2*(t.^2)/4 + alpha*t*sqrt(h0) + h0;

%% Visualisations

plot(t,h)
hold on 
plot(t_past, h0*ones(size(t_past)), "r")
xlim([-0.2*t_e, t_e])
ylim([0, 1.05*h0])

xlabel('Time [s]')
ylabel('Water level [m]')
title('Water level evolution')


