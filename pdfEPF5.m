function [f]=pdfEPF5(t,alphak)
%%Extended power dist with 4 params.
% t=linspace(eps,0.9999,1000);
f=((alphak(1)-2*alphak(2).*log(t)+3*alphak(3).*log(t).^2-4*alphak(4).*log(t).^3+5*alphak(5).*log(t).^4)./t).*exp(alphak(1)*log(t)-alphak(2)*log(t).^2+alphak(3)*log(t).^3-alphak(4)*log(t).^4+alphak(5)*log(t).^5);
% f(1)=0;
