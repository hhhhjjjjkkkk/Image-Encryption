%% ��ȡtxt�ļ�
Vertex=read_STL_ASCII('��������ͼasciistl.txt');
[M,N]=size(Vertex);
 %% չʾ��άͼ��
%  show_3D_fill3(Vertex,M);
  %% ��ϣ������������Կ
h =hash(Vertex,'SHA512');
b1=T_16_to_2(h,480);
%  b2=T_2_to_10(b1,12);
b2=Dx_1(b1); %Ŀǰ��12����Կ

%% ����ϵͳ��������α�������
T=200;%����200��
[A,random]=DCML(b2,Vertex,T,8);
%% ������������ A2
A2=A(2,T+1:T+M*N);
P1=Sort(Vertex,A2);
%% �������ʱ����Ҫ��ֵ %����Կ�ͻ���ϵͳ�޹�
MAX_1=floor(max(max(Vertex)));
MAX_2=dec2bin(MAX_1);
[m1,n1]=size(MAX_2);
MAX_22= zeros(1,n1);
for n=1:n1
   MAX_22(n)=str2double(MAX_2(n));
end
 for n=1:n1-1
         MAX_22(n)=1;
 end
bitxor=0;
 for n=1:n1
 bitxor=MAX_22(n1-n+1)*2^(n-1)+bitxor;
 end
 bitxor=bitxor+1;
%% ���������
% bitxor=247;
A1=A(1,T+1:T+random);
A11=A(1,T+random+1:T+random*2); 
T1=floor(D_bitxor*A1)+roundn(A11,-4);%���������
T2=reshape(T1,random/3,3); %������������
%% ����P1��������ٴ����� A3
P2=[P1;T2];
[M1,N1]=size(P2);
A3=A(3,T+1:T+M1*N1);
P3=Sort(P2,A3);
% P3=D_1(P2,A7,A3);
%% �������ʱ����Ҫ��ֵ %���ֵ����ͼ���е����ֵ����Կ�ͻ���ϵͳ���ɵ�
% MAX_1=floor(max(max(Vertex)));%���������ڵ����ֵ
% MAX_2=dec2bin(MAX_1);
% [m1,n1]=size(MAX_2);
% MAX_22= zeros(1,n1);
% for n=1:n1
%    MAX_22(n)=str2double(MAX_2(n));
% end
% MAX_222=MAX_22;
% A1_bit=A(1,M1*N1+T-n1+2:M1*N1+T);
% for n=2:n1-1
%     if (A1_bit(n)>=0.5)
%         MAX_222(n)=1;
%     else
%          MAX_222(n)=0;
%     end
% end
% bitxor=0;
% for n=1:n1
% bitxor=MAX_222(n1-n+1)*2^(n-1)+bitxor;
% end
%% ������ȡα�������
A4=A(4,T+1:T+M1*N1);
A5=A(5,T+1:T+M1*N1);
A6=A(6,T+1:T+M1*N1);
A7=A(7,T+1:T+M1*N1);
A8=A(8,T+1:T+M1*N1);
%% �ֽ�������С������
P4=floor(P3);
P44=P3-P4;
%% ����������� A4
P5=Bitxor(P4,A4,bitxor);
% show_3D_fill3(P5,M1);
%  figure;
%  H=Histogram(P5,'100','xy');
%% С�����ּ��� ��� �����������Ȼ�п��ܵõ������޷�������ȥ
A55=roundn(A5,-4);
P55=zeros(M1,N1);
A555=reshape(A55,[M1,N1]);
P55=P44+A555;
%% �����������
P6=P5+P55;
% show_3D_fill3(P6,M1);
%  figure;
% Histogram(Vertex,'100','xy');
%  figure;
% H=Histogram(P6,'100','xy');
% write_STL_ASCII(P6,'����');
%% ��Կ��b2 ��һλ������λ����10λ����12λ�������������246
%% �ֽ�������С������
Q6=P6;
 QQ5=floor(Q6);%����
 Q55=Q6-QQ5;%С��
 Q44=Q55-A555;%�ж��Ƿ��λ
 Q5=zeros(M1,N1);
 for n=1:M1*N1
     if(Q44(n)<0)
         Q5(n)=QQ5(n)-1;%Q5�Ǽ��ܺ����������
     else
         Q5(n)=QQ5(n);
     end
 end
 %% �������ʱ����Ҫ��ֵ %����Կ�ͻ���ϵͳ�޹�
D_MAX_1=floor(max(max(Q5)));
D_MAX_2=dec2bin(MAX_1);
[m1,n1]=size(D_MAX_2);
D_MAX_22= zeros(1,n1);
for n=1:n1
   D_MAX_22(n)=str2double(D_MAX_2(n));
end
 for n=1:n1-1
         D_MAX_22(n)=1;
 end
D_bitxor=0;
 for n=1:n1
 D_bitxor=D_MAX_22(n1-n+1)*2^(n-1)+D_bitxor;
 end
 D_bitxor=D_bitxor+1;
 %% �����������
 Q4=D_Bitxor(Q5,A4,D_bitxor);
 %% С���������
 %% ���
 Q33=Q4+Q44;
 Q3=zeros(M1,N1);
  for n=1:M1*N1
     if(Q44(n)<0)
         Q3(n)=Q33(n)+1;%Q5�����������
     else
         Q3(n)=Q33(n);
     end
  end
 
 %%  �������
 Q2=D_Sort(Q3,A3);
 %% ɾ���������
 Q1=Q2(1:M1-random/3,:);
 %% �������
  V=D_Sort(Q1,A2);
%   show_3D_fill3(V);