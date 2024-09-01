clc
clear all
x=input("Enter values of x:");
n=length(x);
l=fix(n/2);
if rem(n,2)==0
    l=log2(n);
else
    l=fix(log2(n))+1;   
end
k=2^l;
z=zeros(k,k);
for m=1:k
    for j=1:k
        
        if (m-1)*(j-1)>k-1
           a=(m-1)*(j-1)-k;
           if a>k/2
               b=a-(k/2);
               z(m,j)=-exp((-i*2*pi*b)/k);
           else
               z(m,j)=exp((-i*2*pi*a)/k);
           end
        else
            z(m,j)=exp((-i*2*pi*(m-1)*(j-1))/k);
        end
    end
end

z
x=[x,zeros(1,k-n)];
y=z*transpose(x)
c=fft(x)
