clear all
clc
iv1=input("index value from where x starts")
iv2=input("index value from where h starts")
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function h in [ ]:");
y=h;
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
f=(iv1+iv2:iv1+iv2+l-1)
stem(f,s)
legend("Convolutionbytable")
c=conv(x,h)