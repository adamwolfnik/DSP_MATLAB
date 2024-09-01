clear all
clc
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function h in [ ]:");
y=h;
l1=length(h);
for a=1:length(h)
    h(a)=y(length(h)+1-a);
end
n=length(x);
m=length(h);
l=n+m-1;
s=zeros(1,l);
for i=1:l
    for j=1:n
        for k=1:m
            if j+k-1==i
                s(i)=x(j)*h(k)+s(i);
            end
        end
    end
end
    s
    f=(-l1:-l1+l-1)
    stem(f,s)
    legend("Correlation by table method")