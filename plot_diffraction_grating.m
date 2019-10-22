function  plot_diffraction_grating(a,d,n,w,i)
%��դ��������� ��ǿ-����� ͼ��
%�����դ͸�ⳤ��a,��դ����d,��դ������Ŀn��Ĳ���w,ԭ��ǿi
% ��������Ƿ�Χ
radian = -pi/2:0.0001:pi/2;
% ����ı�Ե�����ĵĹ�����λ��
diffraction_angle= pi*a*sin(radian)./w ;
% ������������
diffraction_element = sin(diffraction_angle).^2./((diffraction_angle).^2);
% ��դ�������λ��
interference_angle = 2*pi.*d*sin(radian)./w;
%��դ��������
interference_element = sin(n.*interference_angle./2).^2./(sin(interference_angle./2).^2);
%��ǿ
guangqiang = i.*diffraction_element.*interference_element;
%�ú�ɫ������ʾ������׹�ǿ����
plot(radian,guangqiang,'r')
hold on
%����ɫ������ʾ��դ������������
plot(radian,interference_element,'g')
hold on
%�û�ɫ������ʾ����������������
plot(radian,diffraction_element,'y')
xlabel({'�����','�������ƣ�'})
end

