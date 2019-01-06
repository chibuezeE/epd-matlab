function [theta,AIC4,AICc4,BIC4]=MLEpar4EPF(T)
%MLE, AIC, AICc, BIC for 4 parameter extended power distribution  
n=numel(T);
function[LL]=MLEfit(theta0)
LL=-(sum(log(theta0(1)-2*theta0(2).*log(T)+3*theta0(3).*log(T).^2-4*theta0(4).*log(T).^3))-sum(log(T))+theta0(1)*sum(log(T))-theta0(2)*sum(log(T).^2)+theta0(3)*sum(log(T).^3)-theta0(4)*sum(log(T).^4));
end
lb=[eps eps eps eps];
ub=[Inf Inf Inf Inf];
A1=[];
nonlcon=[];
b1=[];
Aeq=[];
beq=[];
options = optimoptions(@fmincon,'MaxIterations',Inf,'MaxFunctionEvaluations', 1000000000000000*330);

[theta,fval] = fmincon(@(theta0)MLEfit(theta0),[2 2 2 2],A1,b1,Aeq,beq,lb,ub,nonlcon,options);
AIC4=2*4+2*fval;
AICc4=AIC4+(40/(n-4-1));
BIC4=log(n)*4+2*fval;

end