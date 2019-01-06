function [F]=cdfCEPF(t,alphak)
%Cumulative Distribution Function for Complementary Extended Power Distribution
%Parameters alphak=[alphak(1), alphak(2)]. E.g. alphak=[1, 1].
% t=linspace(0.00001,0.99999999,1000);
F=exp(((-alphak(1))+sqrt((alphak(1))^2-4*(alphak(2))*log(t)))/(-2*(alphak(2))));
