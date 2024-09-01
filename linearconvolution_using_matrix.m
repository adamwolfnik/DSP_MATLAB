clear all
clc
x=input("Discrete values of function x in [ ]:");
h=input("Discrete values of function h in [ ]:");
c=conv(x,h)
a=length(x)+length(h)-1;
x=[x,zeros(1,a-length(x))]
h=[h,zeros(1,a-length(h))]
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
legend("linearconvolution_using_matrix")