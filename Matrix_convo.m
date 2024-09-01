clear all
clc
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function h in [ ]:");
if length(x)>length(h)
    h=[h,zeros(1,length(x)-length(h))]
elseif length(h)>length(x)
    x=[x,zeros(1,length(h)-length(x))]
end
l=length(h);
A=zeros(l,l);
for i=1:l
    for j=1:l
        A(j,i)=x(j);
    end
    x=[x(l),x(1:end-1)];
end
A
s=A*transpose(h)
f=[0:l-1];
stem(f,s)
legend("Circularconvolution_using_matrix")
c=cconv(x,h,l)