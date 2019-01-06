function [theta,AIC2,AICc2,BIC2]=MLEEPF2(T)
%MLE, AIC, AICc and BIC for 2 parameter extended power distribution
%T=Observed data
%theta=Maximum likelihood estimate
n=numel(T);
function[LL]=MLEfit(theta0)
LL=-(sum(log(theta0(1)-2*theta0(2).*log(T)))-sum(log(T))+theta0(1)*sum(log(T))-theta0(2)*sum(log(T).^2));
end
lb=[eps eps];
ub=[Inf Inf];
A1=[];
nonlcon=[];
b1=[];
Aeq=[];
beq=[];
options = optimoptions(@fmincon,'MaxIterations',Inf,'MaxFunctionEvaluations', 1000000000000000*330);

[theta,fval] = fmincon(@(theta0)MLEfit(theta0),[2 2],A1,b1,Aeq,beq,lb,ub,nonlcon,options);
AIC2=2*2+2*fval;
AICc2=AIC2+(12/(n-2-1));
BIC2=log(n)*2+2*fval;
end