function [y] = ADB1(x_i,y_i,x)
%ADB1 һά��ֵ�㷨 byˮ��
%   input:x_i,y_i��ֵ�ڵ�  x�������
%   output:yֵ
    [n,m]=size(x);
    [s,p]=size(x_i);
    y=zeros(size(x));
    y(1)=y_i(1);
    y(end)=y_i(end);
    k=2;
    for i=2:p
         temp1=(x_i(i-1)+x_i(i))/2;
         if(i+1<=p)%���������߽�
            temp2=(x_i(i)+x_i(i+1))/2;
         end
         while k<=m
             val=x(k);
             if(i+1<=p&&val>temp2)
                 break;
             end
             if(val<temp1)%���������߽�
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

