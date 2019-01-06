function [Q]=QuantileEPD(p,alphak)
%pth Quantile for 2 Parameter Extended Power Distribution
%p lies between [0, 1]
%alphak=[alphak(1), alphak(2)] are the parameters. E.g. alphak=[1,1].
Q=exp((alphak(1)-sqrt(alphak(1)^2-4*(alphak(2))*log(p)))/(2*(alphak(2))));

end