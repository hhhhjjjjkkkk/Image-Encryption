function P=D_Sort( p,a2 )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[M,N]=size(p);

% ��2-��������
 P1=zeros(M,N);
Q=reshape(p,1,[]);%[]Ϊ�Զ�����ά��

[D, C]=sort(a2);%�����㷨����a2�����������򣬷���D��CΪDԭ���������±�

for i=1:M*N
P1(i)=Q(C(i));%�������±�
end
P=reshape(P1,M,N);
end