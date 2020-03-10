clc
close all
clear
format compact
% ==================================================================
% This prog generates input parameters for a simple model of mini WEDM
% system. Author Makarand M Kane Created 24 Dec 2019
%         Author Prakhar Diwan 
% ==================================================================
Vref = 70;
Iref = 5;
Rsp = 1;                    % spark resistance
fmach = 1e3;
Tmach = 1/fmach;
Dm = 19;                    % machining duty 
Dign = 1;                   % ignition delay in percentage
Tm = Dm/100 * Tmach;
Tign = Dign / 100 * Tmach;
Td = Tign + Tm;
Voff = 4;                   % reference voltage offset 
To = 10e-2;                 % time constant of the gap voltage filter
E_const = 2.5;              % energy multiplier
mm_dis = 100e-6;              % micromotion controller unit displacement
fo = 10;
wo = 2*pi*fo;
SV = 35;
SVoffset = 2;
f1 = 10;                    % frequency of mrr integral
w1 = 2*pi*f1;
wireRad = 90e-6;                  % radius of the wire
hp = 4.5e-2;
AedivR = pi*hp;           % Area of the material removed divided by its radius
init_ediff = 50e-6;


%% E_const : ballpark value is derived here
E_spark = Dm * Rsp * Iref;
cutwidth = 40e-6;
volperpulse = pi * hp * cutwidth * wireRad;
volpersec = volperpulse * fmach;
E_const = volpersec / E_spark


%%%% MRR filter/nonfilter + position
%%%% Voltage and current Pulses + MRR
%%%%%




