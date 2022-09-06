function thetah=interpolation(theta2h)
[I,J]=size(theta2h);

temp2h=zeros(I+1,J+1);
temp2h(1:I,1:J)=theta2h;

temph=interp2(temp2h,'spline'); 

thetah=temph(1:2*I,1:2*J);

end


