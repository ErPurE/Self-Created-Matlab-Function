function  plot_diffraction_grating(a,d,n,w,i)
%光栅衍射现象的 光强-衍射角 图像
%输入光栅透光长度a,光栅常数d,光栅狭缝数目n光的波长w,原光强i
% 定义衍射角范围
radian = -pi/2:0.0001:pi/2;
% 单缝的边缘与中心的光线相位差
diffraction_angle= pi*a*sin(radian)./w ;
% 单缝衍射因子
diffraction_element = sin(diffraction_angle).^2./((diffraction_angle).^2);
% 光栅干涉的相位差
interference_angle = 2*pi.*d*sin(radian)./w;
%光栅干涉因子
interference_element = sin(n.*interference_angle./2).^2./(sin(interference_angle./2).^2);
%光强
guangqiang = i.*diffraction_element.*interference_element;
%用红色曲线显示衍射光谱光强曲线
plot(radian,guangqiang,'r')
hold on
%用绿色曲线显示光栅干涉因子曲线
plot(radian,interference_element,'g')
hold on
%用黄色曲线显示单缝衍射因子曲线
plot(radian,diffraction_element,'y')
xlabel({'衍射角','（弧度制）'})
end

