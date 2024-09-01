clear all
clc
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function y in [ ]:");
c=xcorr(x,h)
l1=length(h)
y=h;
l=length(x)+length(h)-1;
for a=1:length(h)
    h(a)=y(length(h)+1-a);
end
h=[h,zeros(1,l-length(h))]
s=zeros(1,l);
for n=1:l
for m=1:length(x)
    if n-m+1>0
            s(n)=s(n)+x(m)*h(n-m+1);            
        end
end
end
f=(-l1:-l1+l-1)
stem(f,s)
s



