function [y] = ADB1(x_i,y_i,x)
%ADB1 一维插值算法 by水林
%   input:x_i,y_i插值节点  x输入变量
%   output:y值
    [n,m]=size(x);
    [s,p]=size(x_i);
    y=zeros(size(x));
    y(1)=y_i(1);
    y(end)=y_i(end);
    k=2;
    for i=2:p
         temp1=(x_i(i-1)+x_i(i))/2;
         if(i+1<=p)%修正正数边界
            temp2=(x_i(i)+x_i(i+1))/2;
         end
         while k<=m
             val=x(k);
             if(i+1<=p&&val>temp2)
                 break;
             end
             if(val<temp1)%负数修正边界
                 temp1=val;
             end
             if(val>=temp1&&val<x_i(i))
                  y(k)=((y_i(i)-y_i(i-1))/(x_i(i)-x_i(i-1)))*val+(x_i(i)*y_i(i-1)-x_i(i-1)*y_i(i))/(x_i(i)-x_i(i-1));
             end
             if(i+1<=p&&val>=x_i(i)&&val<=temp2)
                  y(k)=((y_i(i)-y_i(i+1))/(x_i(i)-x_i(i+1)))*val+(x_i(i)*y_i(i+1)-x_i(i+1)*y_i(i))/(x_i(i)-x_i(i+1));
             end
             k=k+1;
         end
    end
end

