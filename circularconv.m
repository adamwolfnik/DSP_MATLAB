function s=circconv(x,h)

if length(x)>length(h)
    h=[h,zeros(1,length(x)-length(h))];
elseif length(h)>length(x)
    x=[x,zeros(1,length(h)-length(x))];
end
l=length(h);
A=zeros(l,l);
l=length(h);
A=zeros(l,l);
for i=1:l
    for j=1:l
        A(j,i)=x(j);
    end
    x=[x(l),x(1:end-1)];
end
A;
s=A*transpose(h);