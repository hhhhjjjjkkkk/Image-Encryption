function P2=D_Bitxor(p,a1,q)
[M,N]=size(p);
%����s1��s1��0��1200��α�������
s1=zeros(M,N);
for i=1:M*N
    s1(i)=mod(floor(double(a1(i))*q),q);%û����
end
%����ɢ
t2=zeros(M,N);
for i=1:M*N
t2(i)=floor(p(i));
end
t1=zeros(M,N);
t1(1)=t2(1);
%t1=t2=p
for i=1:M*N-1
t1(i+1)=bitxor(t2(i),t2(i+1));
end
%���Ŷ����
t0=zeros(M,N);
for i=1:M*N
t0(i)=bitxor(t1(i),s1(i));
end
P2=reshape(t0,M,N);
end
