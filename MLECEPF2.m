function [theta]=MLECEPF2(T)
%MLE for complementary extended power distribution.
%T=Observed data
%theta=Maximum likelihood estimate (MLE)
n=numel(T);
function[LL]=MLEfit(theta0)
LL=-(sum(log(theta0(1)^2-4*theta0(2).*log(T)).^-.5)-sum(log(T))+(theta0(1)*n/(2*theta0(2)))-(1/(2*theta0(2)))*sum((theta0(1)^2-4*theta0(2).*log(T)).^.5));
end
lb=[-Inf -Inf];
ub=[Inf Inf];
A1=[];
nonlcon=[];
b1=[];
Aeq=[];
beq=[];
options = optimoptions(@fmincon,'MaxIterations',Inf,'MaxFunctionEvaluations', 1000000000000000*330);

[theta,~] = fmincon(@(theta0)MLEfit(theta0),[1 1],A1,b1,Aeq,beq,lb,ub,nonlcon,options);
end