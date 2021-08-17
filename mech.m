% step response plot of a mechanical system with
% transfer fucntion of 1/(Ms^2 + Bs + k )
%  M mass of the object
%  B dumping factor
%  K spring constat

clear;
clf;

try
    pkg load control %% to get function tf() and step()
catch
    disp("unale to load packge control")
end


K=1; M=1; B=1; %% spring constatant , mass and friction constant
t = 0:0.1:30;  %% time to plot and analysed

num = [1];  %% numinotar for the transfer funtion
den = [K M B]; %% denomunator

G = tf(num,den); %% the transfer function
y1 = step(G,t); %% we get step response of the transfer funtion

plot(t,y1);  %% we finnaly plot it
