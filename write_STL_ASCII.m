function write_STL_ASCII(p1,meth)
switch meth 
    case '����' 
        fid=fopen('����.txt','a+');
    case '����' 
        fid=fopen('����.txt','a+');
    otherwise 
end 
% fid=fopen('����.txt','a+');%�����ļ�b,��ʱ�޷���ȡ��
%          fid=fopen���ļ��������򿪷�ʽ����
%˵��������fid���ڴ洢�ļ����ֵ��������صľ��ֵ����0����˵���ļ��򿪳ɹ����ļ������ַ�����ʽ����ʾ���򿪵������ļ��������Ĵ򿪷�ʽ���£�
%��r����    ֻ����ʽ���ļ���Ĭ�ϵķ�ʽ�������ļ������Ѵ��ڡ�
%��r+���� ��д��ʽ���ļ����򿪺��ȶ���д�����ļ������Ѵ��ڡ�
%��w����   �򿪺�д�����ݡ����ļ��Ѵ�������£��������򴴽���
%��w+������д��ʽ���ļ����ȶ���д�����ļ��Ѵ�������£��������򴴽���
%��a����   �ڴ򿪵��ļ�ĩ��������ݡ��ļ��������򴴽���
%��a+���� ���ļ����ȶ���������������ݡ��ļ��������򴴽���
%����������Ƭ�ⷨʸ������ͨ����������������3��������ֵ�����������˿ɲ�������д洢���Խ�ʡ�洢�ռ䡣��������������õ���ʸ�����������½��м���
P3=p1;
[M,N]=size(P3);
 P4=zeros(M/3,N);
 for  n=1:3:M
 v1x = P3(n,1);
 v1y = P3(n,2);
 v1z = P3(n,3);
 
 v2x = P3(n+1,1);
 v2y = P3(n+1,2);
 v2z = P3(n+1,3);
 
 v3x = P3(n+2,1);
 v3y = P3(n+2,2);
 v3z = P3(n+2,3);
 m=floor(n/3)+1;
 P4(m,1) = (v1y-v3y)*(v2z-v3z)-(v1z-v3z)*(v2y-v3y);
 P4(m,2)  = (v1z-v3z)*(v2x-v3x)-(v2z-v3z)*(v1x-v3x);
 P4(m,3) = (v1x-v3x)*(v2y-v3y)-(v2x-v3x)*(v1y-v3y);
%  nxyz= power(P4(m,1)* P4(m,1)+P4(m,2)*P4(m,2)+P4(m,3)*P4(m,3),1/3);
% strline = cell(1,1);���Ⱦ���
% striline{1}='solid';
% striline{2}='facet normal';
% striline{3}='outer loop';
% striline{4}='vertex';
% striline{5}='endloop';
% striline{6}='endfacet';
% striline{7}='endsolid';
 fprintf(fid,'%s\r\n','solid');
fprintf(fid,'  %s','facet normal');
% fprintf(fid,' %+.7E %+.7E %+.7E\r\n',P4(m,1)\nxyz,P4(m,2)\nxyz,P4(m,3)\nxyz);
fprintf(fid,' %+.7E %+.7E %+.7E\r\n',P4(m,1),P4(m,2),P4(m,3));
fprintf(fid,'    %s\r\n','outer loop');
fprintf(fid,'      %s   %+.7E %+.7E %+.7E\r\n','vertex',P3(n,1),P3(n,2),P3(n,3));
fprintf(fid,'      %s   %+.7E %+.7E %+.7E\r\n','vertex',P3(n+1,1),P3(n+1,2),P3(n+1,3));
fprintf(fid,'      %s   %+.7E %+.7E %+.7E\r\n','vertex',P3(n+2,1),P3(n+2,2),P3(n+2,3));
fprintf(fid,'    %s\r\n','endloop');
fprintf(fid,'  %s\r\n','endfacet');
end
fprintf(fid,'%s\r\n','endsolid');
fclose(fid);