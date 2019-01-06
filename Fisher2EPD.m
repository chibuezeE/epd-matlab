function [I,theta,thetaL,thetaU]=Fisher2EPD(T)
%Expected Fisher Information matrix for 2 parameter Extended Power Distribution
%I=Expected Fisher Information Matrix
%theta=MLE for unknown parameters
%thetaL=lower confidence limit
%thetaU=upper confidence limit
%T=observed data
n=numel(T);
[theta]=MLEEPF2(T);
I(1,1)=-n*(exp(theta(1)^2/(4*theta(2)))/(4*theta(2)))*ei(-(theta(1)^2)/(4*theta(2)));
I(1,2)=n*(exp(theta(1)^2/(4*theta(2)))/(2*theta(2)^2))*((theta(1)/2)*ei(-theta(1)^2/(4*theta(2)))+sqrt(pi*theta(2))*erfc(theta(1)/(2*sqrt(theta(2)))));
I(2,1)=I(1,2);
I(2,2)=(n*(exp(theta(1)^2/(4*theta(2)))/(2*theta(2)^3)))*(-(theta(1)^2/2)*ei(-theta(1)^2/(4*theta(2)))-2*theta(1)*sqrt(pi*theta(2))*erfc(theta(1)/(2*sqrt(theta(2))))+2*theta(2)*exp(-theta(1)^2/(4*theta(2))));
invI=I^(-1);
thetaL=theta-1.96*sqrt(diag(invI))';
thetaU=theta+1.96*sqrt(diag(invI))';

