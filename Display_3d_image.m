function P3=Display_3d_image(p)
figure
hold on
n=240;
for n = 1:n %�����������ά�ȵĳ��� 240�� facetN����
    fill3(P3(3*n-2:3*n,1),P3(3*n-2:3*n,2),P3(3*n-2:3*n,3),'y',...
        'EdgeAlpha',0.5)
end
axis equal
box on
end