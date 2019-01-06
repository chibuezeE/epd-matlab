function [theta,AIC3,AICc3,BIC3]=MLEpar3EPF(T)
%MLE, AIC, AICc, BIC for 3 paramter extended power distribution
%T=Observed data
n=numel(T);
function[LL]=MLEfit(theta0)
LL=-(sum(log(theta0(1)-2*theta0(2).*log(T)+3*theta0(3).*log(T).^2))-sum(log(T))+theta0(1)*sum(log(T))-theta0(2)*sum(log(T).^2)+theta0(3)*sum(log(T).^3));
end
lb=[eps eps eps];
ub=[Inf Inf Inf];
A1=[];
nonlcon=[];
b1=[];
Aeq=[];
beq=[];
options = optimoptions(@fmincon,'MaxIterations',Inf,'MaxFunctionEvaluations', 1000000000000000*330);

[theta,fval] = fmincon(@(theta0)MLEfit(theta0),[2 2 2],A1,b1,Aeq,beq,lb,ub,nonlcon,options);
AIC3=2*3+2*fval;
AICc3=AIC3+(24/(n-3-1));
BIC3=log(n)*3+2*fval;

end