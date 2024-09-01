clear all
clc
iv=input("Enter the index value where the signal begins:")
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
        A(i,j)=h(j);
    end
    h=[h(l),h(1:end-1)];
end
A

s=A*transpose(x)
st=transpose(s)
f=(iv:iv+l-1)
stem(f,st)