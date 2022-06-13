function [z] = ADB2(x_i,y_i,z_i,x,y)
%ADB2 二维插值算法 by水林
%   input:x_i二维向量,y_i插值节点  x输入变量
%   output:y值
   [m1,n1]=size(x_i);
   [m2,n2]=size(y_i);
   [m4,n4]=size(x);
   [m5,n5]=size(y);
   z=zeros([n4,n5]);
   j=1;i=1;
   y1=ADB1(x_i,z_i(:,j),x);%对x插值 y=j 时f(x,j)
   y2=ADB1(x_i,z_i(i,:),y);%对x插值 y=j 时f(x,j)
   for k=1:n4
         for s=1:n5
             z(k,s)=y1(k)+y2(s)-z_i(i,j);
         end
   end
end
 