function P1=D_1( p,a1,a2 )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[M,N]=size(p);

% ��2-��������
p2=p;
P1=zeros(M,N);
Q=reshape(p2,1,[]);%[]Ϊ�Զ�����ά��

[D, C]=sort(a2);%�����㷨����a2�����������򣬷���D��CΪDԭ���������±�

for i=1:M*N
P1(i)=Q(C(i));%�������±�
end

% ��1-��ѩҮ������ 
for i=3:1:M*N-1
j=floor(a1(i)*i)+1;
k=P1(i);
P1(i)=P1(j);
P1(j)=k;
end

P1=reshape(P1,M,N);

end

