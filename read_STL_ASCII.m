% function P1=readSTLASCII(filename)
function vertex=read_STL_ASCII(filename)
% clear
% clc

fid = fopen(filename,'r');
% fid = fopen('Block.txt','r');
strline = cell(1,1);
counter = 1;
while ~feof(fid) %���ַ�������strline������
    strline{counter,1} = fgetl(fid);
    counter = counter + 1;
end
fclose(fid);
counterf = 1;
counterv = 1;
vertex = zeros(1,1);
facetN = zeros(1,1);
for n = 1:length(strline)
    if length(strline{n}) ==59
%      if length(strline{n}) ==41
        if strcmp(strline{n}(3:14),'facet normal')
   %   3:14��ʾ3��14���ַ�
   %   str2double:�� MATLAB ���� ���ַ��� str����Ӧ��ʵ����������ֵ�� ASCII �ַ���ʾ��ʽ��ת��Ϊ MATLAB
   %   ��˫���ȱ�ʾ��ʽ���ַ������԰������֡����ţ�ǧλ�ָ�������С���㡢ǰ�� + �� - ���š��� 10 Ϊ�������ӵ���ǰ��� e �Լ���λ������ i��         
            facetN(counterf,1) = str2double(strline{n}(16:29));
            facetN(counterf,2)  = str2double(strline{n}(31:44));
            facetN(counterf,3)  = str2double(strline{n}(46:59));
            counterf = counterf + 1;
        elseif strcmp(strline{n}(7:12),'vertex')
% elseif strcmp(strline{n}(1:6),'vertex')
  % --------------------------------------------------------------------         
            vertex(counterv,1) = str2double(strline{n}(16:29));
            vertex(counterv,2)  = str2double(strline{n}(31:44));
            vertex(counterv,3)  = str2double(strline{n}(46:59));
    %------------------------------------------------------------
%             vertex(counterv,1) = str2double(strline{n}(8:18));%x
%           %  vertex(counterv,1)=str2double('1.280901600000000e+03');
%           vertex(counterv,2) = str2double(strline{n}(20:29));%y
%           %  vertex(counterv,2) = strline{31:44}
%             vertex(counterv,3) = str2double(strline{n}(31:41));%z
            counterv = counterv + 1;
        end
    end
end
% figure
% hold on
% P1=Vertex(:);
% for n=1:720
%     vertex(n,1)=str2double(vertex(n,1));
%     end
% figure
% fill3(vertex(counterv,1), vertex(counterv,2,vertex(counterv,3)))
% for n = 1:length(facetN) %�����������ά�ȵĳ���
%     fill3(vertex(3*n-2:3*n,1),vertex(3*n-2:3*n,2),vertex(3*n-2:3*n,3),'y',...
%         'EdgeAlpha',0.5)
% end
% axis equal
% box on
end