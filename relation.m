function ccd=relation(a,number)
%% ����һά���� 
    [M,N]=size(a);
    s1=double(zeros(1,number));
    s2=double(zeros(1,number));
    s3=double(zeros(1,number));
    h=double(zeros(1,number));  %ˮƽ����%
    v=double(zeros(1,number));  %��ֱ����%
    d=double(zeros(1,number));  %�Խ��߷���%
    %% �Ӿ����������ѡ���ڵ�
    for k=1:number
        i = ceil(rand(1, 1) * M);  %ceil����ȡ��% rand����0��1�ϵ������
        j = ceil(rand(1, 1) * N);
        if i==M 
            i=i-1;
        end
        if j==N
            j=j-1;%�߽�㲻Ҫ
        end
        s1(k)=double(a(i+1,j+1));% �洢�����
        h(k)=double(a(i,j+1)); % �洢��ֱ�����
       % v(k)=double(a(i+1,j));
       % d(k)=double(a(i,j));
    end
     for k=1:number
         i = ceil(rand(1, 1) * M);  %ceil����ȡ��%
         j = ceil(rand(1, 1) * N);
         if i==M 
             i=i-1;
         end
         if j==N
             j=j-1;
         end
         s2(k)=double(a(i+1,j+1));
         v(k)=double(a(i+1,j)); % �洢ˮƽ�����
     end
     for k=1:number
         i = ceil(rand(1, 1) * M);  %ceil����ȡ��%
         j = ceil(rand(1, 1) * N);
         if i==M 
             i=i-1;
         end
         if j==N
             j=j-1;
         end
        s3(k)=double(a(i+1,j+1)); % �洢�Խ��߷����
        d(k)=double(a(i,j));
     end
    
%---����
    figure;
  subplot(1,1,1);%subplot(m,n,p) ����ǰͼ������Ϊ m��n ���񣬲��� p ָ����λ�ô�����������MATLAB? ���кŶ���ͼλ�ý��б�š���һ����ͼ�ǵ�һ�еĵ�һ�У��ڶ�����ͼ�ǵ�һ�еĵڶ��У��������ơ����ָ����λ���Ѵ������������������Ὣ����������Ϊ��ǰ������
    plot(s1,h,'.') ;%plot(X,Y) ���� Y �����ݶ� X �ж�Ӧֵ�Ķ�ά��ͼ
    title('��ֱ����');
    figure;
    subplot(1,1,1);
    plot(s2,v,'.'); %s2 ǰһ���� ��һ�����y��
    title('ˮƽ����');
    figure;
    subplot(1,1,1);
    plot(s3,d,'.');
    title('�Խ��߷���');
        %%%%%%ϵͳ��������ϵ���������⣬ÿ�����н����ͬ%%%%%%%%%

    cch = corrcoef(s1, h);
    ccv = corrcoef(s1, v);
    ccd = corrcoef(s1, d);

     sum=0.0;
     sum=double(sum);
     for i=1:number
         sum=sum+s1(i);
     end
     Ex=double(sum/number);
     sum=0.0;
     sum=double(sum);
     for i=1:number
         sum=sum+h(i);
     end
     Ey=double(sum/number);
     sum=0.0;
     sum=double(sum);
     for i=1:number
         sum=sum+(s1(i)-Ex)^2;
     end
     Dx=double(sum/number);
     sum=0.0;
     sum=double(sum);
     for i=1:number
         sum=sum+(h(i)-Ey)^2;
     end
     Dy=double(sum/number);
     
     sum=0.0;
     sum=double(sum);
     for i=1:number
         sum=sum+(s1(i)-Ex)*(h(i)-Ey);
     end
     cov=double(sum/number);
     ccd=double(cov/sqrt(Dx*Dy));
end
    
    
    