clc,clear,close all
%% һά��
x_i=-10:0.1:10;
y_i=F(x_i);%����������
x=-10:0.001:10;% ����������
y=ADB1(x_i,y_i,x);
figure(1);
plot(x_i,y_i,'*');
hold on
plot(x,y);
hold on
plot(x,zeros(size(x)),'LineWidth',1);
xlabel('t/s');
ylabel('E/v');
title('��ѹ�仯����ֵ');
hold off