function [res] =F2(x,y)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
 res=3*(1-x).^2.*exp(-x.^2-(y+1).^2)-10*(x/5-x.^3-y.^5).*exp(-x.^2-y.^2)-exp(-(x+1).^2-y.^2)/3;
end

