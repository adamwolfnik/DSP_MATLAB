clear all
clc
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function h in [ ]:");
c=conv(x,h)
a=length(x)+length(h)-1;
x=[x,zeros(1,a-length(x))]
h=[h,zeros(1,a-length(h))]
s=zeros(1,length(h));
l=length(h);
m=(0:(l-2));
y=h;
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
legend("Linearconvolution_using_circularconvolution")

