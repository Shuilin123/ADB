% close all; clear all; clc
% n1=0.05;
% x1=-3:n1:3;
% y1=x1;
% [xx1,yy1]=meshgrid(x1,y1);
% % z1=(xx1.^2+yy1.^2)/4;
% z1=sin(xx1.^2+yy1.^2);
% % z1=F2(xx1,yy1);
% % z1=(xx1.^2/4-yy1.^2/4);
% figure(1)
% mesh(xx1,yy1,z1);
% x=-3:0.01:3;
% y=x;
% z=ADB2(x1,y1,z1,x,y);
% % [m,n]=size(x1);
% % figure(3);
% % plot(x,z(601,:));
% % hold on
% % plot(x1,z1(9,:),'*');
% % pause(2);
% [x,y]=meshgrid(x,y);
% figure(4);
% mesh(x,y,z);
load data.mat
mesh(img);
x=1:512;
y=1:512;
[xx,yy]=meshgrid(x,y);
x=1:0.1:512;
z=ADB1(xx,img(:,7),x);
% plot(x,z);
% hold on
plot(xx,img(:,7),'*')
