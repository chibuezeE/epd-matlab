function [I,theta,thetaL,thetaU]=Fisher2EPDObs(T)
%Observed Fisher Information matrix for 2 parameter Extended Power Distribution
%I=Observed Fisher Information Matrix
%theta=MLE for unknown parameters
%thetaL=lower confidence limit
%thetaU=upper confidence limit
%T=Observed data

n=numel(T);
[theta]=MLEEPF2(T);
I(1,1)=sum(1./(theta(1)-2*theta(2)*log(T)).^2);
I(1,2)=-2*sum(log(T)./(theta(1)-2*theta(2)*log(T)).^2);
I(2,1)=I(1,2);
I(2,2)=4*sum(log(T).^2./(theta(1)-2*theta(2)*log(T)).^2);
invI=I^(-1);
thetaL=theta-1.96*sqrt(diag(invI))';
thetaU=theta+1.96*sqrt(diag(invI))';

