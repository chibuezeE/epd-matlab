function [F]=cdfEPF4(t,alphak)
%Cumulative Distirbution Function for Extended power dist with 4 params.
% t=linspace(eps,0.9999,1000);
%Parameters alphak=[alphak(1), alphak(2), alphak(3), alphak(4)]. E.g. alphak=[1, 1, 1, 1].

F=exp(alphak(1)*log(t)-alphak(2)*log(t).^2+alphak(3)*log(t).^3-alphak(4)*log(t).^4);
% f(1)=0;
