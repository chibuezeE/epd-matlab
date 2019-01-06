function [M1,M2]=ModeEPF(alphak)
M1=exp(((2*alphak(1)-1)+sqrt(1+8*alphak(2)))/(4*alphak(2)));
M2=exp(((2*alphak(1)-1)-sqrt(1+8*alphak(2)))/(4*alphak(2)));