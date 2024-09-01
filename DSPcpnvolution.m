%Convolution using equations method
clear all
clc
iv1=input("index value from where x starts")
iv2=input("index value from where h starts")
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function y in [ ]:");
y=h;
l=length(x)+length(h)-1;
h=[h,zeros(1,l-length(h))];
s=zeros(1,l);
for n=1:l
for m=1:length(x)
    if n-m+1>0
            s(n)=s(n)+x(m)*h(n-m+1);            
        end
end
end
s
f=(iv1+iv2:iv1+iv2+l-1)
stem(f,s)