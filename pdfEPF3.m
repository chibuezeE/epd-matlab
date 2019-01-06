function [f]=pdfEPF3(t,alphak)
%%Extended power dist with 3 params.
% t=linspace(eps,0.9999,1000);
f=((alphak(1)-2*alphak(2).*log(t)+3*alphak(3).*log(t).^2)./t).*exp(alphak(1)*log(t)-alphak(2)*log(t).^2+alphak(3)*log(t).^3);
% f(1)=0;
