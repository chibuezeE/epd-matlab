function [f]=pdfEPF(t,alphak)
% t=linspace(eps,0.9999,1000);
f=((alphak(1)-2*alphak(2).*log(t))./t).*exp(alphak(1)*log(t)-alphak(2)*log(t).^2);
% f(1)=0;
