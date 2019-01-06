function [f]=pdfCEPF(t,alphak)
% t=linspace(0.00001,0.99999999,1000);
% n=numel(t);
f=(1./t).*(((alphak(1))^2-4*alphak(2)*log(t)).^(-0.5)).*exp((-alphak(1)+sqrt(alphak(1)^2-4*(alphak(2))*log(t)))/(-2*(alphak(2))));
% f(1)=eps;