%% ��ȡtxt�ļ�
Vertex=read_STL_ASCII('��������ͼasciistl - change_1.txt');

 %% չʾ��άͼ��
%  show_3D_fill3(Vertex,M);
  %% ��ϣ������������Կ
h ='7eb8b3ac2a300615eb1887d0192a2fba6b26486869faf1583c8f05b916a081fd545f76f6ec26f88bbede36c0c6a40deeb028b453c21cb48136cb91d89cf5abc9';
bitxor=256;
random=1998;
b1=T_16_to_2(h,480);
%  b2=T_2_to_10(b1,12);
b2=Dx_1(b1); %Ŀǰ��12����Կ

%% ����ϵͳ��������α�������
[M,N]=size(Vertex);
T=200;%����200��
[A,random]=DCML(b2,Vertex,T,8);
%% ������������ A2
A2=A(2,T+1:T+M*N);
P1=Sort(Vertex,A2);
%% �������ʱ����Ҫ��ֵ %����Կ�ͻ���ϵͳ�޹�
% MAX_1=floor(max(max(Vertex)));
% MAX_2=dec2bin(MAX_1);
% [m1,n1]=size(MAX_2);
% MAX_22= zeros(1,n1);
% for n=1:n1
%    MAX_22(n)=str2double(MAX_2(n));
% end
%  for n=1:n1-1
%          MAX_22(n)=1;
%  end
% bitxor=0;
%  for n=1:n1
%  bitxor=MAX_22(n1-n+1)*2^(n-1)+bitxor;
%  end
%  bitxor=bitxor+1;
%% ���������
bitxor=247;
A1=A(1,T+1:T+random);
A11=A(1,T+random+1:T+random*2); 
T1=floor(bitxor*A1)+roundn(A11,-4);%���������
T2=reshape(T1,random/3,3); %������������
%% ����P1��������ٴ����� A3
P2=[P1;T2];
[M1,N1]=size(P2);
A3=A(3,T+1:T+M1*N1);
for round=1:1:1
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
P6_one=P5+P55;
P2=zeros(M1,N1);
P2=P6_one;
end
% show_3D_fill3(P6,M1);
%  figure;
% Histogram(Vertex,'100','xy');
%  figure;
% H_change_one=Histogram(P6_one,'100','xy');
%  [npcr, n_uaci] = NPCRandUACI(H, H_change_one);
% write_STL_ASCII(P6,'����');