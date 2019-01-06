function [M]=MeanEPF(alphak)
M=1-0.5*(sqrt(pi/alphak(2)))*exp((alphak(1)+1)^2/(4*alphak(2)))*erfc((alphak(1)+1)/(2*sqrt(alphak(2))));