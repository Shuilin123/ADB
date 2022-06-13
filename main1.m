clc,clear,close all
%% 一维度
x_i=-10:0.1:10;
y_i=F(x_i);%产生样本点
x=-10:0.001:10;% 负数有问题
y=ADB1(x_i,y_i,x);
figure(1);
plot(x_i,y_i,'*');
hold on
plot(x,y);
hold on
plot(x,zeros(size(x)),'LineWidth',1);
xlabel('t/s');
ylabel('E/v');
title('电压变化数插值');
hold off