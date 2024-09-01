clear all
clc
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function h in [ ]:");
y=h;
if length(x)>length(h)
    h=[h,zeros(1,length(x)-length(h))]
elseif length(h)>length(x)
    x=[x,zeros(1,length(h)-length(x))]
end
s=zeros(1,length(x));
l=length(h);
m=(0:(l-2));
for n=2:l
    h(n)=y(l-m(n-1));
end
h
for i=1:l
    for j=1:l
        s(i)=s(i)+x(j)*h(j);        
    end
    h=[h(l),h(1:end-1)];
end
s
f=[0:l-1];
stem(f,s)
legend("Circularconvolution_using_equations")
c=cconv(x,y,l)
