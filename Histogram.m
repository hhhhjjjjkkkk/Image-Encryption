function z1=Histogram(p1,meth,meth1)
% bar3(E3);
% bar3(Vertex);
MAX=floor(max(max(p1)))+1;
MIN=min(min(p1)); 
[M,N]=size(p1);
switch meth 
        case '10' 
        t=(MAX-MIN)/10;
        z=zeros(10,10); 
       case '20' 
        t=(MAX-MIN)/20;
        z=zeros(20,20); 
     case '50' 
        t=(MAX-MIN)/50;
        z=zeros(50,50); 
    case '100' 
        t=(MAX-MIN)/100;
        z=zeros(100,100); 
    otherwise 
end
switch meth1 
    case 'xy' 
  p=1;
  q=2;
    case 'xz' 
  p=1;
  q=3;
    case 'yz'
  p=2;
  q=3;
    otherwise 
end
for x=0:t:(MAX-MIN)-t
for y=0:t:(MAX-MIN)-t
for nx=1:M
%   if (x<Vertex(nx,1)&&Vertex(nx,1)<x+200&&y<Vertex(nx,2)&&Vertex(nx,2)<y+200)
     if (x<=p1(nx,p)&&p1(nx,p)<x+t&&y<=p1(nx,q)&&p1(nx,q)<y+t)
          nxx=floor(x/t)+1;
          nyy=floor(y/t)+1;
                 z(nxx,nyy)=z(nxx,nyy)+1;
%                     z(x,y);
end 
end
end
end
% z=[10 21 23 14 35 26 47;21 32 33 24 35 26 17;15 23 23 44 25 34 27];
% y=[2013 2014 2015];
% x=[1 2 3 4 5 6 7];
bar3(z);
switch meth1 
    case 'xy' 
xlabel('xyƽ��');
    case 'xz' 
xlabel('xzƽ��');
    case 'yz'
xlabel('yzƽ��');
    otherwise 
end
z1=z;
end
% xlim(gca,[-20,20]);
% ylim(gca,[-20,20]);
% set(gca,'YTickLabel',{'��һ','���','����','����','˶һ','˶��','˶��'});
% xlabel('�꼶');ylabel('���');zlabel('����');
% bar3(Z) ������ά����ͼ��Z �е�ÿ��Ԫ�ض�Ӧһ������ͼ����� Z ��������y ��Ŀ̶ȷ�Χ�Ǵ� 1 �� length(Z)����� Z �Ǿ����� y ��Ŀ̶ȷ�Χ�Ǵ� 1 �� Z ��������
%bar3(Y,Z) �� Y ָ����λ�û��� Z �и�Ԫ�ص�����ͼ������ Y ��Ϊ��ֱ���ζ��� y ֵ��������y ֵ�����Ƿǵ����ģ������ܰ����ظ�ֵ����� Z �Ǿ����� Z ��λ��ͬһ���ڵ�Ԫ�ؽ������� y ���ϵ���ͬλ��