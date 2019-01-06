function [T]=RandEPF3(alphak,n)
%Generate Random Variates form the 3 paramter extended power distribution.
%With parameters [alphak(1), alphak(2), alphak(3)], e.g. alphak=[1, 1, 1].
%n=Sample size.


T=NaN(1,n);
A1=alphak(3);
A2=-alphak(2);
A3=alphak(1);
for i=1:n
A4=-log(rand);

p=[A1, A2, A3, A4];
r=roots(p);
rr=exp(r);
rr=rr(imag(rr)==0);
bb=rr(find(rr>0&rr<1));

    T(i)=bb(1);


end