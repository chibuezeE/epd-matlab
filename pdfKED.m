function [f]=pdfKED(t,alphak)
% t=linspace(eps,0.9999,1000);
f=alphak(3)*((alphak(1)-2*alphak(2).*log(t))./t).*exp(alphak(1)*log(t)-alphak(2)*log(t).^2).*(1-exp(alphak(1)*log(t)-alphak(2)*log(t).^2)).^(alphak(3)-1);
% f(1)=0;
