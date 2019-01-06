function [T]=RandEPF(alphak,n)
%Generate Random Variates form the 2 paramter extended power distribution.
%With parameters [alphak(1), alphak(2)], e.g. alphak=[1, 1]. 
%n=Sample size.
T=exp(((-alphak(1)).*ones(1,n)+sqrt((alphak(1))^2.*ones(1,n)-4*(alphak(2))*log(rand(1,n))))/(-2*(alphak(2))));