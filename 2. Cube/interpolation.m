function thetah=interpolation(theta2h)
[I,J,K]=size(theta2h);

temp2h=zeros(I+1,J+1,K+1);
temp2h(1:I,1:J,1:K)=theta2h;

temph=interp3(temp2h,'spline'); 

thetah=temph(1:2*I,1:2*J,1:2*K);

end


