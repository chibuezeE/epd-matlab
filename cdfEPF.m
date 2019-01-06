function [F]=cdfEPF(t,alphak)
%Cumulative distribution function for 2 Parameter Extended Power Distribution
% t=linspace(eps,0.9999,1000);
F=exp(alphak(1)*log(t)-alphak(2)*log(t).^2);
% f(1)=0;
