 function   P3=E_2(p,a1)
% p=P2;
% a1=A5;
[M,N]=size(p);
%�Ŷ����,���л����Ŷ�����㷨
s1=zeros(M,N);
for i=1:M*N
    s1(i)=mod(floor(double(a1(i))*200),200);%���ֵԽ����ɢԽ��2000
end
%------------------------------------------------------------------------------------
t1=zeros(M,N);
for i=1:M*N
t1(i)=bitxor(floor(p(i)),s1(i));
end
%fix(x)��0ȡ��x���������
%floor(x)ȡ��xС����ӽ�������
%---------------------------------------��ɢ------------------------------------------
t2=zeros(M,N);
%���Һ�����ģ�ǰһ���������Ľ�����Ŷ����
t2(1)=t1(1);
for i=1:M*N-1
t2(i+1)=bitxor(t2(i),t1(i+1));
end
% P3=reshape(uint8(t2),M,N);
P3=reshape(t2,M,N);
%test
% imwrite(P3,'de_test_lenna.bmp');
%  figure;
% imshow([p,P3]);
% figure;
% imhist(p);
% figure;
% imhist(t1);
% figure;
% imhist(P3);