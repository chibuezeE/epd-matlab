function [F]=cdfEPF3(t,alphak)
%Cumulative Distribution function for Extended power distribution with 3 parameters.
% t=linspace(eps,0.99999,1000);
%Parameters alphak=[alphak(1), alphak(2), alphak(3)]. E.g. alphak=[1, 1, 1].
F=exp(alphak(1)*log(t)-alphak(2)*log(t).^2+alphak(3)*log(t).^3);
